import 'package:flutter/material.dart';

abstract class LightThemeColors {
  // Text Colors
  static const Color colorTextPrimary = Color(0xFF121212);
  static const Color colorTextSecondary = Color(0xff818c99);
  static const Color colorTextTertiary = Color(0xFF98A0A9);
  static const Color colorTextSubhead = Color(0xFF78818B);
  static const Color colorTextPositive = Color(0xFF4EB74E);
  static const Color colorTextNegative = Color(0xFFE84848);
  static const Color colorTextArchive = Color(0xFFFFFFFF);
  static const Color colorTextBanner = Color(0xFF818C99);
  static const Color colorTextStatus = Color(0xFFFFFFFF);
  static const Color colorTextButton = Color(0xFFFFFFFF);
  static const Color colorTextTime = Color(0xFFA1A9B3);

  // Icon Colors
  static const Color colorIconPrimary = Color(0xFF424242);
  static const Color colorIconSecondary = Color(0xFF98A0A9);
  static const Color colorIconTertiary = Color(0xFFBBBFC5);
  static const Color colorIconPositive = Color(0xFF4EB74E);
  static const Color colorIconNegative = Color(0xFFE84848);
  static const Color colorIcon = Color(0xFFFFFFFF);
  static const Color colorIconBannerGreen = Color(0xFF4EB74E);
  static const Color colorIconTimeSecond = Color(0xFFA1A9B3);
  static const Color colorIconTimeLiveIndicator = Color(0xFFFF5858);
  static const Color colorIconBridge = Color(0xFF98A0A9);
  static const Color colorIconPlayerControl = Color(0xFF424242);
  static const Color iconStatusPartially = Color(0xFFE76B00);
  static const Color iconStatusNothreads = Color(0xFF5472FF);

  // Background Colors
  static const Color colorBackgroundPrimary = Color(0xFFFFFFFF);
  static const Color colorBackgroundSecondary = Color(0xFFF5F5F5);
  static const Color colorBackgroundTertiary = Color(0xFFF9F9F9);
  static const Color colorBackgroundPositive = Color(0xFF4EB74E);
  static const Color colorBackgroundNegative = Color(0xFFE84848);
  static const Color colorBackgroundPositiveTint = Color(0xFFE7F8E7);
  static const Color colorBackgroundNegativeTint = Color(0xFFFAEBEB);
  static const Color colorBackgroundWarningTint = Color(0xFFFFF2D6);
  static const Color colorBackgroundInfoTint = Color(0xFFD4E1FF);
  static const Color colorBackgroundField = Color(0xFFEFF1F5);
  static const Color colorBackgroundOverlay = Color(0x7F000000);
  static const Color colorBackgroundActionsheet = Color(0xFFFFFFFF);
  static const Color colorBackground = Color(0xFFFFFFFF);
  static const Color colorBackgroundBannerGray = Color(0xFFF5F5F5);
  static const Color colorBackgroundBannerBlue = Color(0xFFD4E1FF);
  static const Color colorBackgroundBannerGrin = Color(0xFFE7F8E7);
  static const Color colorBackgroundBannerRed = Color(0xFFFAEBEB);
  static const Color colorBackgroundHeader = Color(0xFFFFFFFF);
  static const Color colorBackgroundSelectionField = Color(0xFFFFFFFF);
  static const Color colorBackgroundAuthorization = Color(0xFFFFFFFF);
  static const Color colorBackgroundBasic = Color(0xFFFFFFFF);
  static const Color colorBackgroundBottomSheet = Color(0xFFFFFFFF);
  static const Color colorBackgroundMain = Color(0xFFF5F5F5);
  static const Color colorBackgroundPrimaryIntercom = Color(0xFF0C0C10);
  static const Color colorBackgroundCards = Color(0xFFFFFFFF);
  static const Color colorBackgroundPlayButton = Color(0xFFE3E5E9);
  static const Color colorTimebar = Color(0xFFEFEFEF);
  static const Color colorStrokeTimelineMain = Color(0xFFE3E3E3);
  static const Color colorStrokeLive = Color(0xFFCDCDCD);

