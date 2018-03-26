//
//  ViewController1.swift
//  TransitionTest
//
//  Created by Lenny on 2018/3/14.
//  Copyright © 2018年 Lenny. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.blue
        let textView = UITextView()
        self.view.addSubview(textView)
        textView.frame = CGRect.init(x: 20, y: 50, width: screenWidth - 40, height: screenHeight - 100)
        textView.text = "三问区块链人民日报记者 王观近段时间，有关比特币的新闻非常吸睛，区块链也跟着火了一把。资本市场上，各种区块链概念股的股价涨跌犹如过山车般惊心动魄。从反应敏锐的资本市场可以看出，区块链正站上风口，受到各方高度关注。什么是区块链？一种去中心化的分布式账本数据库，没有中心，数据存储的每个节点都会同步复制整个账本，信息透明难以篡改近几年，越来越多的机构开始重视并参与区块链技术研发。从最初的比特币、以太坊，到各种类型的区块链创业公司、风险投资基金、金融机构，贴上“区块链”标签，立马就“金光闪闪”。不仅如此，很多人的微信朋友圈也被各种解读区块链的文章刷屏。那么，到底什么是区块链？工信部指导发布的《中国区块链技术和应用发展白皮书2016》这样解释：广义来讲，区块链技术是利用块链式数据结构来验证与存储数据、利用分布式节点共识算法来生成和更新数据、利用密码学的方式保证数据传输和访问的安全、利用由自动化脚本代码组成的智能合约来编程和操作数据的一种全新的分布式基础架构与计算范式。交通银行金融研究中心高级研究员何飞进行了通俗解释：“简单地说，区块链就是一种去中心化的分布式账本数据库。”去中心化，即与传统中心化的方式不同，这里是没有中心，或者说人人都是中心；分布式账本数据库，意味着记载方式不只是将账本数据存储在每个节点，而且每个节点会同步共享复制整个账本的数据。同时，区块链还具有去中介化、信息透明等特点。“区块链技术本质上是一种数据库技术，具体讲就是一种账本技术。账本记录一个或多个账户资产变动、交易情况，其实是一种结构最为简单的数据库，我们平常在小本本上记的流水账、银行发过来的对账单，都是典型的账本。”腾讯金融科技智库首席研究员王钧说，安全是区块链技术的一大特点，主要体现在两方面：一是分布式的存储架构，节点越多，数据存储的安全性越高；二是其防篡改和去中心化的巧妙设计，任何人都很难不按规则修改数据。以网购交易为例，传统模式是买家购买商品，然后将钱打到第三方支付机构这个中介平台，等卖方发货、买方确认收货后，再由买方通知支付机构将钱打到卖方账户。由区块链技术支撑的交易模式则不同，买家和卖家可直接交易，无需通过任何中介平台。买卖双方交易后，系统通过广播的形式发布交易信息，所有收到信息的主机在确认信息无误后记录下这笔交易，相当于所有的主机都为这次交易做了数据备份。即使今后某台机器出现问题，也不会影响数据的记录，因为还有无数台机器作为备份。作者：深猴区块链链接：https://www.jianshu.com/p/0864642a979c來源：简书著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。"
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        self.navigationController?.pushViewController(ViewController2(), animated: true)
        
//        lenny_Present(viewController: ViewController2(), animateType: .SpreadFromRight)
//        lenny_OpenGesturePresent(to: ViewController2(), with: .right)
//        lenny_Present(viewController: ViewController2(), duration: 0.7, animateType: .PushAfterInside)
//        lenny_OpenGesturePresent(to: ViewController2(), with: .right, animateType: .PushFromTop)
        lenny_Present(viewController: ViewController2(), animateType: .Custom, duration: nil, customAnimate: { (transitionContext) in
            let fromViewController = transitionContext.viewController(forKey: .from)
            let toViewController = transitionContext.viewController(forKey: .to)
            let containerView = transitionContext.containerView
            containerView.addSubview(fromViewController!.view)
            containerView.addSubview(toViewController!.view)
            toViewController!.view.transform = CGAffineTransform.init(translationX: screenWidth, y: 0)
            UIView.animate(withDuration: 0.5, animations: {
                toViewController!.view.transform = CGAffineTransform.identity
            }, completion: { (finished) in
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
            })
        }) {}
    }
    
}



