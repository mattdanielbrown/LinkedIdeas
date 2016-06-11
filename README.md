# Linked Ideas

[![Code Climate](https://codeclimate.com/github/fespinoza/linked-ideas-osx/badges/gpa.svg)](https://codeclimate.com/github/fespinoza/linked-ideas-osx)

The application is to lay out some ideas in the computer, allowing you to
connect them, reorder them and classify them with color codes

On the other hand, the connexions between ideas can have text on its own as a
way to 'explain' the connexion of ideas.

## Feature Roadmap

- [x] adding/editing a concept [#4](https://github.com/fespinoza/linked-ideas-osx/pull/4)
- [x] read/write from files [#4](https://github.com/fespinoza/linked-ideas-osx/pull/4)
- [x] moving concepts [#4](https://github.com/fespinoza/linked-ideas-osx/pull/4)
- [x] selecting concepts [#4](https://github.com/fespinoza/linked-ideas-osx/pull/4)
- [x] adding links between concepts [#6](https://github.com/fespinoza/linked-ideas-osx/pull/6)
- [x] delete concepts/links [#9](https://github.com/fespinoza/linked-ideas-osx/pull/9)
- [x] improvements: resizable TextFields [#10](https://github.com/fespinoza/linked-ideas-osx/pull/10)
- [x] use formatted strings for concepts [#11](https://github.com/fespinoza/linked-ideas-osx/pull/11)
- [x] add color to links [#12](https://github.com/fespinoza/linked-ideas-osx/pull/12)
- [x] undo/redo actions for concepts and links [#13](https://github.com/fespinoza/linked-ideas-osx/pull/13)
- [x] multiple select concepts (move them) [#14](https://github.com/fespinoza/linked-ideas-osx/pull/14)
- [x] align/space concepts [#15](https://github.com/fespinoza/linked-ideas-osx/pull/15)
- [x] panning canvas [#16](https://github.com/fespinoza/linked-ideas-osx/pull/16)

## For releasing

- [x] BUG: dragging fails many times when concepts has already many links
- [ ] BUG: constrains + dimensions of canvas and NSScrollView
    - investigate about Autoresizing masks
    - [x] liveAutoRealoading false
- [x] change app icon + document icon
- [ ] add a folder with examples of documents
- [ ] make a website for releasing

## Optional Features

- export document as image
- restore canvas dimensions when opening the document?
- reorder concepts in canvas
- add editable curvature to links
- zooming canvas
- add editable text to links

## A world of ideas

- dismiss construction arrow on click
- construction line not on same worker
- control + dragging to create straight links
- aligment of concepts
- center text
- copy/paste/duplicate concepts/links
- refactor conceptView/linkView use a delegate to decouple from Canvas
- fix link views to be outside canvas ???
- resizing of text field goes to the right
