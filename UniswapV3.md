UniswapV3Factory:0x1F98431c8aD98523631AE4a59f267346ea31F984
SwapRouter:0xE592427A0AEce92De3Edee1F18E0157C05861564
RobotToken:0xc206f6632e7FfC5ad6bE366Cb77ADdBafB88F715
UsdtToken:0xFdC0d381108F0edE0720b0ece286a9ff8a8F5f5C

swaprouter:
#### 交换代币
exactInputSingle(ExactInputSingleParams calldata params)
入参：struct ExactInputSingleParams {
        address tokenIn;   //输入代币
        address tokenOut;  //输出代币
        uint24 fee;        //代币费率
        address recipient; //接受者
        uint256 deadline;  //填写当前时间戳
        uint256 amountIn;  //输入代币数量
        uint256 amountOutMinimum; //输出代币最小数量，填0
        uint160 sqrtPriceLimitX96;// 填0
    }
返回：uint
说明：输出代币数量


UniswapV3Factory:
#### 获取流动池
getPool(
    address ,
    address ,
    uint24 
  )
  入参： 代币A地址
        代币B地址
        代币费率
返回： address
说明：流动池地址
