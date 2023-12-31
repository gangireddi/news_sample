import 'package:get/get.dart';

class AppStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'navigation_dashboard': 'Dashboard',
      'navigation_account': 'Account',
      'navigation_network': 'Network',
      'navigation_support': 'Support',
      'navigation_home': 'Home',
      'navigation_iaq': 'IAQ',
      'navigation_explore': 'Explore',
      'good_morning': 'Good Morning',
      'good_afternoon': 'Good Afternoon',
      'good_evening': 'Good Evening',
      'good_night': 'Good Night',
      'welcome': 'Welcome',
      'test_alarm': 'TEST ALARM',
      'test_alarm_testing': 'TESTING',
      'test_alarm_preparing': 'PREPARING',
      'ping_alarm': 'PING ALARM',
      'cancel_ping_alarm': 'CANCEL',
      'hush': 'HUSH',
      'hushed': 'HUSHED',
      'remove_device': 'Remove Device',
      'device_alerts': 'DEVICE ALERTS',
      'notify_device_eol': 'Notify device end of life',
      'notify_device_goes_offline': 'Notify when the device goes\noffline',
      'device_name': 'Device Name',
      'room_type': 'Room Type',
      'device_status': 'DEVICE STATUS',
      'smoke': 'Smoke',
      'clear': 'CLEAR',
      'replace_in': 'Replace in',
      'signal_strength': 'Signal Strength',
      'sw_device_details': 'SOFTWARE & DEVICE DETAILS',
      'adv_device_details': 'Advanced Device Details',
      'device_tutorial': 'Device Tutorial',
      'show_device_settings': 'Show Device Settings',
      'carbon_monoxide': 'Carbon monoxide',
      'indoor_air_quality': 'Indoor Air Quality',
      'water_presence': 'Water Presence',
      'freeze_risk': 'Freeze Risk',
      'view_details': 'View Details',
      'property_settings': 'Property Settings',
      'property_devices': 'PROPERTY DEVICES',
      'add_a_device': 'Add A Device',
      'latest_timeline_message': 'LATEST TIMELINE MESSAGE',
      'no_alarm_events': 'No alarm event from connected Kidde Wi-Fi device',
      'calibrating': 'CALIBRATING',
      'personal_info': 'PERSONAL INFO',
      'full_name': 'Full Name',
      'email_address': 'Email Address',
      'phone_number': 'Phone Number',
      'sign_in_settings': 'SIGN-IN SETTINGS',
      'password': 'Password',
      'sign_in_with_face_id': 'Sign in with Face ID',
      'push': 'Push',
      'sms': 'SMS',
      'email': 'Email',
      'notification_preferences': 'NOTIFICATION PREFERENCES',
      'notification_preferences_text': 'Select how you would like to receive alerts. \n\nNote: SMS notifications will only be sent for smoke and/or CO alarm events\n\nEven if Push Notifications are disabled below, you will receive Life Safety notifications from the Kidde App.',
      'smart_home_integartions': 'SMART HOME INTEGRATIONS',
      'smart_home_integartions_text': 'Your smart home device can be used to control your Kidde products. Select a system you would like to connect to.',
      'alexa': 'Alexa',
      'google': 'Google',
      'set_temperature_type': 'SET TEMPERATURE TYPE',
      'set_language': 'SET LANGUAGE',
      'set_language_text': 'This will change the language in the Kidde app and on mobile notifications. It will not change the language of the voice alerts that sound from the Kidde Wi-Fi alarms that have that functionality. To change those, please refer to the User Guide.This will change the language in the Kidde app and on mobile notifications. It will not change the language of the voice alerts that sound from the Kidde Wi-Fi alarms that have that functionality. To change those, please refer to the User Guide.',
      'english': 'English',
      'french': 'French',
      'sign_out': 'SIGN OUT',
      'ok_btn': 'Okay',
      'cancel_btn': 'Cancel',
      'device_lost_err_msg': 'Device is lost',
      'device_busy_err_msg': 'Device is busy',
      'no_alarm_active' : 'No alarm active',
      'sending_identify': 'Sending identify',
      'identity_success': 'Identify sent successfully',
      'identity_failed': 'Identify failed',
      'cancel_identify_success' : 'Cancel Identify sent successfully',
      'cancel_identify_failed' : 'Cancel Identify failed',
      'sending_test' : 'Sending test',
      'test_success' : 'Test sent successfully',
      'test_failed' : 'Test Failed',
      'cancel_test_success' : 'Cancel Test sent successfully',
      'cancel_test_failed' : 'Cancel Test failed',
      'sending_hush' : "Sending Hush",
      'hush_success' : "Hush sent successfully",
      'hush_failed' : "Hush failed",
      'must_be_same_wifi_to_test_err_msg' : 'Must be on same WiFi to Test',
      'no_internet_connection': 'Please insure mobile is connected to a network',
      'note' : 'Note',
      'proximity_message' : 'You must be standing next to the alarm and on the same Wi-Fi network as the alarm to Hush or Test the alarm.\n\nOnce you are standing next to the alarm and on the same Wi-Fi, tap the CONFIRM button below.',
      'confirm' : 'Confirm',
      'pleaseselect' : 'Please Select',
      'kitchen' :             'Kitchen',
      'livingroom' :          'Living Room',
      'hallway' :             'Hallway',
      'upstairs' :            'Upstairs',
      'downstairs' :          'Downstairs',
      'diningroom' :          'Dining Room',
      'bedroom' :             'Bedroom',
      'masterbedroom' :       'Master Bedroom',
      'guestbedroom' :        'Guest Bedroom',
      'boysbedroom' :         'Boy\'s Bedroom',
      'girlsbedroom' :        'Girl\'s Bedroom',
      'entryway' :            'Entryway',
      'den' :                 'Den',
      'recroom' :             'Rec Room',
      'office' :              'Office',
      'utilityroom' :         'Utility Room',
      'laundryroom' :         'Laundry Room',
      'basement' :            'Basement',
      'attic' :               'Attic',
      'garage' :              'Garage',
      'bathroom' :            'Bathroom',
      'workshop' :            'Workshop',
      'driveway' :            'Driveway',
      'frontyard' :           'Front yard',
      'backyard' :            'Back yard',
      'outside' :             'Outside',
      'northsideofhouse' :    'North side of house',
      'eastsideofhouse' :     'East side of house',
      'westsideofhouse' :     'West side of house',
      'southsideofhouse' :    'South side of house',
      'frontporch' :          'Front porch',
      'backporch' :           'Back porch',
      'gate' :                'Gate',
      'other' :               'Other',
      'something_went_wrong' : 'Something went wrong!',
      'battery_level' : 'Battery Level',
      'yes' : 'YES',
      'no' : 'NO',
      'low' : 'LOW',
      'high' : 'HIGH',
      'notify_when_battery_life_is_low' : 'Notify when battery life is low.',
      'notify_when_device_goes_offline_for_n_hours_or_more' : 'Notify when the device goes offline for %d hours or more.',
      'temperature' : 'Temperature',
      'relative_humidity' : 'Relative Humidity',
      'tvoc' : 'TVOC',
      'indoor_air_quality_alerts': 'INDOOR AIR QUALITY ALERTS',
      'indoor_air_quality_alerts_text': 'When toggled On, you will receive a mobile alert when your Temperature, Relative Humidity, or TVOC levels reach the Very Bad status. When that level improves from Very Bad, you will also receive an alert.\nIf you would like to adjust how you receive alerts (push, SMS or email), go into your Account Settings, then scroll down to Notification Preferences.',
      'detected' : 'DETECTED',
      'recalibration_tvoc_sensor' : 'RECALIBRATION: TVOC SENSOR',
      'recalibration_tvoc_sensor_text' : 'Your device may benefit from a recalibration of its indoor air quality monitoring if it has been moved to another room or has been disconnected from power for an extended period.',
      'recalibrate_sensor' : 'RECALIBRATE SENSOR',
      'weeks' : 'weeks',
      'camera' : 'Camera',
      'monitor' : 'Monitor',
      'detector' : 'Detector',
      'water_leak_freeze_detector' : 'Water Leak + Freeze Detector',
      'carbonmonoxide_with_iaq' : 'Carbon Monoxide Alarm with Indoor Air Quality Monitor',
      'smoke_carbonmonoxide_with_iaq' : 'Smoke + Carbon Monoxide Alarm with Indoor Air Quality Monitor',
      'smoke_carbonmonoxide_alarm' : 'Smoke + Carbon Monoxide Alarm',
      'smoke_iaq_monitor' : 'Smoke with Indoor Air Quality Monitor',
      'device_removed_msg' : 'Device is no longer available',
      'all' : 'All',
      'smoke_and_co_detected' : 'Smoke and Carbon monoxide detected in',
      'water_and_freeze_detected' : 'Water and Freeze detected in',
      'smoke_detected' : 'Smoke detected in',
      'co_detected' : 'Carbon monoxide detected in',
      'water_detected' : 'Water detected in',
      'freeze_detected' : 'Freeze detected in',
      'replace_alarm_msg' : 'Replace alarm',
      'low_battery_msg' : 'Low battery, replace batteries',
      'lost_contact' : 'Lost contact with the cloud',
      'pre_eol_msg' : 'Approaching low battery, replace batteries soon',
      'poor_signal_msg' : 'Poor signal',
      'urgent_attention_msg' : 'Urgent attention needed',
      'attention_required' : 'Attention required',
      'no_device_found' : 'No devices found',
      'no_property_found' : 'No property found',
      'remove_this_device_sure' : 'Are you sure you want to remove this device?',
      'yes_remove' : 'Yes, remove',
      'unable_to_delete' : 'Unable to delete device'
    },
    'fr_FR': {
      'navigation_dashboard': 'Tableau de bord',
      'navigation_account': 'Compte',
      'navigation_network': 'Réseau',
      'navigation_support': 'Soutien',
      'good_morning': 'Bonjour',
      'good_afternoon': 'Bon après-midi',
      'good_evening': 'Bonsoir',
      'good_night': 'Bonne nuit',
      'welcome': 'Bienvenue',
      'test_alarm': 'TESTER L’AVERTISSEUR',
      'ping_alarm': 'ENVOYEZ UN PING À L’AVERTISSEUR',
      'hush': 'HUSH (SILENCE)"',
      'remove_device': 'Retirer le dispositif',
      'device_alerts': 'ALERTES DISPOSITIF',
      'notify_device_eol': 'Avertir fin de vie du dispositif',
      'notify_device_goes_offline': 'Avertir lorsque le dispositif se retrouve hors ligne',
      'device_name': 'Nom de l’appartement',
      'room_type': 'Type de pièce',
      'device_status': 'ÉTAT DISPOSITIF',
      'smoke': 'Fumée',
      'clear': 'RAPPORT CLAIR',
      'replace_in': 'Remplacer dans',
      'signal_strength': 'Force du signal',
      'sw_device_details': 'DÉTAILS DU LOGICIEL ET DU DISPOSITIF',
      'adv_device_details': 'Détails évolués sur le dispositif',
      'device_tutorial': 'Tutoriel de l\'appareil',
      'show_device_settings': 'Afficher les paramètres du dispositif',
      'carbon_monoxide': 'Monoxyde de carbone',
      'indoor_air_quality': 'Qualité de l\'air intérieur',
      'water_presence': 'Présence d\'eau',
      'freeze_risk': 'Risque de gel',
      'view_details': 'Voir les détails',
      'property_settings': 'Paramètres propriétés',
      'property_devices': 'DISPOSITIFS PROPRIÉTÉ',
      'add_a_device': 'Ajouter un appareil',
      'latest_timeline_message': 'DERNIER MESSAGE SUR LA CHRONOLOGIE',
      'no_alarm_events': 'Aucune alarme reçue des dispositifs Wi-Fi Kidde connectés',
      'calibrating': 'ÉTALONNAGE',
      'personal_info': 'Renseignements personnels',
      'full_name': 'Nom et prénom',
      'email_address': 'Adresse de courriel',
      'phone_number': 'Numéro de téléphone',
      'sign_in_settings': 'PARAMÈTRES DE CONNEXION',
      'password': 'Mot de passe',
      'sign_in_with_face_id': 'Connectez-vous avec Face ID',
      'push': 'Pousser',
      'sms': 'SMS',
      'email': 'Courriel',
      'notification_preferences': 'PRÉFÉRENCES DE NOTIFICATION',
      'notification_preferences_text': 'Choisissez de quelle manière vous voulez recevoir des alertes. \n\nNoter: des avis par SMS ne sont envoyés que pour des alarmes de fumée et/ou CO\n\nMême si les notifications sont désactivées ci-dessous, vous recevrez des notifications de sécurité des personnes par l\'application Kidde.',
      'smart_home_integartions': 'INTÉGRATIONS À LA MAISON INTELLIGENTE',
      'smart_home_integartions_text': 'Vous pouvez utiliser votre dispositif maison intelligent pour contrôler vos produits Kidde. Choisissez un système auquel vous désirez vous connecter.',
      'alexa': 'Alexa',
      'google': 'Google',
      'set_temperature_type': 'RÉGLAGE DU TYPE DE TEMPÉRATURE',
      'set_language': 'DÉFINIR LA LANGUE',
      'set_language_text': 'Cela changera la langue dans l\'application Kidde et sur les notifications mobiles. Cela ne changera pas la langue des alertes vocales émises par les alarmes Wi-Fi Kidde dotées de cette fonctionnalité. Pour les modifier, veuillez vous reporter au Guide de l\'utilisateur.',
      'english': 'Anglais',
      'french': 'Français',
      'sign_out': 'SE DÉCONNECTER'
    }
  };

  static final List<String> getRoomNameKeys = [
    "please select",
    "kitchen",
    "livingroom",
    "hallway",
    "upstairs",
    "downstairs",
    "diningroom",
    "bedroom",
    "masterbedroom",
    "guestbedroom",
    "boysbedroom",
    "girlsbedroom",
    "entryway",
    "den",
    "recroom",
    "office",
    "utilityroom",
    "laundryroom",
    "basement",
    "attic",
    "garage",
    "bathroom",
    "workshop",
    "driveway",
    "frontyard",
    "backyard",
    "outside",
    "northsideofhouse",
    "eastsideofhouse",
    "westsideofhouse",
    "southsideofhouse",
    "frontporch",
    "backporch",
    "gate",
    "other"
  ];

  static final List<String> getRoomNameValues = [
    "pleaseselect".tr,
    "kitchen".tr,
    "livingroom".tr,
    "hallway".tr,
    "upstairs".tr,
    "downstairs".tr,
    "diningroom".tr,
    "bedroom".tr,
    "masterbedroom".tr,
    "guestbedroom".tr,
    "boysbedroom".tr,
    "girlsbedroom".tr,
    "entryway".tr,
    "den".tr,
    "recroom".tr,
    "office".tr,
    "utilityroom".tr,
    "laundryroom".tr,
    "basement".tr,
    "attic".tr,
    "garage".tr,
    "bathroom".tr,
    "workshop".tr,
    "driveway".tr,
    "frontyard".tr,
    "backyard".tr,
    "outside".tr,
    "northsideofhouse".tr,
    "eastsideofhouse".tr,
    "westsideofhouse".tr,
    "southsideofhouse".tr,
    "frontporch".tr,
    "backporch".tr,
    "gate".tr,
    "other".tr
  ];

  /*
   *  Compare room(announcement) with room keys, en, fr language values,
   *  since earlier android app version sends values instead of keys
   */
  static String getRoomTypeValue(String? room) {
    if (room == null) {
      return getRoomNameKeys[0];
    }

    int index = getRoomNameKeys.indexOf(room);

    if (index == -1) {
      index =
      (room == "Kitchen" || room == "Cuisine") ?  1 :
      (room == "Living Room" || room == "Salle de séjour") ? 2 :
      (room == "Hallway" || room == "Couloir") ? 3 :
      (room == "Upstairs" || room == "En haut") ? 4 :
      (room == "Downstairs" || room == "En bas") ? 5 :
      (room == "Dining Room" || room == "Salle à manger") ? 6 :
      (room == "Bedroom" || room == "Chambre") ? 7 :
      (room == "Master Bedroom" || room == "Chambre des maîtres") ? 8 :
      (room == "Guest Bedroom" || room == "Chambre 'amis") ? 9 :
      (room == "Boy's Bedroom" || room == "Chambre de garçon") ? 10 :
      (room == "Girl's Bedroom" || room == "Chambre de fille") ? 11 :
      (room == "Entryway" || room == "Entrée") ? 12 :
      (room == "Den" || room == "Autre chambre") ? 13 :
      (room == "Rec Room" || room == "Salle familiale") ? 14 :
      (room == "Office" || room == "Bureau") ? 15 :
      (room == "Utility Room" || room == "Buanderie") ? 16 :
      (room == "laundry" || room == "Laundry Room" || room == "Salle de lavage") ? 17 :
      (room == "Basement" || room == "Sous-sol") ? 18 :
      (room == "Attic" || room == "Grenier") ? 19 :
      (room == "Garage") ? 20 :
      (room == "Bathroom" || room == "Salle de bains") ? 21 :
      (room == "Workshop" || room == "Atelier") ? 22 :
      (room == "Driveway" || room == "Entrée de garage") ? 23 :
      (room == "Front yard" || room == "Cour avant") ? 24 :
      (room == "Back yard" || room == "Cour") ? 25 :
      (room == "Outside" || room == "À l'extérieur") ? 26 :
      (room == "North side of house" || room == "Côté nord de la maison") ? 27 :
      (room == "East side of house" || room == "Côté est de la maison") ? 28 :
      (room == "West side of house" || room == "Côté ouest de la maison") ? 29 :
      (room == "South side of house" || room == "Côté sud de la maison") ? 30 :
      (room == "Front porch" || room == "Véranda avant") ? 31 :
      (room == "Back porch" || room == "Véranda arrière") ? 32 :
      (room == "Gate" || room == "Barrière") ? 33 :
      (room == "Other" || room == "Autre") ? 34 : 0;
    }

    return getRoomNameValues[index];
  }
}