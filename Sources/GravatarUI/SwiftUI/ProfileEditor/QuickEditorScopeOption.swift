/// Represents a profile editing scope with configuration options for each scope.
public struct QuickEditorScopeOption {
    let avatarPickerConfig: AvatarPickerConfiguration
    let aboutEditorConfig: AboutEditorConfiguration
    let scope: QuickEditorScopeType

    init(
        scope: QuickEditorScopeType,
        avatarPickerConfig: AvatarPickerConfiguration = .horizontalInstrinsicHeight,
        aboutEditorConfig: AboutEditorConfiguration = .init(presentationStyle: .expandableMedium())
    ) {
        self.avatarPickerConfig = avatarPickerConfig
        self.aboutEditorConfig = aboutEditorConfig
        self.scope = scope
    }

    /// Creates a `QuickEditorScopeOption` configured for the avatar picker scope.
    /// - Parameter config: Configuration to apply to the avatar picker.
    /// - Returns: A configured instance of `QuickEditorScopeOption` for the avatar picker scope.
    public static func avatarPicker(
        _ config: AvatarPickerConfiguration
    ) -> Self {
        .init(
            scope: .avatarPicker,
            avatarPickerConfig: config
        )
    }

    /// Creates a `QuickEditorScopeOption` configured for the about info editor scope.
    /// - Parameter config: Configuration to apply to the about editor. Defaults to the standard configuration.
    /// - Returns: A configured instance of `QuickEditorScopeOption` for the about info editor scope.
    public static func aboutEditor(
        _ config: AboutEditorConfiguration = .init()
    ) -> Self {
        .init(
            scope: .aboutInfoEditor,
            aboutEditorConfig: config
        )
    }
}
