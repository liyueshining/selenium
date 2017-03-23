#coding=utf-8

import unittest, time
from HTMLTestRunner import HTMLTestRunner
import sys

default_encoding = 'utf-8'
test_dir = './test_case'
report_dir = './report'

discover = unittest.defaultTestLoader.discover(test_dir, pattern = 'test_sloth.py')

# set default encoding to utf-8
print sys.getdefaultencoding()
if sys.getdefaultencoding() != default_encoding:
    reload(sys)
    sys.setdefaultencoding(default_encoding)

if __name__ == '__main__':

    now = time.strftime('%Y-%M-%d %H_%M_%S')
    filename = report_dir + '/' + now + '-result.html'
    fp = open(filename, 'wb')
    runner = HTMLTestRunner(stream = fp,
                            title = 'OKI-Sloth',
                            description = '用例执行情况：')
    runner.run(discover)
    fp.close

