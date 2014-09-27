library(shiny)
library(ggplot2)
library(RWeka)
library(plyr)
library(gtools)

#Define server logic required to draw a histogram
shinyServer(function(input, output){
  
  
  #Make the original training data (modified in dfII)

  
  #Calculate regular accuracy
  RA<-function(confusion_matrix)
  {
    row_dim<-dim(confusion_matrix)[1]
    s1<-1
    diag_sum<-0
    accuracy<-0
    while(s1<=row_dim)
    {
      s2<-1
      while(s2<=row_dim)
      {
        if(s1==s2)
        {
          diag_sum<-diag_sum+confusion_matrix[s1,s2]
        }
        s2<-s2+1
      }
      s1<-s1+1
    }
    accuracy<-diag_sum/sum(confusion_matrix)
    return(accuracy)
  }
  

  #Update the training set as user asks
  current_data<-reactive({
    
    space<-0.05
    df<-expand.grid(seq(from=0, to=1, by=space), seq(from=0, to=1, by=space))
    names(df)[1] <- "X"
    names(df)[2] <- "Y"
    df$Class<-"One"
    df$Class[which(df$Y<=(input$radius*df$X-1)^2)]<-"Two"
    df$Class<-as.factor(df$Class)
    return(df)
  })
  
  #find selected training data
  selected_data<-reactive({
 
    
    
    if(input$checkbox)
    {
      train<-current_data()
      r<-50             # number of subsets to create
      p<-20              # number of instances in each subset
      classifier<-input$classifier

      
      Classifier_RA<-function(classifier,train,validation)
      {
        
        if(classifier=="Decision tree")
        {
          DT<-make_Weka_classifier("weka/classifiers/trees/J48")
          model<-DT(Class~.,data=train)
          pred<-predict(model,vailidation)
        }
        
        if(classifier=="Naive Bayes")
        {
          NB<-make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")
          model<-NB(Class~.,data=train)
          pred<-predict(model,validation)
        }
        
        if(classifier=="Logistic regression")
        {
          LR<-make_Weka_classifier("weka/classifiers/functions/Logistic")
          model<-LR(Class~.,data=train)
          pred<-predict(model,validation)
        }
        
        hold<-table(pred,validation$Class)
        Classifier_RA<-RA(hold)
        return(Classifier_RA)
      }
      
      Classifier_RA_subset<-function(selection,train,validation,classifier)
      {
        #returns the class balance accuracy of a classifier_type classifier
        #built from a selection of a training dataset
        Classifier_CBA_subset<-Classifier_RA(classifier,train[selection,],validation)
        return(Classifier_CBA_subset)
      }
      
      greedy_combine<-function(train,subsets,classifier)
      {
        #initialize
        old<-subsets
        newI<-subsets
        best_old<-(-1)
        best_new<-0
        
        #continue greedy search as long as improvements are found
        while(best_old<best_new)
        {
          old<-newI
          old_acc<-laply(old,Classifier_RA_subset,train=train,validation=train,classifier=classifier,.parallel=FALSE,.progress="text")
          
          best_old<-max(old_acc)
          index_best_old<-which.max(old_acc)  
          
          newI<-llply(subsets,union,y=old[[index_best_old]],.parallel=FALSE,.progress="text")
          new_acc<-laply(newI,Classifier_RA_subset,train=train,validation=train,classifier=classifier,.parallel=FALSE,.progress="text")
          best_new<-max(new_acc) 
        }
        #the best subset is in old
        return(old[[index_best_old]])
      }
      
      random_subsets<-llply(vector("list", r),
                            function(list){
                              permute(c(1:dim(train)[1]+1))[1:p]})  
      
      here<-greedy_combine(train, random_subsets, "Naive Bayes")
      
      return(current_data()[here,])

    }
    else{
      return(current_data())
    }
    
    
    
  })
  
  #data to make predictions on
  prediction_data<-reactive({
    
    space<-0.0125
    use<-expand.grid(seq(from=0, to=1, by=space), seq(from=0, to=1, by=space))
    names(use)[1] <- "X"
    names(use)[2] <- "Y"
    use$Class<-"One"
    use$Class[which(use$Y<=(input$radius*use$X-1)^2)]<-"Two"
    use$Class<-as.factor(use$Class)
    
    return(use)
  })
  
  
  
  model_original<-reactive({
    
    if(input$classifier=="Decision tree")
    {
      DT<-make_Weka_classifier("weka/classifiers/trees/J48")
      model<-DT(Class~.,data=current_data())
      return(model)
    }
  
    if(input$classifier=="Naive Bayes")
    {
      NB<-make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")
      model<-NB(Class~.,data=current_data())
      return(model)
    }
  
    if(input$classifier=="Logistic regression")
    {
      LR<-make_Weka_classifier("weka/classifiers/functions/Logistic")
      model<-LR(Class~.,data=current_data())
      return(model) 
    }
  })
  
  model_selected<-reactive({
    
    if(input$classifier=="Decision tree")
    {
      DT<-make_Weka_classifier("weka/classifiers/trees/J48")
      model<-DT(Class~.,data=selected_data())
      return(model)
    }
    
    if(input$classifier=="Naive Bayes")
    {
      NB<-make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")
      model<-NB(Class~.,data=selected_data())
      return(model)
    }
    
    if(input$classifier=="Logistic regression")
    {
      LR<-make_Weka_classifier("weka/classifiers/functions/Logistic")
      model<-LR(Class~.,data=selected_data())
      return(model) 
    }
  })
  
  
  output$original<-renderPlot({
    
    ggplot(current_data(), aes(x=X, y=Y, color=Class))+
      geom_point(size=5)+
      scale_colour_manual(values=c("#56B4E9","#E69F00","#0072B2","#009E73", "#D55E00", "#CC79A7"))+
      xlab("X")+
      scale_x_continuous(breaks=c(0,0.5,1))+
      ylab("Y")+
      scale_y_continuous(breaks=c(0,0.5,1))+
      theme_classic()+
      theme(legend.position="none")+
      ggtitle(acc_original())
      
    }, height=350, width=350)
  
  
  output$selected<-renderPlot({
    
    ggplot(selected_data(), aes(x=X, y=Y, color=Class))+
      geom_point(size=5)+
      scale_colour_manual(values=c("#56B4E9","#E69F00","#0072B2","#009E73", "#D55E00", "#CC79A7"))+
      xlab("X")+
      scale_x_continuous(breaks=c(0,0.5,1))+
      ylab("Y")+
      scale_y_continuous(breaks=c(0,0.5,1))+
      theme_classic()+
      theme(legend.position="none")+
      ggtitle(acc_selected())
    
  }, height=350, width=350)
  
  
  output$original_prediction<-renderPlot({
    
    check<-prediction_data()
    model2<-model_original()
    check$Class<-predict(model2,check)
    

      ggplot(check, aes(x=X, y=Y, color=Class))+
        geom_point()+
        scale_colour_manual(values=c("#56B4E9","#E69F00","#0072B2","#009E73", "#D55E00", "#CC79A7"))+
        xlab("X")+
        scale_x_continuous(breaks=c(0,0.5,1))+
        ylab("Y")+
        scale_y_continuous(breaks=c(0,0.5,1))+
        theme_classic()+
        theme(legend.position="none")+
        ggtitle(acc_original())    
  }, height=350, width=350)
  
  
  output$selected_prediction<-renderPlot({

      check<-prediction_data()
      model2<-model_selected()
      check$Class<-predict(model2,check)
      
      ggplot(check, aes(x=X, y=Y, color=Class))+
        geom_point()+
        scale_colour_manual(values=c("#56B4E9","#E69F00","#0072B2","#009E73", "#D55E00", "#CC79A7"))+
        xlab("X")+
        scale_x_continuous(breaks=c(0,0.5,1))+
        ylab("Y")+
        scale_y_continuous(breaks=c(0,0.5,1))+
        theme_classic()+
        theme(legend.position="none")+
        ggtitle(acc_selected())
  }, height=350, width=350)
  
  acc_original <- renderText({ 
    model<-model_original()
    test<-prediction_data()
    pred<-predict(model,test)
    hold<-table(pred,test$Class)
    Classifier_RA<-RA(hold)
    paste("Original", "\n", round(Classifier_RA*100, 1), "%")
      
  })
  
  acc_selected <- renderText({ 
    
    model<-model_selected()
    test<-prediction_data()
    pred<-predict(model,test)
    hold<-table(pred,test$Class)
    Classifier_RA<-RA(hold)
    paste("Selected", "\n", round(Classifier_RA*100, 1), "%")
    
  })
    
})















