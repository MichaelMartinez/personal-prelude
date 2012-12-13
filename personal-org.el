;; ;; Org Definitions go here.

;; this sets outlines to automatically indent
(setq org-startup-indented t)
(require 'org-inlinetask)
;; Set to the location of your Org files on your local system
(setq org-directory "~/DropBox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/DropBox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

;; This is a work in progress to get a global style
;; (setq org-export-html-style "<style type=\"text/css\">
;; body {
;;     margin: 1em;
;;     border-right: 5px solid #bbb;
;;     border-bottom: 5px solid #bbb;
;;     padding: 0;
;;     background: #ddd none repeat scroll 0 0;
;;     border: 1px solid #000;
;;     margin: 0;
;;     padding: 2em;
;;     color: #000;
;;     font-family: "Bitstream Vera Sans", Verdana, sans-serif;
;;     font-size: 85%;
;; }

;; code {
;;     color: #00f;
;; }

;; div#content {
;;     border: 1px solid #bbb;
;;     background: #fff;
;;     margin: 0;
;;     padding: 2em;
;; }

;; a {
;;     color: #139;
;;     text-decoration: none;
;;     padding: 1px;
;; }

;; a:hover {
;;     color: #900;
;; }

;; /*
;; a:visited {
;;     color: #939;
;; }
;; */

;; #table-of-contents {
;;     margin: 1em 0;
;;     padding: .1em;
;; }

;; div#content div#org-div-home-and-up {
;;     background: #369;
;;     color: #fff;
;; }

;; div#org-div-home-and-up a:link,
;; div#org-div-home-and-up a:visited {
;;     color: #fff;
;;     background: #369;
;; }

;; div#org-div-home-and-up a:hover {
;;     color: #900;
;; }

;; div.title {
;;     margin: -1em -1em 0;
;;     font-size: 200%;
;;     font-weight: bold;
;;     background: #369;
;;     color: #fff;
;;     padding: .75em 1em;
;;     font-family: "BitStream Vera Sans", Verdana;
;;     letter-spacing: .1em;
;; }

;; h1 {
;;     background: #369 none repeat scroll 0 0;
;;     color: #fff;
;;     font-family: "BitStream Vera Sans", Verdana;
;;     font-size: 200%;
;;     font-weight: bold;
;;     letter-spacing: 0.1em;
;;     margin: -1em -1em .2em;
;;     padding: 0.75em 1em;
;; }

;; h2 {
;;     font-size: 180%;
;;     border-bottom: 1px solid #ccc;
;;     padding: .2em;
;; }

;; h3 {
;;     font-size: 120%;
;;     border-bottom: 1px solid #eee;
;; }

;; h4 {
;;     font-size: 110%;
;;     border-bottom: 1px solid #eee;
;; }

;; h1, h2, h3, h4, h5, h6 {
;;     text-transform: capitalize;
;; }

;; tt {
;;     color: #00f;
;; }

;; .verbatim {
;;     margin: .5em 0;
;; }
;; pre {
;;     border: 1px solid #ccc;
;;     background: #eee;
;;     padding: .5em;
;;     overflow: auto;
;; }
;; .verbatim pre {
;;     margin: 0;
;; }
;; .verbatim-caption {
;;     border: 1px solid #ccc;
;;     border-bottom: 0;
;;     background: #fff;
;;     display: block;
;;     font-size: 80%;
;;     padding: .2em;
;; }

;; div#postamble {
;;     text-align: left;
;;     color: #888;
;;     font-size: 80%;
;;     padding: 0;
;;     margin: 0;
;; }

;; div#postamble p {
;;     padding: 0;
;;     margin: 0;
;; }

;; div#postamble a {
;;     color: #888;
;; }

;; div#postamble a:hover {
;;     color: #900;
;; }

;; table {
;;     font-size: 100%;
;;     border-collapse: collapse;
;;     margin: .5em 0;
;; }

;; th, td {
;;     border: 1px solid #777;
;;     padding: .3em;
;;     margin: 2px;
;; }
;; th {
;;     background: #eee;
;; }

;; span.underline {
;;     text-decoration: underline;
;; }

