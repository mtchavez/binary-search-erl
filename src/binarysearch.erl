%
% Binary Search
%
-module (binarysearch).
-export ([search/2]).

% Example:
% binarysearch:search([5,1,4,6,-1,40,203,8,343,1,-1212, 55],343).
%
% result: {{value, 343}, {position, 12}}
search(Set, Value) ->
    search(lists:sort(Set), Value, 1, length(Set)).

search(Set, Value, Low, High) ->
  if
    (High < Low) ->
      {notfound, Value};
    (true) ->
      Mid    = (Low + High) div 2,
      MidVal = lists:nth(Mid, Set),
      if
        (MidVal > Value) ->
          search(Set, Value, Low, Mid);
        (MidVal < Value) ->
          search(Set, Value, Mid + 1, High);
        (true) ->
          {{value, Value}, {position, Mid}}
      end
  end.
