Feature: Display sorted GitHub organization repository list
    As an non authenticated User
    In order to easily search for an organization project
    I should be able to sort an organization repository list

    Background:
        Given I'm not authenticated

    Scenario: Should be able to sort by full_name
        When I send a GET request to "/users/rezzza/repos?sort=full_name"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON should be valid according to the schema "app/Resources/json-schema/payload/users/rezzza/repos.json"
        And the JSON node "[0]->full_name" should be equal to "rezzza/command-bus"
        And the JSON node "[1]->full_name" should be equal to "rezzza/command-bus-bundle"
        And the JSON node "[2]->full_name" should be equal to "rezzza/JobflowBundle"


    Scenario: Should be able to sort by created
        When I send a GET request to "/users/rezzza/repos?sort=created"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON should be valid according to the schema "app/Resources/json-schema/payload/users/rezzza/repos.json"
        And the JSON node "[0]->full_name" should be equal to "rezzza/JobflowBundle"
        And the JSON node "[1]->full_name" should be equal to "rezzza/command-bus"
        And the JSON node "[2]->full_name" should be equal to "rezzza/command-bus-bundle"


    Scenario: Should be able to sort by updated
        When I send a GET request to "/users/rezzza/repos?sort=updated"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        And the JSON should be valid according to the schema "app/Resources/json-schema/payload/users/rezzza/repos.json"
        And the JSON node "[0]->full_name" should be equal to "rezzza/JobflowBundle"
        And the JSON node "[1]->full_name" should be equal to "rezzza/command-bus-bundle"
        And the JSON node "[2]->full_name" should be equal to "rezzza/command-bus"


    Scenario: Should be able to sort by full_name (default)
        When I send a GET request to "/users/rezzza/repos"
        Then the response status code should be 200
        And the response should be in JSON
        And the JSON node "" should have 3 elements
        # JSON Schema to the rescue
        And the JSON should be valid according to the schema "app/Resources/json-schema/payload/users/rezzza/repos.json"

        # We do an exhaustive check only on this scenario for 1st item
        # No need to assert other items nodes
        # Since if the code base is well unit tested
        # If it works for one item, it shall sensibly work for the others
        And the JSON node "[0]->id" should be equal to "37606033"
        And the JSON node "[0]->name" should be equal to "command-bus"
        And the JSON node "[0]->full_name" should be equal to "rezzza/command-bus"
        And the JSON node "[0]->owner" should exist
        And the JSON node "[0]->owner->login" should be equal to "rezzza"
        And the JSON node "[0]->owner->id" should be equal to "1461276"
        And the JSON node "[0]->owner->avatar_url" should be equal to "https://avatars.githubusercontent.com/u/1461276?v=3"
        And the JSON node "[0]->owner->gravatar_id" should be equal to ""
        And the JSON node "[0]->owner->url" should be equal to "https://api.github.com/users/rezzza"
        And the JSON node "[0]->owner->html_url" should be equal to "https://github.com/rezzza"
        And the JSON node "[0]->owner->followers_url" should be equal to "https://api.github.com/users/rezzza/followers"
        And the JSON node "[0]->owner->following_url" should be equal to "https://api.github.com/users/rezzza/following{/other_user}"
        And the JSON node "[0]->owner->gists_url" should be equal to "https://api.github.com/users/rezzza/gists{/gist_id}"
        And the JSON node "[0]->owner->starred_url" should be equal to "https://api.github.com/users/rezzza/starred{/owner}{/repo}"
        And the JSON node "[0]->owner->subscriptions_url" should be equal to "https://api.github.com/users/rezzza/subscriptions"
        And the JSON node "[0]->owner->organizations_url" should be equal to "https://api.github.com/users/rezzza/orgs"
        And the JSON node "[0]->owner->repos_url" should be equal to "https://api.github.com/users/rezzza/repos"
        And the JSON node "[0]->owner->events_url" should be equal to "https://api.github.com/users/rezzza/events{/privacy}"
        And the JSON node "[0]->owner->received_events_url" should be equal to "https://api.github.com/users/rezzza/received_events"
        And the JSON node "[0]->owner->type" should be equal to "Organization"
        And the JSON node "[0]->owner->site_admin" should be equal to "0"
        And the JSON node "[0]->private" should be equal to "0"
        And the JSON node "[0]->html_url" should be equal to "https://github.com/rezzza/command-bus"
        And the JSON node "[0]->description" should be equal to ""
        And the JSON node "[0]->fork" should be equal to "0"
        And the JSON node "[0]->url" should be equal to "https://api.github.com/repos/rezzza/command-bus"
        And the JSON node "[0]->forks_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/forks"
        And the JSON node "[0]->keys_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/keys{/key_id}"
        And the JSON node "[0]->collaborators_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/collaborators{/collaborator}"
        And the JSON node "[0]->teams_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/teams"
        And the JSON node "[0]->hooks_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/hooks"
        And the JSON node "[0]->issue_events_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/issues/events{/number}"
        And the JSON node "[0]->events_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/events"
        And the JSON node "[0]->assignees_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/assignees{/user}"
        And the JSON node "[0]->branches_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/branches{/branch}"
        And the JSON node "[0]->tags_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/tags"
        And the JSON node "[0]->blobs_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/git/blobs{/sha}"
        And the JSON node "[0]->git_tags_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/git/tags{/sha}"
        And the JSON node "[0]->git_refs_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/git/refs{/sha}"
        And the JSON node "[0]->trees_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/git/trees{/sha}"
        And the JSON node "[0]->statuses_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/statuses/{sha}"
        And the JSON node "[0]->languages_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/languages"
        And the JSON node "[0]->stargazers_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/stargazers"
        And the JSON node "[0]->contributors_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/contributors"
        And the JSON node "[0]->subscribers_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/subscribers"
        And the JSON node "[0]->subscription_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/subscription"
        And the JSON node "[0]->commits_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/commits{/sha}"
        And the JSON node "[0]->git_commits_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/git/commits{/sha}"
        And the JSON node "[0]->comments_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/comments{/number}"
        And the JSON node "[0]->issue_comment_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/issues/comments{/number}"
        And the JSON node "[0]->contents_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/contents/{+path}"
        And the JSON node "[0]->compare_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/compare/{base}...{head}"
        And the JSON node "[0]->merges_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/merges"
        And the JSON node "[0]->archive_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/{archive_format}{/ref}"
        And the JSON node "[0]->downloads_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/downloads"
        And the JSON node "[0]->issues_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/issues{/number}"
        And the JSON node "[0]->pulls_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/pulls{/number}"
        And the JSON node "[0]->milestones_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/milestones{/number}"
        And the JSON node "[0]->notifications_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/notifications{?since,all,participating}"
        And the JSON node "[0]->labels_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/labels{/name}"
        And the JSON node "[0]->releases_url" should be equal to "https://api.github.com/repos/rezzza/command-bus/releases{/id}"
        And the JSON node "[0]->created_at" should be equal to "2015-06-17T16:12:15Z"
        And the JSON node "[0]->updated_at" should be equal to "2015-10-09T08:36:19Z"
        And the JSON node "[0]->pushed_at" should be equal to "2015-10-20T08:23:38Z"
        And the JSON node "[0]->git_url" should be equal to "git://github.com/rezzza/command-bus.git"
        And the JSON node "[0]->ssh_url" should be equal to "git@github.com:rezzza/command-bus.git"
        And the JSON node "[0]->clone_url" should be equal to "https://github.com/rezzza/command-bus.git"
        And the JSON node "[0]->svn_url" should be equal to "https://github.com/rezzza/command-bus"
        And the JSON node "[0]->size" should be equal to "211"
        And the JSON node "[0]->stargazers_count" should be equal to "6"
        And the JSON node "[0]->watchers_count" should be equal to "6"
        And the JSON node "[0]->language" should be equal to "PHP"
        And the JSON node "[0]->has_issues" should be equal to "1"
        And the JSON node "[0]->has_downloads" should be equal to "1"
        And the JSON node "[0]->has_wiki" should be equal to "1"
        And the JSON node "[0]->has_pages" should be equal to "0"
        And the JSON node "[0]->forks_count" should be equal to "0"
        And the JSON node "[0]->open_issues_count" should be equal to "0"
        And the JSON node "[0]->forks" should be equal to "0"
        And the JSON node "[0]->open_issues" should be equal to "0"
        And the JSON node "[0]->watchers" should be equal to "6"
        And the JSON node "[0]->default_branch" should be equal to "master"

        And the JSON node "[1]->full_name" should be equal to "rezzza/command-bus-bundle"
        And the JSON node "[2]->full_name" should be equal to "rezzza/JobflowBundle"
