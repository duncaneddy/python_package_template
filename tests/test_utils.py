import pytest

from mypkg.utils import simple_function

def test_simple_function():
    assert simple_function(1, 2) == 3