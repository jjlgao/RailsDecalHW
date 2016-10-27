# Q0: Why is this error being thrown?

The Pokemon path in HomeController isn't defined (there should be a function in the controller?)

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random pokemon are appearing based on which ones do not have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button, which when pressed triggers a link to "capture_path" with an id of "pokemon" (specifically calling capture_path/:id) using the "PATCH" HTTP method call. capture_path is defined in routes.rb.

# Question 3: What would you name your own Pokemon?

Pokeman.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in a path, 'pokemons/new', which needed a route in routes.rb to redirect me from that particular route to the proper location in the pokemon controller (because the function I made was show, and thus didn't have a CRUD default).

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

A gem on the form page detects flash messages and displays them for me. On another note, flash[] messages persist across multiple web page visits and thus allows me to store messages for the next webpage that gets triggered to see.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://sheltered-ridge-54588.herokuapp.com/

