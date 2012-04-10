module Company
  class Account < ActiveRecord::Base    
    has_many :account_contacts, :class_name => "Crm::AccountContact"
    has_many :contacts, :through => :account_contacts, :class_name => "Crm::Contact"
    
    validates_presence_of :name
    validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :allow_blank => true, :allow_nil => true
    #validates_format_of :phone, 
    #                :with => /\A[0-9]{10}\Z/, 
    #                :allow_blank => true, 
    #                :allow_nil => true

    attr_accessible :contact_tokens,:name,:email,:phone
    attr_reader :contact_tokens
    acts_as_addressable
    #searchable_columns :account_name => "company_accounts.name", :account_email => "company_accounts.email", :account_phone => "company_accounts.phone"
    
    def contact_tokens=(ids)
      self.contact_ids = ids.split(",")
    end
  end
end
