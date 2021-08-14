
// UIButton 押下して別の画面に遷移する
button.rx.tap.subscribe(onNext: {
    if let viewController = UIStoryboard(name: "SecondViewController", bundle: nil)
        .instantiateInitialViewController() as? SecondViewController {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
})
.disposed(by: disposeBag)