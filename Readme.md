测试：
测试代币：
RobotToken:0xf7C8fF1d4cde823710cbCacD5F9a411e14709982
UsdtToken:0x20f43661F0D0A320595D0aC1B552f53EF38a0a79

合约地址：
Robot:0x59c4bbe3B2a41E888d95CbF64c698056d579B5fF
BatchTransfer:0x357Bc70d51745cd299f4d3ED85b3ff8432457362
Router:0xD99D1c33F9fC3444f8101754aBC46c52416550D1

正式：
合约地址：
BatchTransfer：0x759B2bf1bE4dEc5cDf4031511Ca42A1569c12c4E
Robot合约接口：

#### 获取用户信息
getUserInfo()
入参：无
返回：bool
说明：用户权限
#### 设置用户信息
setUserInfo(bool)
入参：用户权限
返回：无
说明：

BatchTransfer：合约接口

#### 批量转移代币
batchTransferERC20(address,address[],uint)
入参：代币地址，转移地址数组，每个地址转账金额
返回：无
说明：无


#### 批量转移ETH
batchTransferETH(address[])
入参：转移地址数组
返回：无
说明：无

#### 批量获取余额与授权额度
batchGetValue（address,address,address[]）
入参：代币地址，路由地址，用户地址数组
返回：uint[],uint[]
说明：余额数组，授权额度数组[]

#### 批量获取ETH余额
batchGetETHValue（address[]）
入参：用户地址数组
返回：uint[]
说明：余额数组

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