;; .fixme {
;;     background: #ff0;
;;     font-weight: bold;
;; }
;; .ra {
;;     text-align: right;
;; }

;; .sidebar {
;;   float: right;
;;   width: 25em;
;;   background-color: #a02f6c;
;;   color: #fff;
;;   margin: 2em -2em 2em 2em;
;;   padding: 1em;
;; }
;; .sidebar a {
;;   border: none;
;; }

;; .sidebar a:link {
;;   color: #3ff;
;; }
;; .sidebar a:visited {
;;   color: #3cc;
;; }
;; .sidebar a:hover {
;;   color: #ff6;
;; }
;; .sidebar a:active {
;;   color: #900;
;; }

;; /* Todo List Styles */

;; .title { text-align: center; }
;; .todo  { color: red; }
;; .done { color: green; }
;; .timestamp { color: gray }
;; .timestamp-kwd { color: #f59ea0; }
;; .tag { background-color:#add8e6; font-weight:normal }
;; .target { background-color: #551a8b; }
;; pre {
;;        border: 1pt solid #AEBDCC;
;;        background-color: #F3F5F7;
;;        padding: 5pt;
;;        font-family: courier, monospace;
;; }
;; table { border-collapse: collapse; }
;; td, th {
;;   vertical-align: top;
;; }

;; /* Source code formatting */

;;   .org-info-search-highlight
;;   {
;;         background-color:#adefef; /* same color as emacs default */
;;         color:#000000;
;;         font-weight:bold;
;;   }

;;   .org-bbdb-company {
;;     /* bbdb-company */
;;     font-style: italic;
;;   }
;;   .org-bbdb-field-name {
;;   }
;;   .org-bbdb-field-value {
;;   }
;;   .org-bbdb-name {
;;     /* bbdb-name */
;;     text-decoration: underline;
;;   }
;;   .org-bold {
;;     /* bold */
;;     font-weight: bold;
;;   }
;;   .org-bold-italic {
;;     /* bold-italic */
;;     font-weight: bold;
;;     font-style: italic;
;;   }
;;   .org-border {
;;     /* border */
;;     background-color: #000000;
;;   }
;;   .org-buffer-menu-buffer {
;;     /* buffer-menu-buffer */
;;     font-weight: bold;
;;   }
;;   .org-builtin {
;;     /* font-lock-builtin-face */
;;     color: #da70d6;
;;   }
;;   .org-button {
;;     /* button */
;;     text-decoration: underline;
;;   }
;;   .org-c-nonbreakable-space {
;;     /* c-nonbreakable-space-face */
;;     background-color: #ff0000;
;;     font-weight: bold;
;;   }
;;   .org-calendar-today {
;;     /* calendar-today */
;;     text-decoration: underline;
;;   }
;;   .org-comment {
;;     /* font-lock-comment-face */
;;     color: #b22222;
;;   }
;;   .org-comment-delimiter {
;;     /* font-lock-comment-delimiter-face */
;;     color: #b22222;
;;   }
;;   .org-constant {
;;     /* font-lock-constant-face */
;;     color: #5f9ea0;
;;   }
;;   .org-cursor {
;;     /* cursor */
;;     background-color: #000000;
;;   }
;;   .org-default {
;;     /* default */
;;     color: #000000;
;;     background-color: #ffffff;
;;   }
;;   .org-diary {
;;     /* diary */
;;     color: #ff0000;
;;   }
;;   .org-doc {
;;     /* font-lock-doc-face */
;;     color: #bc8f8f;
;;   }
;;   .org-escape-glyph {
;;     /* escape-glyph */
;;     color: #a52a2a;
;;   }
;;   .org-file-name-shadow {
;;     /* file-name-shadow */
;;     color: #7f7f7f;
;;   }
;;   .org-fixed-pitch {
;;   }
;;   .org-fringe {
;;     /* fringe */
;;     background-color: #f2f2f2;
;;   }
;;   .org-function-name {
;;     /* font-lock-function-name-face */
;;     color: #0000ff;
;;   }
;;   .org-header-line {
;;     /* header-line */
;;     color: #333333;
;;     background-color: #e5e5e5;
;;   }
;;   .org-help-argument-name {
;;     /* help-argument-name */
;;     font-style: italic;
;;   }
;;   .org-highlight {
;;     /* highlight */
;;     background-color: #b4eeb4;
;;   }
;;   .org-holiday {
;;     /* holiday */
;;     background-color: #ffc0cb;
;;   }
;;   .org-info-header-node {
;;     /* info-header-node */
;;     color: #a52a2a;
;;     font-weight: bold;
;;     font-style: italic;
;;   }
;;   .org-info-header-xref {
;;     /* info-header-xref */
;;     color: #0000ff;
;;     text-decoration: underline;
;;   }
;;   .org-info-menu-header {
;;     /* info-menu-header */
;;     font-weight: bold;
;;   }
;;   .org-info-menu-star {
;;     /* info-menu-star */
;;     color: #ff0000;
;;   }
;;   .org-info-node {
;;     /* info-node */
;;     color: #a52a2a;
;;     font-weight: bold;
;;     font-style: italic;
;;   }
;;   .org-info-title-1 {
;;     /* info-title-1 */
;;     font-size: 172%;
;;     font-weight: bold;
;;   }
;;   .org-info-title-2 {
;;     /* info-title-2 */
;;     font-size: 144%;
;;     font-weight: bold;
;;   }
;;   .org-info-title-3 {
;;     /* info-title-3 */
;;     font-size: 120%;
;;     font-weight: bold;
;;   }
;;   .org-info-title-4 {
;;     /* info-title-4 */
;;     font-weight: bold;
;;   }
;;   .org-info-xref {
;;     /* info-xref */
;;     color: #0000ff;
;;     text-decoration: underline;
;;   }
;;   .org-isearch {
;;     /* isearch */
;;     color: #b0e2ff;
;;     background-color: #cd00cd;
;;   }
;;   .org-italic {
;;     /* italic */
;;     font-style: italic;
;;   }
;;   .org-keyword {
;;     /* font-lock-keyword-face */
;;     color: #a020f0;
;;   }
;;   .org-lazy-highlight {
;;     /* lazy-highlight */
;;     background-color: #afeeee;
;;   }
;;   .org-link {
;;     /* link */
;;     color: #0000ff;
;;     text-decoration: underline;
;;   }
;;   .org-link-visited {
;;     /* link-visited */
;;     color: #8b008b;
;;     text-decoration: underline;
;;   }
;;   .org-match {
;;     /* match */
;;     background-color: #ffff00;
;;   }
;;   .org-menu {
;;   }
;;   .org-message-cited-text {
;;     /* message-cited-text */
;;     color: #ff0000;
;;   }
;;   .org-message-header-cc {
;;     /* message-header-cc */
;;     color: #191970;
;;   }
;;   .org-message-header-name {
;;     /* message-header-name */
;;     color: #6495ed;
;;   }
;;   .org-message-header-newsgroups {
;;     /* message-header-newsgroups */
;;     color: #00008b;
;;     font-weight: bold;
;;     font-style: italic;
;;   }
;;   .org-message-header-other {
;;     /* message-header-other */
;;     color: #4682b4;
;;   }
;;   .org-message-header-subject {
;;     /* message-header-subject */
;;     color: #000080;
;;     font-weight: bold;
;;   }
;;   .org-message-header-to {
;;     /* message-header-to */
;;     color: #191970;
;;     font-weight: bold;
;;   }
;;   .org-message-header-xheader {
;;     /* message-header-xheader */
;;     color: #0000ff;
;;   }
;;   .org-message-mml {
;;     /* message-mml */
;;     color: #228b22;
;;   }
;;   .org-message-separator {
;;     /* message-separator */
;;     color: #a52a2a;
;;   }
;;   .org-minibuffer-prompt {
;;     /* minibuffer-prompt */
;;     color: #0000cd;
;;   }
;;   .org-mm-uu-extract {
;;     /* mm-uu-extract */
;;     color: #006400;
;;     background-color: #ffffe0;
;;   }
;;   .org-mode-line {
;;     /* mode-line */
;;     color: #000000;
;;     background-color: #bfbfbf;
;;   }
;;   .org-mode-line-buffer-id {
;;     /* mode-line-buffer-id */
;;     font-weight: bold;
;;   }
;;   .org-mode-line-highlight {
;;   }
;;   .org-mode-line-inactive {
;;     /* mode-line-inactive */
;;     color: #333333;
;;     background-color: #e5e5e5;
;;   }
;;   .org-mouse {
;;     /* mouse */
;;     background-color: #000000;
;;   }
;;   .org-negation-char {
;;   }
;;   .org-next-error {
;;     /* next-error */
;;     background-color: #eedc82;
;;   }
;;   .org-nobreak-space {
;;     /* nobreak-space */
;;     color: #a52a2a;
;;     text-decoration: underline;
;;   }
;;   .org-org-agenda-date {
;;     /* org-agenda-date */
;;     color: #0000ff;
;;   }
;;   .org-org-agenda-date-weekend {
;;     /* org-agenda-date-weekend */
;;     color: #0000ff;
;;     font-weight: bold;
;;   }
;;   .org-org-agenda-restriction-lock {
;;     /* org-agenda-restriction-lock */
;;     background-color: #ffff00;
;;   }
;;   .org-org-agenda-structure {
;;     /* org-agenda-structure */
;;     color: #0000ff;
;;   }
;;   .org-org-archived {
;;     /* org-archived */
;;     color: #7f7f7f;
;;   }
;;   .org-org-code {
;;     /* org-code */
;;     color: #7f7f7f;
;;   }
;;   .org-org-column {
;;     /* org-column */
;;     background-color: #e5e5e5;
;;   }
;;   .org-org-column-title {
;;     /* org-column-title */
;;     background-color: #e5e5e5;
;;     font-weight: bold;
;;     text-decoration: underline;
;;   }
;;   .org-org-date {
;;     /* org-date */
;;     color: #a020f0;
;;     text-decoration: underline;
;;   }
;;   .org-org-done {
;;     /* org-done */
;;     color: #228b22;
;;     font-weight: bold;
;;   }
;;   .org-org-drawer {
;;     /* org-drawer */
;;     color: #0000ff;
;;   }
;;   .org-org-ellipsis {
;;     /* org-ellipsis */
;;     color: #b8860b;
;;     text-decoration: underline;
;;   }
;;   .org-org-formula {
;;     /* org-formula */
;;     color: #b22222;
;;   }
;;   .org-org-headline-done {
;;     /* org-headline-done */
;;     color: #bc8f8f;
;;   }
;;   .org-org-hide {
;;     /* org-hide */
;;     color: #e5e5e5;
;;   }
;;   .org-org-latex-and-export-specials {
;;     /* org-latex-and-export-specials */
;;     color: #8b4513;
;;   }
;;   .org-org-level-1 {
;;     /* org-level-1 */
;;     color: #0000ff;
;;   }
;;   .org-org-level-2 {
;;     /* org-level-2 */
;;     color: #b8860b;
;;   }
;;   .org-org-level-3 {
;;     /* org-level-3 */
;;     color: #a020f0;
;;   }
;;   .org-org-level-4 {
;;     /* org-level-4 */
;;     color: #b22222;
;;   }
;;   .org-org-level-5 {
;;     /* org-level-5 */
;;     color: #228b22;
;;   }
;;   .org-org-level-6 {
;;     /* org-level-6 */
;;     color: #5f9ea0;
;;   }
;;   .org-org-level-7 {
;;     /* org-level-7 */
;;     color: #da70d6;
;;   }
;;   .org-org-level-8 {
;;     /* org-level-8 */
;;     color: #bc8f8f;
;;   }
;;   .org-org-link {
;;     /* org-link */
;;     color: #a020f0;
;;     text-decoration: underline;
;;   }
;;   .org-org-property-value {
;;   }
;;   .org-org-scheduled-previously {
;;     /* org-scheduled-previously */
;;     color: #b22222;
;;   }
;;   .org-org-scheduled-today {
;;     /* org-scheduled-today */
;;     color: #006400;
;;   }
;;   .org-org-sexp-date {
;;     /* org-sexp-date */
;;     color: #a020f0;
;;   }
;;   .org-org-special-keyword {
;;     /* org-special-keyword */
;;     color: #bc8f8f;
;;   }
;;   .org-org-table {
;;     /* org-table */
;;     color: #0000ff;
;;   }
;;   .org-org-tag {
;;     /* org-tag */
;;     font-weight: bold;
;;   }
;;   .org-org-target {
;;     /* org-target */
;;     text-decoration: underline;
;;   }
;;   .org-org-time-grid {
;;     /* org-time-grid */
;;     color: #b8860b;
;;   }
;;   .org-org-todo {
;;     /* org-todo */
;;     color: #ff0000;
;;   }
;;   .org-org-upcoming-deadline {
;;     /* org-upcoming-deadline */
;;     color: #b22222;
;;   }
;;   .org-org-verbatim {
;;     /* org-verbatim */
;;     color: #7f7f7f;
;;     text-decoration: underline;
;;   }
;;   .org-org-warning {
;;     /* org-warning */
;;     color: #ff0000;
;;     font-weight: bold;
;;   }
;;   .org-outline-1 {
;;     /* outline-1 */
;;     color: #0000ff;
;;   }
;;   .org-outline-2 {
;;     /* outline-2 */
;;     color: #b8860b;
;;   }
;;   .org-outline-3 {
;;     /* outline-3 */
;;     color: #a020f0;
;;   }
;;   .org-outline-4 {
;;     /* outline-4 */
;;     color: #b22222;
;;   }
;;   .org-outline-5 {
;;     /* outline-5 */
;;     color: #228b22;
;;   }
;;   .org-outline-6 {
;;     /* outline-6 */
;;     color: #5f9ea0;
;;   }
;;   .org-outline-7 {
;;     /* outline-7 */
;;     color: #da70d6;
;;   }
;;   .org-outline-8 {
;;     /* outline-8 */
;;     color: #bc8f8f;
;;   }
;;   .org-preprocessor {
;;     /* font-lock-preprocessor-face */
;;     color: #da70d6;
;;   }
;;   .org-query-replace {
;;     /* query-replace */
;;     color: #b0e2ff;
;;     background-color: #cd00cd;
;;   }
;;   .org-regexp-grouping-backslash {
;;     /* font-lock-regexp-grouping-backslash */
;;     font-weight: bold;
;;   }
;;   .org-regexp-grouping-construct {
;;     /* font-lock-regexp-grouping-construct */
;;     font-weight: bold;
;;   }
;;   .org-region {
;;     /* region */
;;     background-color: #eedc82;
;;   }
;;   .org-rmail-highlight {
;;   }
;;   .org-scroll-bar {
;;     /* scroll-bar */
;;     background-color: #bfbfbf;
;;   }
;;   .org-secondary-selection {
;;     /* secondary-selection */
;;     background-color: #ffff00;
;;   }
;;   .org-shadow {
;;     /* shadow */
;;     color: #7f7f7f;
;;   }
;;   .org-show-paren-match {
;;     /* show-paren-match */
;;     background-color: #40e0d0;
;;   }
;;   .org-show-paren-mismatch {
;;     /* show-paren-mismatch */
;;     color: #ffffff;
;;     background-color: #a020f0;
;;   }
;;   .org-string {
;;     /* font-lock-string-face */
;;     color: #bc8f8f;
;;   }
;;   .org-texinfo-heading {
;;     /* texinfo-heading */
;;     color: #0000ff;
;;   }
;;   .org-tool-bar {
;;     /* tool-bar */
;;     color: #000000;
;;     background-color: #bfbfbf;
;;   }
;;   .org-tooltip {
;;     /* tooltip */
;;     color: #000000;
;;     background-color: #ffffe0;
;;   }
;;   .org-trailing-whitespace {
;;     /* trailing-whitespace */
;;     background-color: #ff0000;
;;   }
;;   .org-type {
;;     /* font-lock-type-face */
;;     color: #228b22;
;;   }
;;   .org-underline {
;;     /* underline */
;;     text-decoration: underline;
;;   }
;;   .org-variable-name {
;;     /* font-lock-variable-name-face */
;;     color: #b8860b;
;;   }
;;   .org-variable-pitch {
;;   }
;;   .org-vertical-border {
;;   }
;;   .org-warning {
;;     /* font-lock-warning-face */
;;     color: #ff0000;
;;     font-weight: bold;
;;   }

;;   </style>")
