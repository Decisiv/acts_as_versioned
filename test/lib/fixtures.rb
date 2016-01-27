
# Authors

@caged = FactoryGirl.create :seed_author, :name => 'caged'
@mly = FactoryGirl.create :seed_author, :name => 'mly'

# Pages

@welcome_page = FactoryGirl.create :seed_page, 
  :title => 'Welcome to the weblog', :body => 'Such a lovely day', 
  :version => 24, :author_id => @caged.id, :revisor_id => @caged.id

FactoryGirl.create :seed_page_version,
  :title => 'Welcome to the weblg', :body => 'Such a lovely day',
  :version => 23, :author_id => @mly.id, :revisor_id => @mly.id,
  :page_id => @welcome_page.id

FactoryGirl.create :seed_page_version,
  :title => 'Welcome to the weblog', :body => 'Such a lovely day',
  :version => 24, :author_id => @caged.id, :revisor_id => @caged.id,
  :page_id => @welcome_page.id

# Locked Pages

@welcome_lpage = FactoryGirl.create :seed_locked_page,
  :title => 'Welcome to the weblog', :lock_version => 24, :type => 'LockedPage'

FactoryGirl.create :seed_locked_page_rev,
  :title => 'Welcome to the weblg', :lock_version => 23, :version_type => 'LockedPage',
  :page_id => @welcome_lpage.id

FactoryGirl.create :seed_locked_page_rev,
  :title => 'Welcome to the weblog', :lock_version => 24, :version_type => 'LockedPage',
  :page_id => @welcome_lpage.id

@thinking_lpage = FactoryGirl.create :seed_locked_page,
  :title => 'So I was thinking', :lock_version => 24, :type => 'SpecialLockedPage'

FactoryGirl.create :seed_locked_page_rev,
  :title => 'So I was thinking!!!', :lock_version => 23, :version_type => 'SpecialLockedPage',
  :page_id => @thinking_lpage.id

FactoryGirl.create :seed_locked_page_rev,
  :title => 'So I was thinking', :lock_version => 24, :version_type => 'SpecialLockedPage',
  :page_id => @thinking_lpage.id

# Landmarks

@washington = FactoryGirl.create :seed_landmark,
  :name => 'Washington, D.C.', :latitude => 38.895, :longitude => -77.036667,
  :version => 1, :doesnt_trigger_version => 'This is not important'

FactoryGirl.create :seed_landmark_version,
  :name => 'Washington, D.C.', :latitude => 38.895, :longitude => -77.036667,
  :version => 1, :doesnt_trigger_version => 'This is not important',
  :landmark_id => @washington.id
  
