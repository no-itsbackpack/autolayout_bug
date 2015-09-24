class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'test_restkit'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = ViewController.alloc.init
    @window.makeKeyAndVisible

    true
  end
end

class ViewController < UIViewController
  def viewDidLoad
    setup_constraints
  end

  def viewWillAppear(animated)
  end

  def viewWillDisappear(animated)
  end

  def setup_constraints
    Motion::Layout.new do |layout|
      layout.view       self.view
      layout.subviews   a: label_a, b: label_b, c: button_a, d: button_b
      layout.vertical   '[c(==50)]-10-[d(==50)]-10-[b(==50)]-10-[a(==50)]-10-|'
      layout.horizontal '|-10-[a]-10-|'
      layout.horizontal '|-10-[b]-10-|'
      layout.horizontal '|-10-[c]-10-|'
      layout.horizontal '|-10-[d]-10-|'
    end
  end

  def label_a
    @label_a ||= build_label.tap do |label|
      label.text = "HELP"
    end
  end

  def label_b
    @label_b ||= build_label.tap do |label|
      label.text = "ME"
    end
  end

  def button_a
    @button_a ||= build_button.tap do |button|
      button.setTitle('THE', forState: UIControlStateNormal)
    end
  end

  def button_b
    @button_b ||= build_button.tap do |button|
      button.setTitle('WHAT', forState: UIControlStateNormal)
    end
  end

  def build_button
    UIButton.alloc.init.tap do |button|
      button.setTitleColor(UIColor.blackColor, forState: UIControlStateNormal)
      button.backgroundColor  = UIColor.whiteColor
      button.titleLabel.textAlignment   = UITextAlignmentLeft
    end
  end

  def build_label
    UILabel.alloc.init.tap do |l|
      l.backgroundColor = UIColor.whiteColor
      l.textColor = UIColor.blackColor
      l.textAlignment = NSTextAlignmentCenter
    end
  end
end
