class Holder < ApplicationRecord
	validates :tazkira_number, confirmation: true
	validates :tazkira_number,   :presence => {:message => 'tazkira_number must entered'},
                     :numericality => true,
                     :length => { :minimum => 6, :maximum => 12}        
 validates :mobile_number,   :presence => {:message => 'mobile_number must entered'},
                     :numericality => true,
                     :length => { :minimum => 11, :maximum => 13} 
 validates :tazkira_number, uniqueness: true 
                     
	
end
