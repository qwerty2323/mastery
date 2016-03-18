# Wikipedia challenge
:octocat: Yay!

## What is done:

- [x] README
- [x] Page name is a string
  - [x] Validates regexp [a-zA-Zа-яА-Я0-9]
  - [x] Russian symbols accepted :ru:
- [x] Text field accepts html markup
    - [x] Has a preproccessing for any create/update actions:
```
      **str** -> <b>str</b>
      _str_ -> <i>str</i>
```
## What is need to be done:

- [x] Main page contains _index_ page with subtree.

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
      - [x] subtree
    - [ ] [site]/name1/name2/name3/edit -> edit mode for header, slug. Redirect to :arrow_up:  :arrow_up:
    - [ ] [site]/name1/name2/name3/add -> create new page as subpage of name3. Redirect to [site]/name1/name2/name3/new-page-slug
    - [ ] [site]/add -> root page creation form
    
## Сопроводительное письмо:

### Не реализовано:
 - Routing дерева.

### Реализовано не в полном объёме/реализовано в другом виде:
 - Процессинг текста
   - Строка в скобках не рендерится в ссылки.
   - Строка с бэкслешами не рендерится в <i>
   - Исключительно русские символы не проходят для названия сайта

### Прочие замечания:
 - В PageController повторения