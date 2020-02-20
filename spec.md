# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (used in Bonsai and users) 
- [x] Include at least one belongs_to relationship (used in review)
- [x] Include at least two has_many through relationships (bonsai has many users through reviews, users have many bonsais through reviews)
- [x] Include at least one many-to-many relationship (used with reviews, comments and scores)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (users add comments and stars)
- [x] Include reasonable validations for simple model objects (lvalidting name and description)
- [x] Include a class level ActiveRecord scope method (using this to show bonsai by date entered)
- [x] Include signup (yes)
- [x] Include login (yes)
- [x] Include logout (yes)
- [x] Include third party signup/login (github through Devise/OmniAuth)
- [x] Include nested resource show or index (yes thru reviews and bonsai)
- [x] Include nested resource "new" form ( bonsais/6/reviews/4/editw)
- [x] Include form display of validation errors (yes)

Confirm:
- [x] The application is pretty DRY  -> I have left a few pages controllers and classes but commented them out
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
