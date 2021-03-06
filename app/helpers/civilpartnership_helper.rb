module CivilpartnershipHelper
  CIVIL_URLS = [
    [
      '/services/end-a-civil-partnership',
      '/end-civil-partnership'
    ],
    [
      '/services/end-a-civil-partnership',
      '/looking-after-children-divorce',
      '/money-property-when-relationship-ends'
    ],
    [
      '/services/end-a-civil-partnership',
      '/end-civil-partnership/grounds-for-ending-a-civil-partnership',
      '/end-civil-partnership/file-application',
      '/find-a-legal-adviser',
      '/get-help-with-court-fees',
      '/divorce-missing-husband-wife',
      '/end-civil-partnership/if-your-partner-lacks-mental-capacity',
      '/divorce-missing-husband-wife'
    ],
    [
      '/services/end-a-civil-partnership',
      '/end-civil-partnership/apply-for-a-conditional-order'
    ],
    [
      '/services/end-a-civil-partnership',
      '/end-civil-partnership/apply-for-a-final-order'
    ]
  ]

  def on_civil_url
    result = false
    CIVIL_URLS.each do |url|
      if url.include? request.path
        result = true
      end
    end
    result
  end

  def in_civil
    if in_more_than_one_tasklist
      if get_tasklist == 'civil' and on_civil_url
        true
      end
    elsif on_civil_url
      true
    end
  end

  def on_civil_step(step, on_sidebar = 0)
    if on_sidebar and CIVIL_URLS[step - 1].include? request.path # steps start at 1, let's not get confused
      true
    end
  end
end