  // Stroke Colors
  static const Color colorSeporatorPrimary = Color(0xFFD7D9DB);
  static const Color colorSeporatorSecondary = Color(0xFFE0E2E6);
  static const Color colorImageBorder = Color(0xFFD3D3D3);
  static const Color colorFieldBorder = Color(0xFFE3E3E3);

  // Palette Colors
  static const Color colorAccentBlue = Color(0xFF2F8EED);
  static const Color colorAccentGrey = Color(0xFFB1B9C1);
  static const Color colorAccentRed = Color(0xFFFC4254);
  static const Color colorAccentGreen = Color(0xFF53CA53);
  static const Color colorAccentOrange = Color(0xFFFFAA1A);
  static const Color colorAccentPurple = Color(0xFF775FEC);
  static const Color colorAccentViolet = Color(0xFF8E3BDD);
  static const Color colorAccentBlack = Color(0xFF000000);

  // Other Colors
  static const Color colorImagePlaceholder = Color(0xFFE9ECEF);
  static const Color colorActiveSlider = Color(0xFF424242);

  // States Colors
  static const Color colorButtonSecondaryActive = Color(0xFFE4E6EF);

  // Buttons Colors
  static const Color colorButtonSecondary = Color(0xFFEDEEF2);
  static const Color colorFilterSelected = Color(0xFFE5EDFF);
  static const Color colorButtonSnackbar = Color(0xFFFFFFFF);
  static const Color colorButtonCancel = Color(0xFFFFFFFF);
  static const Color colorButtonPlayer = Color(0xFF808080);

  // Events Colors
  // Analytics Events
  static const Color colorCameraDamageEvent = Color(0xFFFFA337);
  static const Color colorSmokeFireDetectionEvent = Color(0xFFFF5A3F);
  static const Color colorLoudSoundDetectionEvent = Color(0xFF008CFF);
  static const Color colorMotionDetectionEvent = Color(0xFF5AD057);
  static const Color colorFaceIdentifiedEvent = Color(0xFF07D4F0);
  static const Color colorFaceNotIdentifiedEvent = Color(0xFF91D4E2);
  static const Color colorLicensePlateIdentifiedEvent = Color(0xFF3EDE9B);
  static const Color colorLicensePlateNotIdentifiedEvent = Color(0xFF628BFF);
  static const Color colorCrossLineDetectionEvent = Color(0xFFFF729C);
  static const Color colorPersonCountingEvent = Color(0xFFFF7CF2);
  static const Color colorVisitorsCountingEvent = Color(0xFF905BFF);
  static const Color colorContainerNumberRecognitionEvent = Color(0xFFFF8078);
  static const Color colorEventIdentified = Color(0xFF4EB74E);
  static const Color colorEventNotIdentified = Color(0xFFE84848);
  // User Events
  static const Color colorUserEvent = Color(0xFFEDD500);
  // Device Events
  static const Color colorIntercomOpenedEvent = Color(0xFF5472FF);
  static const Color colorBridgeActivatedEvent = Color(0xFF4EB74E);
  static const Color colorBridgeDeactivatedEvent = Color(0xFFE84848);
  // Camera Events
  static const Color colorSmtpOnvifEvent = Color(0xFF6060FF);
  // System Events
  static const Color colorHighQualityAvailableEvent = Color(0xFF4EB74E);
  static const Color colorHighQualityUnavailableEvent = Color(0xFFE84848);
  static const Color colorStandardQualityAvailableEvent = Color(0xFF4EB74E);
  static const Color colorStandardQualityUnavailableEvent = Color(0xFFE84848);
  // Intercom incoming call screen
  static const Color colorBackgroundSecondaryIncomingCall = Color(0xFF1D1E26);
  static const Color colorIconIncomingCall = Color(0xFFFFFFFF);
  static const Color colorBackgroundNegativeIncomingCall = Color(0xFFE84848);
  static const Color colorIconEnabledIncomingCall = Color(0xFF64636A);
  static const Color colorBackgroundPositiveIncomingCall = Color(0xFF4EB74E);

