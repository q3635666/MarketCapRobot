// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;
interface UniswapV3 {
function getPool(
    address tokenA,
    address tokenB,
    uint24 fee
  ) external view returns (address pool);

      struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }
    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);
    
  }