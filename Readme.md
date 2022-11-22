测试：
测试代币：
RobotToken:0xf7C8fF1d4cde823710cbCacD5F9a411e14709982
UsdtToken:0x20f43661F0D0A320595D0aC1B552f53EF38a0a79

测试合约地址：
Robot:0xA59792F0bb4c61153125565cc21C89E5C0CB1dBf
BatchTransfer:0x357Bc70d51745cd299f4d3ED85b3ff8432457362
正式合约地址：
Robot： 0x0f2B699827199ABB1CBcAa0F86C527D39bc651f4
BatchTransfer：0x51a5Ee936aCC73eAD4091b6af9447677E63b43BB

Robot合约接口：

#### 获取用户信息
getUserInfo()
入参：无
返回：bool
说明：用户权限
#### 设置用户信息
setUserInfo(address,bool)
入参：用户地址,用户权限
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
