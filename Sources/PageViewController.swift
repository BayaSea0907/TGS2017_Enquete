import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    
    lazy var orderedViewControllers:[UIViewController] = {
        //スワイプで画面遷移する処理(IdentityName)
        return [self.newVc(viewController:"titleS"),
                self.newVc(viewController:"secondS"),
                self.newVc(viewController:"aimS"),
                self.newVc(viewController:"vrS"),
                self.newVc(viewController:"bbS"),
                self.newVc(viewController:"cbS"),
                self.newVc(viewController:"srS"),
                self.newVc(viewController:"cmS"),
                self.newVc(viewController:"thirdS"),
                self.newVc(viewController:"thanksS")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated:true,
                               completion:nil)
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    func newVc(viewController: String) -> UIViewController {
        return UIStoryboard(name:"Main",bundle:nil).instantiateViewController(withIdentifier:viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)else{
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            //return orderedViewControllers.last(これは永遠にスライドコード１）
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else{
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController)else{
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
            //return orderedViewControllers.first(これは永遠にスライドコード２）
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else{
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
