BSC测试：
****
RobotToken:0xf7C8fF1d4cde823710cbCacD5F9a411e14709982
UsdtToken:0x20f43661F0D0A320595D0aC1B552f53EF38a0a79
Robot:0xbA627948dCA2Bfa8E140718aaFb60Fc9aEAdb0bb
BatchTransfer:0x357Bc70d51745cd299f4d3ED85b3ff8432457362
UniswapV3Factory:0x6725F303b657a9451d8BA641348b6761A6CC7a17
SwapRouter:0xD99D1c33F9fC3444f8101754aBC46c52416550D1

ETH测试：
****
RobotToken:0xc206f6632e7FfC5ad6bE366Cb77ADdBafB88F715
UsdtToken:0xFdC0d381108F0edE0720b0ece286a9ff8a8F5f5C
Robot:0x7fA258E87eCea5223639f8B56c0c13949EBf4d17
BatchTransfer:0xD596c498De87E6B459DCD9F06861b60FB74e9a21
UniswapV3Factory:0x1F98431c8aD98523631AE4a59f267346ea31F984
SwapRouter:0xE592427A0AEce92De3Edee1F18E0157C05861564

BSC正式合约地址：
Robot： 0x414EA35552c8c0C6359eC72427Ff664Baa6762d7
BatchTransfer：0x51a5Ee936aCC73eAD4091b6af9447677E63b43BB

Robot合约接口：

#### 获取用户信息
getUserInfo(address)
入参：用户地址
返回：bool
说明：用户权限
#### 设置用户信息
setUserInfo(address,bool,bool)
入参：用户地址,用户权限,管理权限
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
