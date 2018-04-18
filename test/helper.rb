require 'simplecov'

SimpleCov.start 'rails' do 
end
require 'rubygems'
require 'bundler'
require "bundler/setup"
Bundler.require
require 'acts_as_versioned'
require 'active_record/base'
require 'database_cleaner'
require 'minitest/autorun'
require 'logger'

TEST_ROOT = File.expand_path('./test')
ActiveRecord::Base.logger = nil # Logger.new("#{TEST_ROOT}/debug.log")
ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database => ':memory:'
DatabaseCleaner.strategy = :transaction

require 'lib/schema'
require 'lib/models'
require 'lib/factories'
require 'lib/fixtures'

class AAVTestCase < MiniTest::Spec
  
  before { DatabaseCleaner.start }
  after  { DatabaseCleaner.clean }
  
  protected
  
  def authors(name)
    case name
    when :caged then Author.find_by_name('caged')
    when :mly then Author.find_by_name('mly')
    end
  end
  
  def pages(name)
    case name
    when :welcome then Page.find_by_title('Welcome to the weblog')
    end
  end
  
  def page_versions(name)
    case name
    when :welcome_1 then Page::Version.find_by_title('Welcome to the weblg')
    when :welcome_2 then Page::Version.find_by_title('Welcome to the weblog')
    end
  end
  
  def locked_pages(name)
    case name
    when :welcome then LockedPage.find_by_title('Welcome to the weblog')
    when :thinking then LockedPage.find_by_title('So I was thinking')
    end
  end
  
  def landmarks(name)
    case name
    when :washington then Landmark.find_by_name('Washington, D.C.')
    end
  end
  
end


