binary-search-erl
=================

Binary Search in Erlang

## Usage

Takes a list of integers to run a binary search on.

### Searching

With a list you can search for a specific value

```erlang
c(binarysearch).
List = [5,1,4,6,-1,40,203,8,343,1,-1212, 55].
binarysearch:search(List, 343).
% returns {{value, 343}, {position, 12}}
```

When there are no results this is what will be returned

```erlang
c(binarysearch).
List = [5,1,4,6,-1,40,203,8,343,1,-1212, 55].
binarysearch:search(List, 999).
% returns {notfound, 999}
```

### Running Tests

Tests can be run with ```rebar eunit```.

Coverage will be output at ```.eunit/index.html```

## License

Written by Chavez

Released under the MIT License: http://www.opensource.org/licenses/mit-license.php
