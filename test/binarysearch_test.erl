-module(binarysearch_test).
-compile(export_all).
-include_lib("eunit/include/eunit.hrl").

tree() ->
    [5,1,4,6,-1,40,203,8,343,1,-1212, 55].

not_found_test() ->
    SearchResult = binarysearch:search(tree(), 999),
    ?assertEqual({notfound, 999}, SearchResult).

found_largest_test() ->
    SearchResult = binarysearch:search(tree(), 343),
    ?assertEqual({{value, 343}, {position, 12}}, SearchResult).

found_smallest_test() ->
    SearchResult = binarysearch:search(tree(), -1212),
    ?assertEqual({{value, -1212}, {position, 1}}, SearchResult).

found_in_middle_test() ->
    SearchResult = binarysearch:search(tree(), 5),
    ?assertEqual({{value, 5}, {position, 6}}, SearchResult).
