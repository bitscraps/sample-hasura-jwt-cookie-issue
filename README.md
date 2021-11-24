# Proof (Cookie Header Auth Issue in Hasura)

Hasura fails to use the default permission level properly. It expects
the auth cookie to be sent or no cookies to be sent. If some cookies are
sent but none of them is are the auth cookie it complains about the cookie
not being sent rather than using the behaviour that exists when no cookies
are sent.

# Using this Proof

 - Launch docker `docker-compose up`
 - Login to the hasura app using password `secret`
 - Goto Data and create a hello world template
 - Visit http://localhost:3001/index.html

This page will link to 3 pages where you can view the behaviour of
 - No cookies sent
 - Access cookie sent
 - Cookies sent but none are the access cookie