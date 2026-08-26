import runpy
import unittest
from pathlib import Path


CALCULATOR = runpy.run_path(
    str(Path(__file__).parents[1] / "scripts" / "calculator.py")
)


class LargeStandardFulfillmentFeeTests(unittest.TestCase):
    def test_weight_above_three_pounds_uses_incremental_rate(self):
        calculate_fee = CALCULATOR["calculate_fba_fulfillment_fee"]
        size_tier = CALCULATOR["SizeTier"]

        self.assertEqual(calculate_fee(size_tier.LARGE_STANDARD, 3), 6.10)
        self.assertAlmostEqual(
            calculate_fee(size_tier.LARGE_STANDARD, 4),
            6.48,
        )
        self.assertAlmostEqual(
            calculate_fee(size_tier.LARGE_STANDARD, 20),
            12.56,
        )


if __name__ == "__main__":
    unittest.main()
