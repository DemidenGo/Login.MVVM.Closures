import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)

        let vc = LoginViewController()
        
        let loginModel = (UIApplication.shared.delegate as! AppDelegate).loginModel
        let viewModel = LoginViewModel(for: loginModel)
        vc.initialize(viewModel: viewModel)
        
        let nc = UINavigationController(rootViewController: vc)
        window.rootViewController = nc
        window.makeKeyAndVisible()
        self.window = window
    }
}
