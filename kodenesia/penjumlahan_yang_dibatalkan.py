import unittest


def false_sum(string):
    text = string.split()
    total, temp = 0, 0
    for kaka in text:
        if kaka != "B":
            temp = int(kaka)
            total += temp
        if kaka == "B":
            total -= temp
    return total


class TestFalseSum(unittest.TestCase):
    def test_false_sum(self):
        self.assertEqual(false_sum(""), 0)
        self.assertEqual(false_sum("1"), 1)
        self.assertEqual(false_sum("1 B"), 0)
        self.assertEqual(false_sum("1 B 2"), 2)
        self.assertEqual(false_sum("1 B 2 B"), 0)
        self.assertEqual(false_sum("2 2 B 10 B 7 B 5 B 11 B"), 2)
        self.assertEqual(false_sum("1 1 1 1 1 1 1 1 1 1 1"), 11)
        self.assertEqual(false_sum("10 B 2 2 B 2 2"), 6)


if __name__ == "__main__":
    unittest.main()
