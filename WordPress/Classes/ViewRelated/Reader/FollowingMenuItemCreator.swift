import Gridicons

final class FollowingMenuItemCreator: ReaderMenuItemCreator {
    func supports(_ topic: ReaderAbstractTopic) -> Bool {
        return topic.path.hasSuffix("/read/following")
    }

    func menuItem(with topic: ReaderAbstractTopic) -> ReaderMenuItem {
        var item = ReaderMenuItem(title: topic.title,
                                  type: .topic,
                                  icon: Gridicon.iconOfType(.checkmarkCircle),
                                  topic: topic)
        item.order = ReaderDefaultMenuItemOrder.followed.rawValue

        return item
    }
}
