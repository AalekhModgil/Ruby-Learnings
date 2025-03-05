Task 1: Scaffolding
Scaffolding in Rails generates a controller with standard RESTful actions, enabling CRUD operations seamlessly.

Implementation
The controller responsible for handling CRUD operations is located at:
📂 app/controllers/notes_controller.rb

How It Works
Start the Rails server.
Open the provided localhost link.
Append /notes to the URL to access the Notes model.


Task 2: Turbo
Turbo enhances Rails applications by minimizing full-page reloads, providing a smoother and faster user experience. It achieves this using Turbo Streams, which update the page dynamically via WebSockets.

Implementation
Turbo Streams are used to reflect changes in real time and are located in:
📂 app/views/notes/

create.turbo_stream.erb
update.turbo_stream.erb
destroy.turbo_stream.erb
How It Works
Creating a Note: Instantly appears at the bottom of the list without reloading the page.
Updating a Note: The modified note is updated dynamically.
Deleting a Note: The note disappears instantly without requiring a refresh.


Task 3: Filters in Rails

Filters in Rails allow code execution before, after, or around controller actions. They are useful for authentication, logging, validation, and other functionalities, helping to keep controllers clean and maintainable.

Implementation
A before_action filter named set_note is used in the NotesController.
This filter runs before specific actions (show, edit, update, destroy), ensuring the @note instance variable is properly set before executing these actions.

How It Works
Filters execute code before or after controller actions, depending on their type.
They improve security, logging, and validation processes.
Reduce redundancy by centralizing common logic in a single place.