Rails.application.routes.draw do
  # DfE routes
  root to: 'dfe#index'

  get '/dfe', to: 'dfe#index'

  get '/government/publications/supporting-early-career-teachers--2/set-high-expectations', to: 'dfe#page_1'
  get '/guidance/using-meditation-to-create-a-culture-of-respect-and-trust', to: 'dfe#page_1_1'
  get '/guidance/using-ground-rules-to-create-a-culture-of-respect-and-trust', to: 'dfe#page_1_2'

  get '/government/publications/supporting-early-career-teachers--2/promote-good-progress', to: 'dfe#page_2'
  get '/guidance/measuring-pupil-progress-and-managing-the-data', to: 'dfe#page_2_1'

  get '/government/publications/supporting-early-career-teachers--2/plan-and-teach-well-structured-lessons', to: 'dfe#page_3'
  get '/guidance/improving-the-appropriate-wait-time-between-question-and-response-in-class', to: 'dfe#page_3_1'
  get '/guidance/sharing-planning-tasks-in-schools', to: 'dfe#page_3_2'

  get '/government/publications/supporting-early-career-teachers--2/adaptive-teaching', to: 'dfe#page_4'
  get '/guidance/making-effective-use-of-teaching-assistants', to: 'dfe#page_4_1'
  get '/guidance/using-technology-to-aid-school-improvement', to: 'dfe#page_4_2'

  get '/government/publications/supporting-early-career-teachers--2/manage-behaviour-effectively', to: 'dfe#page_5'
  get '/guidance/how-can-you-manage-behaviour-in-the-classroom', to: 'dfe#page_5_1'

  get '/government/publications/supporting-early-career-teachers--2/fulfil-wider-professional-responsibilities', to: 'dfe#page_6'
  get '/guidance/ask-for-challenge-and-feedback-from-mentors-and-other-colleagues', to: 'dfe#page_6_1'
  get '/guidance/supporting-nqts-and-teachers-with-work-life-balance', to: 'dfe#page_6_2'

  get '/government/publications/supporting-early-career-teachers--2/demonstrate-good-subject-and-curriculum-knowledge', to: 'dfe#page_7'

  get '/government/publications/supporting-early-career-teachers--2/make-accurate-and-productive-use-of-assessment', to: 'dfe#page_8'
  get '/guidance/reviewing-feedback-and-marking-in-schools', to: 'dfe#page_8_1'

  get '/guidance/roll-out-of-the-early-career-framework', to: 'dfe#page_9'

  get "/healthcheck", to: proc { [200, {}, ["OK"]] }

  # Other routes
  get "/browse.json" => redirect("/api/content/browse")
  resources :browse, only: [:show], param: :top_level_slug do
    get ':second_level_slug', on: :member, to: "second_level_browse_page#show"
  end

  get '/prototype', to: 'welcome#index'
  get '/search', to: 'search#results'
  get '/*base_path', to: 'content_items#fall_through'

  post '/:base_path', to: redirect('/%{base_path}/camden')
end
