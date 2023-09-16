package rwiftkey.themes;

import rwiftkey.themes.IRemoteServiceCallbacks;
import rwiftkey.themes.IHomeCallbacks;
import rwiftkey.themes.ISettingsCallbacks;
import rwiftkey.themes.ui.screen.home.KeyboardTheme;

interface IRemoteService {
    void ping();

    // remote
    void registerRemoteCallbacks(IRemoteServiceCallbacks callback);
    void removeRemoteCallbacks();
    void sendThemesToSelf(in List<KeyboardTheme> themes);
    void onRemoteServiceStarted();
    void onInstallThemeFromUriResult(boolean hasInstalled);

    // home
    void registerHomeCallbacks(IHomeCallbacks callback);
    void removeHomeCallbacks();
    void requestInstallThemeFromUri(in Uri uri);

    // settings
    void registerSettingsCallbacks(ISettingsCallbacks callback);
    void removeSettingsCallbacks();
    void requestCleanup();
    void onRequestCleanupFinish();
}