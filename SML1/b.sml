fun greaterThan [] k = []
| greaterThan (a::L) k = if a > k then a::greaterThan L k
                         else greaterThan L k;
