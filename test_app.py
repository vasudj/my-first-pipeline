import unittest
from app import sanitize_input

class TestSanitization(unittest.TestCase):
    def test_sanitize_input(self):
        raw_data = "my username and password"
        safe_data = sanitize_input(raw_data)
        self.assertEqual(safe_data, "my username and ********")

if __name__ == '__main__':
    unittest.main()
