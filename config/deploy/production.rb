server '185.4.75.151', roles: %w{app db web}, ssh_options: {
                           user: 'mkonin',
                           forward_agent: true,
                           password: fetch(:password),
                           auth_methods: %w(password)
                       }