# Wikipedia challenge
:octocat: Yay!

## What is done:

- [x] README
- [x] Page name is a string
  - [x] Validates regexp [a-zA-Z0-9]
  - [x] Russian symbols accepted :ru:
- [x] Text field accepts html markup
    - [x] Has a preproccessing for any create/update actions:
```
      **str** -> <b>str</b>
      _str_ -> <i>str</i>
```
## What is need to be done:

- [ ] Main page contains _index_ page with subtree.

Example:

```
- page
  - subpage
  - subpage
    - subsubpage
- page
```

- [ ] Page path:
    - [ ] [site]/name1/name2/name3 -> Page 'name3' is shown.
      - [x] text
      - [x] page title
      - [x] header
      - [ ] subtree
    - [ ] [site]/name1/name2/name3/edit -> edit mode for header, slug. Redirect to :arrow_up:  :arrow_up:
    - [ ] [site]/name1/name2/name3/add -> create new page as subpage of name3. Redirect to [site]/name1/name2/name3/new-page-slug
    - [ ] [site]/add -> root page creation form
    
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/qwerty2323/mastery.

## License

The app is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
