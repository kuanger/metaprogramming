require 'ghee'

gh = Ghee.basic_auth('317035436@qq.com', 'hateGrbj5kr!')
all_gists = gh.users('nusco').gists
a_gist = all_gists[20]

a_gist.url
a_gist.description
a_gist.star