  // Authorization screen logo
}

abstract class DarkThemeColors {
  // Text Colors
  static const Color colorTextPrimary = Color(0xFFFFFFFF);
  static const Color colorTextSecondary = Color(0xFF8C8A97);
  static const Color colorTextTertiary = Color(0xFF8C8A97);
  static const Color colorTextSubhead = Color(0xFF9A98A7);
  static const Color colorTextPositive = Color(0xFF4EB74E);
  static const Color colorTextNegative = Color(0xFFE84848);
  static const Color colorTextArchive = Color(0xFFFFFFFF);
  static const Color colorTextBanner = Color(0xFFFFFFFF);
  static const Color colorTextStatus = Color(0xFFFFFFFF);
  static const Color colorTextButton = Color(0xFFFFFFFF);
  static const Color colorTextTime = Color(0xFFFFFFFF);

  // Icon Colors
  static const Color colorIconPrimary = Color(0xFFE3E5E9);
  static const Color colorIconSecondary = Color(0xFF8C8A97);
  static const Color colorIconTertiary = Color(0xFF64636A);
  static const Color colorIconPositive = Color(0xFF4EB74E);
  static const Color colorIconNegative = Color(0xFFE84848);
  static const Color colorIcon = Color(0xFFFFFFFF);
  static const Color colorIconHeader = Color(0xFFFFFFFF);
  static const Color colorIconBannerBlue = Color(0xFFFFFFFF);
  static const Color colorIconBannerGreen = Color(0xFF4EB74E);
  // Not a mistake, in player colors are the same light blue
  static const Color colorIconTimeSecond = Color(0xFFFFFFFF);
  static const Color colorIconTimeLiveIndicator = Color(0xFFFF5858);
  static const Color colorIconBridge = Color(0xFFFFFFFF);
  static const Color colorIconPlayerControl = Color(0xFF424242);
  static const Color iconStatusPartially = Color(0xFFE76B00);
  static const Color iconStatusNothreads = Color(0xFF5472FF);

  // Background Colors
  static const Color colorBackgroundPrimary = Color(0xFF0C0C10);
  static const Color colorBackgroundSecondary = Color(0xFF1D1E26);
  static const Color colorBackgroundTertiary = Color(0xFF20212A);
  static const Color colorBackgroundPositive = Color(0xFF4EB74E);
  static const Color colorBackgroundNegative = Color(0xFFE84848);
  static const Color colorBackgroundPositiveTint = Color(0xFF4EB74E);
  static const Color colorBackgroundNegativeTint = Color(0xFF2A2C30);
  static const Color colorBackgroundWarningTint = Color(0xFFFFF2D6);
  static const Color colorBackgroundInfoTint = Color(0xFF152053);
  static const Color colorBackgroundField = Color(0xFF2A2C30);
  static const Color colorBackgroundOverlay = Color(0x99000000);
  static const Color colorBackgroundActionsheet = Color(0xFF1D1E26);
  static const Color colorBackground = Color(0xFF1D1E26);
  static const Color colorBackgroundBannerGray = Color(0xFF2F303C);
  static const Color colorBackgroundBannerGrin = Color(0xFF4EB74E);
  static const Color colorBackgroundBannerRed = Color(0xFFFAEBEB);
  static const Color colorBackgroundHeader = Color(0xFF1D1E26);
  static const Color colorBackgroundSelectionField = Color(0xFF2A2C30);
  static const Color colorBackgroundAuthorization = Color(0xFF1D1E26);
  static const Color colorBackgroundBasic = Color(0xFF1D1E26);
  static const Color colorBackgroundBottomSheet = Color(0xFF1D1E26);
  static const Color colorBackgroundMain = Color(0xFF0C0C10);
  static const Color colorBackgroundPrimaryIntercom = Color(0xFF0C0C10);
  static const Color colorBackgroundCards = Color(0xFF1D1E26);
  static const Color colorBackgroundPlayButton = Color(0xFFE3E5E9);
  static const Color colorTimebar = Color(0xFF000000);
  static const Color colorStrokeTimelineMain = Color(0xFF1D1E26);
  static const Color colorStrokeLive = Color(0xFF2F303C);

