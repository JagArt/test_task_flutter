import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vms/presentation/ui_components/theme/no_theme_colors.dart';
import 'package:vms/presentation/ui_components/theme/theme_bottom_sheet.dart';
import 'package:vms/presentation/ui_components/theme/theme_colors.dart';
import 'package:vms/presentation/ui_components/theme/theme_extensions.dart';
import 'package:vms/presentation/ui_components/theme/theme_gradients.dart';
import 'package:vms/presentation/ui_components/theme/theme_shadow_styles.dart';
import 'package:vms/presentation/ui_components/theme/theme_text_styles.dart';

class AppTheme extends ChangeNotifier {
  static final _instance = AppTheme._();

  AppTheme._();

  factory AppTheme() {
    return _instance;
  }

  ThemeTextStyles _getTextStyles() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return IOSThemeTextStyles();
    } else {
      return AndroidThemeTextStyles();
    }
  }

  ThemeData get darkTheme {
    final textStyles = _getTextStyles();
    final shadowStyles = ThemeShadowStyles();
    return ThemeData(
      splashColor: Colors.transparent,
      bottomSheetTheme: ThemeBottomSheet.darkThemeData(),
      scaffoldBackgroundColor: DarkThemeColors.colorBackgroundPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: DarkThemeColors.colorBackgroundHeader,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: _getTextStyles().headlineSemibold?.copyWith(
              color: DarkThemeColors.colorTextPrimary,
            ),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: _getTextStyles().title3Regular?.copyWith(
              color: DarkThemeColors.colorTextPrimary,
            ),
        subtitleTextStyle: _getTextStyles().subheadRegular?.copyWith(
              color: DarkThemeColors.colorTextSecondary,
            ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return LightThemeColors.colorIconAccent;
          }
          return LightThemeColors.colorIconTertiary;
        }),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.white;
            }
            return Colors.white;
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _getTextStyles().title3Medium;
            }
            return _getTextStyles().title3Medium;
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return DarkThemeColors.colorButtonPrimary;
            }
            return DarkThemeColors.colorButtonPrimary;
          }),
          shape: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            );
          }),
        ),
      ),
      switchTheme: SwitchThemeData(
        trackOutlineWidth: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
          return 0.0;
        }),
        trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          return Colors.transparent;
        }),
      ),
      extensions: <ThemeExtension<dynamic>>[
        TextColors(
          colorTextPrimary: DarkThemeColors.colorTextPrimary,
          colorTextSecondary: DarkThemeColors.colorTextSecondary,
          colorTextTertiary: DarkThemeColors.colorTextTertiary,
          colorTextSubhead: DarkThemeColors.colorTextSubhead,
          colorTextLink: DarkThemeColors.colorTextLink,
          colorTextPositive: DarkThemeColors.colorTextPositive,
          colorTextNegative: DarkThemeColors.colorTextNegative,
          colorTextArchive: DarkThemeColors.colorTextArchive,
          colorTextBanner: DarkThemeColors.colorTextBanner,
          colorTextStatus: DarkThemeColors.colorTextStatus,
          colorTextButton: DarkThemeColors.colorTextButton,
          colorTextTime: DarkThemeColors.colorTextTime,
        ),
        IconColors(
          colorIconPrimary: DarkThemeColors.colorIconPrimary,
          colorIconSecondary: DarkThemeColors.colorIconSecondary,
          colorIconTertiary: DarkThemeColors.colorIconTertiary,
          colorIconAccent: DarkThemeColors.colorIconAccent,
          colorIconPositive: DarkThemeColors.colorIconPositive,
          colorIconNegative: DarkThemeColors.colorIconNegative,
          colorIcon: DarkThemeColors.colorIcon,
          colorIconHeader: DarkThemeColors.colorIconHeader,
          colorIconBannerBlue: DarkThemeColors.colorIconBannerBlue,
          colorIconBannerGreen: DarkThemeColors.colorIconBannerGreen,
          colorBackgroundSecondaryIncomingCall: DarkThemeColors.colorBackgroundSecondaryIncomingCall,
          colorIconIncomingCall: DarkThemeColors.colorIconIncomingCall,
          colorBackgroundNegativeIncomingCall: DarkThemeColors.colorBackgroundNegativeIncomingCall,
          colorIconEnabledIncomingCall: DarkThemeColors.colorIconEnabledIncomingCall,
          colorBackgroundPositiveIncomingCall: DarkThemeColors.colorBackgroundPositiveIncomingCall,
          colorIconTimeMain: DarkThemeColors.colorIconTimeMain,
          colorIconTimeSecond: DarkThemeColors.colorIconTimeSecond,
          colorIconTimeLiveIndicator: DarkThemeColors.colorIconTimeLiveIndicator,
          colorIconBridge: DarkThemeColors.colorIconBridge,
          colorIconPlayerControl: DarkThemeColors.colorIconPlayerControl,
          iconStatusPartially: DarkThemeColors.iconStatusPartially,
          iconStatusNothreads: DarkThemeColors.iconStatusNothreads,
          colorAuthLogo: DarkThemeColors.colorAuthLogo,
        ),
        BackgroundColors(
          colorBackgroundPrimary: DarkThemeColors.colorBackgroundPrimary,
          colorBackgroundSecondary: DarkThemeColors.colorBackgroundSecondary,
          colorBackgroundTertiary: DarkThemeColors.colorBackgroundTertiary,
          colorBackgroundAccent: DarkThemeColors.colorBackgroundAccent,
          colorBackgroundPositive: DarkThemeColors.colorBackgroundPositive,
          colorBackgroundNegative: DarkThemeColors.colorBackgroundNegative,
          colorBackgroundPositiveTint: DarkThemeColors.colorBackgroundPositiveTint,
          colorBackgroundNegativeTint: DarkThemeColors.colorBackgroundNegativeTint,
          colorBackgroundWarningTint: DarkThemeColors.colorBackgroundWarningTint,
          colorBackgroundInfoTint: DarkThemeColors.colorBackgroundInfoTint,
          colorBackgroundField: DarkThemeColors.colorBackgroundField,
          colorBackgroundOverlay: DarkThemeColors.colorBackgroundOverlay,
          colorBackgroundActionsheet: DarkThemeColors.colorBackgroundActionsheet,
          colorBackground: DarkThemeColors.colorBackground,
          colorBackgroundBannerGray: DarkThemeColors.colorBackgroundBannerGray,
          colorBackgroundBannerBlue: DarkThemeColors.colorBackgroundBannerBlue,
          colorBackgroundBannerGrin: DarkThemeColors.colorBackgroundBannerGrin,
          colorBackgroundBannerRed: DarkThemeColors.colorBackgroundBannerRed,
          colorBackgroundHeader: DarkThemeColors.colorBackgroundHeader,
          colorBackgroundSelectionField: DarkThemeColors.colorBackgroundSelectionField,
          colorBackgroundAuthorization: DarkThemeColors.colorBackgroundAuthorization,
          colorBackgroundBasic: DarkThemeColors.colorBackgroundBasic,
          colorBackgroundBottomSheet: DarkThemeColors.colorBackgroundBottomSheet,
          colorBackgroundMain: DarkThemeColors.colorBackgroundMain,
          colorBackgroundPrimaryIntercom: DarkThemeColors.colorBackgroundPrimaryIntercom,
          colorBackgroundCards: DarkThemeColors.colorBackgroundCards,
          colorBackgroundPlayButton: DarkThemeColors.colorBackgroundPlayButton,
          colorTimebar: DarkThemeColors.colorTimebar,
          colorStrokeTimelineMain: DarkThemeColors.colorStrokeTimelineMain,
          colorStrokeLive: DarkThemeColors.colorStrokeLive,
        ),
        StrokeColors(
          colorSeporatorPrimary: DarkThemeColors.colorSeporatorPrimary,
          colorSeporatorSecondary: DarkThemeColors.colorSeporatorSecondary,
          colorImageBorder: DarkThemeColors.colorImageBorder,
          colorStrokeAccent: DarkThemeColors.colorStrokeAccent,
          colorFieldBorder: DarkThemeColors.colorFieldBorder,
        ),
        const PaletteColors(
          colorAccentBlue: DarkThemeColors.colorAccentBlue,
          colorAccentGrey: DarkThemeColors.colorAccentGrey,
          colorAccentRed: DarkThemeColors.colorAccentRed,
          colorAccentGreen: DarkThemeColors.colorAccentGreen,
          colorAccentOrange: DarkThemeColors.colorAccentOrange,
          colorAccentPurple: DarkThemeColors.colorAccentPurple,
          colorAccentViolet: DarkThemeColors.colorAccentViolet,
          colorAccentBlack: DarkThemeColors.colorAccentBlack,
        ),
        const OtherColors(
          colorImagePlaceholder: DarkThemeColors.colorImagePlaceholder,
          colorActiveSlider: DarkThemeColors.colorActiveSlider,
        ),
        StateColors(
          colorButtonPrimaryActive: DarkThemeColors.colorButtonPrimaryActive,
          colorButtonSecondaryActive: DarkThemeColors.colorButtonSecondaryActive,
        ),
        ButtonColors(
          colorButtonPrimary: DarkThemeColors.colorButtonPrimary,
          colorButtonSecondary: DarkThemeColors.colorButtonSecondary,
          colorFilterSelected: DarkThemeColors.colorFilterSelected,
          colorButtonSnackbar: DarkThemeColors.colorButtonSnackbar,
          colorButtonCancel: DarkThemeColors.colorButtonCancel,
          colorButtonPlayer: DarkThemeColors.colorButtonPlayer,
        ),
        const OpacityColors(
          colorOpacity8prs: NoThemeColors.colorOpacity8prs,
          colorOpacity12prs: NoThemeColors.colorOpacity12prs,
          colorOpacity20prs: NoThemeColors.colorOpacity20prs,
        ),
        GradientColors(
          colorGradientAppIconTop: NoThemeColors.colorGradientAppIconTop,
          colorGradientAppIconMiddle: NoThemeColors.colorGradientAppIconMiddle,
          colorGradientAppIconBottom: NoThemeColors.colorGradientAppIconBottom,
        ),
        const QrCodeScanner(
          colorQrCodeScannerOverlay: NoThemeColors.colorQrCodeScannerOverlay,
          colorQrCodeScannerBorder: NoThemeColors.colorQrCodeScannerBorder,
          colorQrCodeScannerButton: NoThemeColors.colorQrCodeScannerButton,
        ),
        AppTextStyles(
          title1Semibold: textStyles.title1Semibold,
          title1Bold: textStyles.title1Bold,
          title1Heavy: textStyles.title1Heavy,
          timepicker: textStyles.timepicker,
          title2Regular: textStyles.title2Regular,
          title2Semibold: textStyles.title2Semibold,
          title2Heavy: textStyles.title2Heavy,
          title3Regular: textStyles.title3Regular,
          title3Medium: textStyles.title3Medium,
          title3Semibold: textStyles.title3Semibold,
          headlineRegular: textStyles.headlineRegular,
          headlineMedium: textStyles.headlineMedium,
          headlineSemibold: textStyles.headlineSemibold,
          textRegular: textStyles.textRegular,
          textMedium: textStyles.textMedium,
          textSemibold: textStyles.textSemibold,
          subheadRegular: textStyles.subheadRegular,
          subheadMedium: textStyles.subheadMedium,
          subheadSemibold: textStyles.subheadSemibold,
          subheadBold: textStyles.subheadBold,
          caption1Regular: textStyles.caption1Regular,
          caption1Medium: textStyles.caption1Medium,
          caption1Semibold: textStyles.caption1Semibold,
          captionCaps1Semibold: textStyles.captionCaps1Semibold,
          caption2Regular: textStyles.caption2Regular,
          caption2Medium: textStyles.caption2Medium,
          caption2Semibold: textStyles.caption2Semibold,
          captionCaps2Semibold: textStyles.captionCaps2Semibold,
          caption3Regular: textStyles.caption3Regular,
          captionCaps3Semibold: textStyles.captionCaps3Semibold,
          caption4Regular: textStyles.caption4Regular,
          captionCaps4Bold: textStyles.captionCaps4Bold,
        ),
        AppShadowStyles(
          shadow4px: shadowStyles.shadow4px,
          shadow8px: shadowStyles.shadow8px,
          shadow16px: shadowStyles.shadow16px,
          shadow24px: shadowStyles.shadow24px,
        ),
        const EventsColors(
          colorCameraDamageEvent: DarkThemeColors.colorCameraDamageEvent,
          colorSmokeFireDetectionEvent: DarkThemeColors.colorSmokeFireDetectionEvent,
          colorLoudSoundDetectionEvent: DarkThemeColors.colorLoudSoundDetectionEvent,
          colorMotionDetectionEvent: DarkThemeColors.colorMotionDetectionEvent,
          colorFaceIdentifiedEvent: DarkThemeColors.colorFaceIdentifiedEvent,
          colorFaceNotIdentifiedEvent: DarkThemeColors.colorFaceNotIdentifiedEvent,
          colorLicensePlateIdentifiedEvent: DarkThemeColors.colorLicensePlateIdentifiedEvent,
          colorLicensePlateNotIdentifiedEvent: DarkThemeColors.colorLicensePlateNotIdentifiedEvent,
          colorCrossLineDetectionEvent: DarkThemeColors.colorCrossLineDetectionEvent,
          colorPersonCountingEvent: DarkThemeColors.colorPersonCountingEvent,
          colorVisitorsCountingEvent: DarkThemeColors.colorVisitorsCountingEvent,
          colorContainerNumberRecognitionEvent: DarkThemeColors.colorContainerNumberRecognitionEvent,
          colorEventIdentified: DarkThemeColors.colorEventIdentified,
          colorEventNotIdentified: DarkThemeColors.colorEventNotIdentified,
          colorUserEvent: DarkThemeColors.colorUserEvent,
          colorIntercomOpenedEvent: DarkThemeColors.colorIntercomOpenedEvent,
          colorBridgeActivatedEvent: DarkThemeColors.colorBridgeActivatedEvent,
          colorBridgeDeactivatedEvent: DarkThemeColors.colorBridgeDeactivatedEvent,
          colorSmtpOnvifEvent: DarkThemeColors.colorSmtpOnvifEvent,
          colorHighQualityAvailableEvent: DarkThemeColors.colorHighQualityAvailableEvent,
          colorHighQualityUnavailableEvent: DarkThemeColors.colorHighQualityUnavailableEvent,
          colorStandardQualityAvailableEvent: DarkThemeColors.colorStandardQualityAvailableEvent,
          colorStandardQualityUnavailableEvent: DarkThemeColors.colorStandardQualityUnavailableEvent,
        ),
        const AppGradients(gradientOpacity: DarkThemeGradients.gradientOpacity),
      ],
    );
  }

  ThemeData get lightTheme {
    final textStyles = _getTextStyles();
    final shadowStyles = ThemeShadowStyles();
    return ThemeData(
      splashColor: Colors.transparent,
      bottomSheetTheme: ThemeBottomSheet.lightThemeData(),
      scaffoldBackgroundColor: LightThemeColors.colorBackgroundPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: LightThemeColors.colorBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle: _getTextStyles().headlineSemibold?.copyWith(
              color: LightThemeColors.colorTextPrimary,
            ),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: _getTextStyles().title3Regular?.copyWith(
              color: LightThemeColors.colorTextPrimary,
            ),
        subtitleTextStyle: _getTextStyles().subheadRegular?.copyWith(
              color: LightThemeColors.colorTextSecondary,
            ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return LightThemeColors.colorIconAccent;
          }
          return LightThemeColors.colorIconTertiary;
        }),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.white;
            }
            return Colors.white;
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return _getTextStyles().title3Medium;
            }
            return _getTextStyles().title3Medium;
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return LightThemeColors.colorButtonPrimary;
            }
            return LightThemeColors.colorButtonPrimary;
          }),
          shape: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            );
          }),
        ),
      ),
      switchTheme: SwitchThemeData(
        trackOutlineWidth: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
          return 0.0;
        }),
        trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          return Colors.transparent;
        }),
      ),
      extensions: <ThemeExtension<dynamic>>[
        TextColors(
          colorTextPrimary: LightThemeColors.colorTextPrimary,
          colorTextSecondary: LightThemeColors.colorTextSecondary,
          colorTextTertiary: LightThemeColors.colorTextTertiary,
          colorTextSubhead: LightThemeColors.colorTextSubhead,
          colorTextLink: LightThemeColors.colorTextLink,
          colorTextPositive: LightThemeColors.colorTextPositive,
          colorTextNegative: LightThemeColors.colorTextNegative,
          colorTextArchive: LightThemeColors.colorTextArchive,
          colorTextBanner: LightThemeColors.colorTextBanner,
          colorTextStatus: LightThemeColors.colorTextStatus,
          colorTextButton: LightThemeColors.colorTextButton,
          colorTextTime: LightThemeColors.colorTextTime,
        ),
        IconColors(
          colorIconPrimary: LightThemeColors.colorIconPrimary,
          colorIconSecondary: LightThemeColors.colorIconSecondary,
          colorIconTertiary: LightThemeColors.colorIconTertiary,
          colorIconAccent: LightThemeColors.colorIconAccent,
          colorIconPositive: LightThemeColors.colorIconPositive,
          colorIconNegative: LightThemeColors.colorIconNegative,
          colorIcon: LightThemeColors.colorIcon,
          colorIconHeader: LightThemeColors.colorIconHeader,
          colorIconBannerBlue: LightThemeColors.colorIconBannerBlue,
          colorIconBannerGreen: LightThemeColors.colorIconBannerGreen,
          colorBackgroundSecondaryIncomingCall: LightThemeColors.colorBackgroundSecondaryIncomingCall,
          colorIconIncomingCall: LightThemeColors.colorIconIncomingCall,
          colorBackgroundNegativeIncomingCall: LightThemeColors.colorBackgroundNegativeIncomingCall,
          colorIconEnabledIncomingCall: LightThemeColors.colorIconEnabledIncomingCall,
          colorBackgroundPositiveIncomingCall: LightThemeColors.colorBackgroundPositiveIncomingCall,
          colorIconTimeMain: LightThemeColors.colorIconTimeMain,
          colorIconTimeSecond: LightThemeColors.colorIconTimeSecond,
          colorIconTimeLiveIndicator: LightThemeColors.colorIconTimeLiveIndicator,
          colorIconBridge: LightThemeColors.colorIconBridge,
          colorIconPlayerControl: LightThemeColors.colorIconPlayerControl,
          iconStatusPartially: DarkThemeColors.iconStatusPartially,
          iconStatusNothreads: DarkThemeColors.iconStatusNothreads,
          colorAuthLogo: LightThemeColors.colorAuthLogo,
        ),
        BackgroundColors(
          colorBackgroundPrimary: LightThemeColors.colorBackgroundPrimary,
          colorBackgroundSecondary: LightThemeColors.colorBackgroundSecondary,
          colorBackgroundTertiary: LightThemeColors.colorBackgroundTertiary,
          colorBackgroundAccent: LightThemeColors.colorBackgroundAccent,
          colorBackgroundPositive: LightThemeColors.colorBackgroundPositive,
          colorBackgroundNegative: LightThemeColors.colorBackgroundNegative,
          colorBackgroundPositiveTint: LightThemeColors.colorBackgroundPositiveTint,
          colorBackgroundNegativeTint: LightThemeColors.colorBackgroundNegativeTint,
          colorBackgroundWarningTint: LightThemeColors.colorBackgroundWarningTint,
          colorBackgroundInfoTint: LightThemeColors.colorBackgroundInfoTint,
          colorBackgroundField: LightThemeColors.colorBackgroundField,
          colorBackgroundOverlay: LightThemeColors.colorBackgroundOverlay,
          colorBackgroundActionsheet: LightThemeColors.colorBackgroundActionsheet,
          colorBackground: LightThemeColors.colorBackground,
          colorBackgroundBannerGray: LightThemeColors.colorBackgroundBannerGray,
          colorBackgroundBannerBlue: LightThemeColors.colorBackgroundBannerBlue,
          colorBackgroundBannerGrin: LightThemeColors.colorBackgroundBannerGrin,
          colorBackgroundBannerRed: LightThemeColors.colorBackgroundBannerRed,
          colorBackgroundHeader: LightThemeColors.colorBackgroundHeader,
          colorBackgroundSelectionField: LightThemeColors.colorBackgroundSelectionField,
          colorBackgroundAuthorization: LightThemeColors.colorBackgroundAuthorization,
          colorBackgroundBasic: LightThemeColors.colorBackgroundBasic,
          colorBackgroundBottomSheet: LightThemeColors.colorBackgroundBottomSheet,
          colorBackgroundMain: LightThemeColors.colorBackgroundMain,
          colorBackgroundPrimaryIntercom: LightThemeColors.colorBackgroundPrimaryIntercom,
          colorBackgroundCards: LightThemeColors.colorBackgroundCards,
          colorBackgroundPlayButton: LightThemeColors.colorBackgroundPlayButton,
          colorTimebar: LightThemeColors.colorTimebar,
          colorStrokeTimelineMain: LightThemeColors.colorStrokeTimelineMain,
          colorStrokeLive: LightThemeColors.colorStrokeLive,
        ),
        StrokeColors(
          colorSeporatorPrimary: LightThemeColors.colorSeporatorPrimary,
          colorSeporatorSecondary: LightThemeColors.colorSeporatorSecondary,
          colorImageBorder: LightThemeColors.colorImageBorder,
          colorStrokeAccent: LightThemeColors.colorStrokeAccent,
          colorFieldBorder: LightThemeColors.colorFieldBorder,
        ),
        const PaletteColors(
          colorAccentBlue: LightThemeColors.colorAccentBlue,
          colorAccentGrey: LightThemeColors.colorAccentGrey,
          colorAccentRed: LightThemeColors.colorAccentRed,
          colorAccentGreen: LightThemeColors.colorAccentGreen,
          colorAccentOrange: LightThemeColors.colorAccentOrange,
          colorAccentPurple: LightThemeColors.colorAccentPurple,
          colorAccentViolet: LightThemeColors.colorAccentViolet,
          colorAccentBlack: LightThemeColors.colorAccentBlack,
        ),
        const OtherColors(
          colorImagePlaceholder: LightThemeColors.colorImagePlaceholder,
          colorActiveSlider: LightThemeColors.colorActiveSlider,
        ),
        StateColors(
          colorButtonPrimaryActive: LightThemeColors.colorButtonPrimaryActive,
          colorButtonSecondaryActive: LightThemeColors.colorButtonSecondaryActive,
        ),
        ButtonColors(
          colorButtonPrimary: LightThemeColors.colorButtonPrimary,
          colorButtonSecondary: LightThemeColors.colorButtonSecondary,
          colorFilterSelected: LightThemeColors.colorFilterSelected,
          colorButtonSnackbar: LightThemeColors.colorButtonSnackbar,
          colorButtonCancel: LightThemeColors.colorButtonCancel,
          colorButtonPlayer: LightThemeColors.colorButtonPlayer,
        ),
        const OpacityColors(
          colorOpacity8prs: NoThemeColors.colorOpacity8prs,
          colorOpacity12prs: NoThemeColors.colorOpacity12prs,
          colorOpacity20prs: NoThemeColors.colorOpacity20prs,
        ),
        GradientColors(
          colorGradientAppIconTop: NoThemeColors.colorGradientAppIconTop,
          colorGradientAppIconMiddle: NoThemeColors.colorGradientAppIconMiddle,
          colorGradientAppIconBottom: NoThemeColors.colorGradientAppIconBottom,
        ),
        const QrCodeScanner(
          colorQrCodeScannerOverlay: NoThemeColors.colorQrCodeScannerOverlay,
          colorQrCodeScannerBorder: NoThemeColors.colorQrCodeScannerBorder,
          colorQrCodeScannerButton: NoThemeColors.colorQrCodeScannerButton,
        ),
        AppTextStyles(
          title1Semibold: textStyles.title1Semibold,
          title1Bold: textStyles.title1Bold,
          title1Heavy: textStyles.title1Heavy,
          timepicker: textStyles.timepicker,
          title2Regular: textStyles.title2Regular,
          title2Semibold: textStyles.title2Semibold,
          title2Heavy: textStyles.title2Heavy,
          title3Regular: textStyles.title3Regular,
          title3Medium: textStyles.title3Medium,
          title3Semibold: textStyles.title3Semibold,
          headlineRegular: textStyles.headlineRegular,
          headlineMedium: textStyles.headlineMedium,
          headlineSemibold: textStyles.headlineSemibold,
          textRegular: textStyles.textRegular,
          textMedium: textStyles.textMedium,
          textSemibold: textStyles.textSemibold,
          subheadRegular: textStyles.subheadRegular,
          subheadMedium: textStyles.subheadMedium,
          subheadSemibold: textStyles.subheadSemibold,
          subheadBold: textStyles.subheadBold,
          caption1Regular: textStyles.caption1Regular,
          caption1Medium: textStyles.caption1Medium,
          caption1Semibold: textStyles.caption1Semibold,
          captionCaps1Semibold: textStyles.captionCaps1Semibold,
          caption2Regular: textStyles.caption2Regular,
          caption2Medium: textStyles.caption2Medium,
          caption2Semibold: textStyles.caption2Semibold,
          captionCaps2Semibold: textStyles.captionCaps2Semibold,
          caption3Regular: textStyles.caption3Regular,
          captionCaps3Semibold: textStyles.captionCaps3Semibold,
          caption4Regular: textStyles.caption4Regular,
          captionCaps4Bold: textStyles.captionCaps4Bold,
        ),
        AppShadowStyles(
          shadow4px: shadowStyles.shadow4px,
          shadow8px: shadowStyles.shadow8px,
          shadow16px: shadowStyles.shadow16px,
          shadow24px: shadowStyles.shadow24px,
        ),
        const EventsColors(
          colorCameraDamageEvent: LightThemeColors.colorCameraDamageEvent,
          colorSmokeFireDetectionEvent: LightThemeColors.colorSmokeFireDetectionEvent,
          colorLoudSoundDetectionEvent: LightThemeColors.colorLoudSoundDetectionEvent,
          colorMotionDetectionEvent: LightThemeColors.colorMotionDetectionEvent,
          colorFaceIdentifiedEvent: LightThemeColors.colorFaceIdentifiedEvent,
          colorFaceNotIdentifiedEvent: LightThemeColors.colorFaceNotIdentifiedEvent,
          colorLicensePlateIdentifiedEvent: LightThemeColors.colorLicensePlateIdentifiedEvent,
          colorLicensePlateNotIdentifiedEvent: LightThemeColors.colorLicensePlateNotIdentifiedEvent,
          colorCrossLineDetectionEvent: LightThemeColors.colorCrossLineDetectionEvent,
          colorPersonCountingEvent: LightThemeColors.colorPersonCountingEvent,
          colorVisitorsCountingEvent: LightThemeColors.colorVisitorsCountingEvent,
          colorContainerNumberRecognitionEvent: LightThemeColors.colorContainerNumberRecognitionEvent,
          colorEventIdentified: LightThemeColors.colorEventIdentified,
          colorEventNotIdentified: LightThemeColors.colorEventNotIdentified,
          colorUserEvent: LightThemeColors.colorUserEvent,
          colorIntercomOpenedEvent: LightThemeColors.colorIntercomOpenedEvent,
          colorBridgeActivatedEvent: LightThemeColors.colorBridgeActivatedEvent,
          colorBridgeDeactivatedEvent: LightThemeColors.colorBridgeDeactivatedEvent,
          colorSmtpOnvifEvent: LightThemeColors.colorSmtpOnvifEvent,
          colorHighQualityAvailableEvent: LightThemeColors.colorHighQualityAvailableEvent,
          colorHighQualityUnavailableEvent: LightThemeColors.colorHighQualityUnavailableEvent,
          colorStandardQualityAvailableEvent: LightThemeColors.colorStandardQualityAvailableEvent,
          colorStandardQualityUnavailableEvent: LightThemeColors.colorStandardQualityUnavailableEvent,
        ),
        const AppGradients(gradientOpacity: LightThemeGradients.gradientOpacity),
      ],
    );
  }
}
