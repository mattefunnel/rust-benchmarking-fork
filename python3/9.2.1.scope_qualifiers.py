def scope_qualifiers():
    def do_local():
        spam = 'local spam'

    def do_nonlocal():
        nonlocal spam
        spam = 'non local spam'

    def do_global():
        global spam
        spam = 'global spam'

    spam = 'test spam'
    do_local()
    print('After local assignment:', spam)
    do_nonlocal()
    print('After nonlocal assignment:', spam)
    do_global()
    print('After global assignment:', spam)

scope_qualifiers()
print(f'In global scope: {spam}!')
