class AdminController < ApplicationController
  
  def index
    
    @mails = [
      {:src => 'dist/img/user2-160x160.jpg',:header => 'Support Team',:time => 5,:msg => 'Why not buy a new awesome theme?'},
      {:src => 'dist/img/user2-160x160.jpg',:header => 'Support Team2',:time => 5,:msg => 'Why not buy a new awesome theme?'},
      {:src => 'dist/img/user2-160x160.jpg',:header => 'Support Team3',:time => 5,:msg => 'Why not buy a new awesome theme?'},
      {:src => 'dist/img/user2-160x160.jpg',:header => 'Support Team4',:time => 5,:msg => 'Why not buy a new awesome theme?'}
    ]
    
    @notifs = [
      {:msg => 'Very long description here that may not fit into the page and may cause design problems'},
      {:msg => '5 new members joined'},
      {:msg => '25 sales made'},
      {:msg => 'You changed your username'}
    ]
    
    @tasks = [
      {:header => 'Design some buttons', :progress => '20%'},
      {:header => 'Create a nice theme', :progress => '40%'},
      {:header => 'Some task I need to do', :progress => '60%'},
      {:header => 'Make beautiful transitions', :progress => '80%'}
    ]
    
    @divisions = [{:name => 'Division 1', :id => 1},{:name => 'Division 2', :id => 2},{:name => 'Division 3', :id => 3}]
  end

  def create
    parent = nil
    unless params[:parent].blank?
      parent = Kernel.const_get(params[:parent])
      parent = parent.find(params[:parent_id])
    end
    klass = Kernel.const_get(params[:type])
    klass = parent.nil? ? klass.create(params[:data]) : parent.klass.create(params[:data])
    klass.save!
  end
end