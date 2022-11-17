测试代币：
RobotToken:0xf7C8fF1d4cde823710cbCacD5F9a411e14709982
UsdtToken:0x20f43661F0D0A320595D0aC1B552f53EF38a0a79

合约地址：
Robot:0x76EC99F9DAB72a917648583Ec268b28791B4c20b
BatchTransfer:0x8d5e405d012E75cD34Fa8a47f26d63EDFA16201E
Router:0xD99D1c33F9fC3444f8101754aBC46c52416550D1

Robot合约接口：

#### 返回机器人操作
ValueSwapRobot(address,address,uint,uint,uint)
入参：代币地址，usdt地址，最小价格汇率，最大价格汇率，买单占比率
返回：bool
说明：返回true购买代币，返回false卖出代币



BatchTransfer：合约接口

#### 批量转移代币
batchTransferERC20(address,address[])
入参：代币地址，转移地址数组
返回：无
说明：无


#### 批量转移ETH
batchTransferETH(address[])
入参：转移地址数组
返回：无
说明：无

Router合约接口：

#### 交易代币
swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
入参：输入金额，最小输出金额，[卖出代币地址，买入代币地址]，买入代币转移地址，结束时间
返回：uint256[]
说明：输入代币数量及输出代币数量数组
