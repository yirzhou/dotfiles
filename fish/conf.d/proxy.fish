# Turn on Clash
function proxy_on
    set -gx no_proxy "localhost,127.0.0.1,localaddress,.localdomain.com"
    set -gx http_proxy "http://127.0.0.1:7890"
    set -gx https_proxy $http_proxy
end

# Turn off Clash
function proxy_off
    unset http_proxy
    unset https_proxy
end

if status --is-login
    proxy_on
end
