# Pajuna - mystation

Pajuna is an opinionated workflow that allows you to use Ansible to configure your workstation.  
This workflow should give you flexibilty and simply get out of your way.

`mystation` is a template repository to get you started with using the Pajuna Ansible modules.

## Assumptions

* You have a dropbox account
* There is a separate git repository for your dotfiles
* There is a separate git repository for your vim configuration files
* You are running Ubuntu LTS 14.04 (Trusty)

## Actions

* [Fork https://github.com/pajuna/mystation](https://github.com/pajuna/mystation/fork)
* git clone yourgithub:mystation ~/.ansible
* `cd ~/.ansible`
* `./script/bootstrap`
  * checks for python
  * prompts to install python and deps with apt
  * `pip install -r requirements.txt`
  * git clone git@github.com:pajuna/Ubuntu-LTS ~/.pajuna/upstream

Ansible will look for roles in the following places, in order:
* ~/.ansible/roles
* ~/.pajuna/myfork
* ~/.pajuna/upstream

If you want to make a change to a role in https://github.com/pajuna/Ubuntu-LTS then fork it, clone into ~/.pajuna/myfork and hack in a branch and submit a PR to upstream.

<table>
  <tr>
    <th>Author</th><td>Mick Pollard (aussielunix at g mail dot com)</td>
  </tr>
  <tr>
    <th>Copyright</th><td>Copyright (c) 2015 by Mick Pollard</td>
  </tr>
  <tr>
    <th>License</th><td>Distributed under the MIT License, see [LICENSE]</td>
  </tr>
  <tr>
    <th>twitter </th><td>@aussielunix</td>
  </tr>
</table>