  // Stroke Colors
  static const Color colorSeporatorPrimary = Color(0xFF3E3F45);
  static const Color colorSeporatorSecondary = Color(0xFF29292E);
  static const Color colorImageBorder = Color(0xFF272832);
  static const Color colorFieldBorder = Color(0xFF3B3C44);

  // Palette Colors
  static const Color colorAccentBlue = Color(0xFF2F8EED);
  static const Color colorAccentGrey = Color(0xFFB1B9C1);
  static const Color colorAccentRed = Color(0xFFFC4254);
  static const Color colorAccentGreen = Color(0xFF53CA53);
  static const Color colorAccentOrange = Color(0xFFFFAA1A);
  static const Color colorAccentPurple = Color(0xFF775FEC);
  static const Color colorAccentViolet = Color(0xFF8E3BDD);
  static const Color colorAccentBlack = Color(0xFF000000);

  // Other Colors
  static const Color colorImagePlaceholder = Color(0xFF31313C);
  static const Color colorActiveSlider = Color(0xFF2F303C);

  // States Colors
  static const Color colorButtonSecondaryActive = Color(0xFF2A2B35);

  // Buttons Colors
  static const Color colorButtonSecondary = Color(0xFF2F303C);
  static const Color colorFilterSelected = Color(0xFF243A7A);
  static const Color colorButtonSnackbar = Color(0xFF2F303C);
  static const Color colorButtonCancel = Color(0xFF1D1E26);
  static const Color colorButtonPlayer = Color(0xFF050506);

  // Events Colors
  // Analytics Events
  static const Color colorCameraDamageEvent = Color(0xFFFFA337);
  static const Color colorSmokeFireDetectionEvent = Color(0xFFFF5A3F);
  static const Color colorLoudSoundDetectionEvent = Color(0xFF008CFF);
  static const Color colorMotionDetectionEvent = Color(0xFF5AD057);
  static const Color colorFaceIdentifiedEvent = Color(0xFF07D4F0);
  static const Color colorFaceNotIdentifiedEvent = Color(0xFF91D4E2);
  static const Color colorLicensePlateIdentifiedEvent = Color(0xFF3EDE9B);
  static const Color colorLicensePlateNotIdentifiedEvent = Color(0xFF628BFF);
  static const Color colorCrossLineDetectionEvent = Color(0xFFFF729C);
  static const Color colorPersonCountingEvent = Color(0xFFFF7CF2);
  static const Color colorVisitorsCountingEvent = Color(0xFF905BFF);
  static const Color colorContainerNumberRecognitionEvent = Color(0xFFFF8078);
  static const Color colorEventIdentified = Color(0xFF4EB74E);
  static const Color colorEventNotIdentified = Color(0xFFE84848);
  // User Events
  static const Color colorUserEvent = Color(0xFFEDD500);
  // Device Events
  static const Color colorIntercomOpenedEvent = Color(0xFF5472FF);
  static const Color colorBridgeActivatedEvent = Color(0xFF4EB74E);
  static const Color colorBridgeDeactivatedEvent = Color(0xFFE84848);
  // Camera Events
  static const Color colorSmtpOnvifEvent = Color(0xFF6060FF);
  // System Events
  static const Color colorHighQualityAvailableEvent = Color(0xFF4EB74E);
  static const Color colorHighQualityUnavailableEvent = Color(0xFFE84848);
  static const Color colorStandardQualityAvailableEvent = Color(0xFF4EB74E);
  static const Color colorStandardQualityUnavailableEvent = Color(0xFFE84848);
  // Intercom incoming call screen
  static const Color colorBackgroundSecondaryIncomingCall = Color(0xFF1D1E26);
  static const Color colorIconIncomingCall = Color(0xFFFFFFFF);
  static const Color colorBackgroundNegativeIncomingCall = Color(0xFFE84848);
  static const Color colorIconEnabledIncomingCall = Color(0xFF64636A);
  static const Color colorBackgroundPositiveIncomingCall = Color(0xFF4EB74E);
}
