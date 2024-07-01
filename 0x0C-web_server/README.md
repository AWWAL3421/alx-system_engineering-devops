What is the main role of a web server?
The main role of a web server is to serve web content to clients, typically web browsers, over the internet or an intranet. This involves receiving and processing requests for web pages or other resources (such as images, videos, or files) and then delivering the appropriate content to the client. Web servers handle HTTP (Hypertext Transfer Protocol) or HTTPS (HTTP Secure) requests, ensuring the correct content is delivered and rendered.

Key Functions of a Web Server:

Handle Requests: Accept and process incoming requests from clients.
Serve Content: Deliver requested content, such as HTML pages, images, and other files.
Run Scripts: Execute server-side scripts (e.g., PHP, Python) to generate dynamic content.
Manage Connections: Handle multiple concurrent connections efficiently.
Security: Provide security features such as HTTPS, access control, and authentication.
What is a child process?
A child process is a process created by another process (the parent process) using system calls such as fork or spawn. The child process inherits many attributes from the parent, including environment variables, open file descriptors, and execution context.

Characteristics of a Child Process:

Inheritance: Receives a copy of the parent's attributes.
Execution: Can execute the same or different code as the parent.
Lifecycle: Exists until it completes its task or is terminated.
Communication: Can communicate with the parent process via inter-process communication (IPC) mechanisms.
Why web servers usually have a parent process and child processes
Web servers typically use a parent-child process architecture for several reasons:

Concurrency: Child processes allow the web server to handle multiple requests simultaneously, improving performance and responsiveness.
Isolation: Each child process runs independently, isolating requests and reducing the risk of one failing request affecting others.
Resource Management: The parent process can manage and allocate resources efficiently, creating new child processes as needed and terminating idle ones.
Scalability: This architecture enables the web server to scale and handle varying loads by adjusting the number of child processes.
Stability: If a child process crashes, the parent process can create a new one, ensuring the server remains operational.
What are the main HTTP requests?
HTTP requests are used by clients to interact with web servers. The main HTTP request methods are:

GET:

Purpose: Retrieve data from the server.
Usage: Fetch web pages, images, and other resources.
Example: GET /index.html HTTP/1.1
POST:

Purpose: Send data to the server to be processed.
Usage: Submit form data, upload files.
Example: POST /submit-form HTTP/1.1
PUT:

Purpose: Update or replace a resource on the server.
Usage: Update user information, modify a file.
Example: PUT /users/123 HTTP/1.1
DELETE:

Purpose: Remove a resource from the server.
Usage: Delete a user account, remove a file.
Example: DELETE /users/123 HTTP/1.1
HEAD:

Purpose: Retrieve headers for a resource without the body.
Usage: Check resource metadata, test links.
Example: HEAD /index.html HTTP/1.1
PATCH:

Purpose: Apply partial modifications to a resource.
Usage: Update specific fields of a resource.
Example: PATCH /users/123 HTTP/1.1
OPTIONS:

Purpose: Describe the communication options for the target resource.
Usage: Determine the allowed methods on a resource.
Example: OPTIONS /users HTTP/1.1
CONNECT:

Purpose: Establish a tunnel to the server, often used for HTTPS.
Usage: Secure connections through proxies.
Example: CONNECT www.example.com:443 HTTP/1.1
These methods form the foundation of web communication, enabling clients and servers to interact effectively and perform a wide range of operations.
