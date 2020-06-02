
class Urls{

   // ignore: non_constant_identifier_names
   static final String IP =  "188.166.14.154" ;

//    private static final String IP = BuildConfig.DEBUG ? "178.128.8.26" : "178.128.8.26";
//   static final String IP = BuildConfig.DEBUG ? "tremendocapi.com" : "tremendocapi.com";

//    private static final String IP = BuildConfig.DEBUG ? "188.166.14.154" : "188.166.14.154";
//    private static final String IP = BuildConfig.DEBUG ? "192.168.88.27" : "192.168.88.27";

   static final String SERVER = "http://" + IP + ":9000/tremendoc/api/";

   static String USER_CREATE =  SERVER + "account/create";
  static String USER_LOGIN = SERVER + "account/authenticate";
   static String INITIATE_PASSWORD_RESET = SERVER + "account/reset";
  static String COMPLETE_PASSWORD_RESET = SERVER + "account/complete/reset";
   static String VERIFY_PLANS = SERVER + "account/verify/subscription";

  //HMO
  static String AXA_MANSARD_HMO_VERIFY = SERVER + "account/axa/verify";
   static String HYGIEA_HMO_VERIFY = SERVER + "account/hygeia/verify?";


  // production url for bank transfer
   static String URL_WEB_BANK_TRANSFER ="https://tremendoc.com/doctor/payment-page?";
  static String CAllBACK_URL_ADD_CARD="http://tremendoc.com/doctor/verify-reference?";

//    http://tremendoc.com/doctor/verify-reference?sessionId=UUSTOMER@09876567890@1&reference=7892ghjdvmndb   http://178.128.121.29/doctor/payment-page?
//    http://178.128.121.29/doctor/verify-reference?
   static String ADD_CARD = SERVER + "payment/card/add";
   static String FETCH_CARDS = SERVER + "payment/cards";
  static String DELETE_CARD = SERVER + "payment/card/";
  // Account Number
   static  String ADD_BANK_ACCOUNT_NUMBER =SERVER + "payment/add-account";

   static  String PAYMENT_TRACKER= SERVER + "customer/paystack-card-error/add";

   static String MANUAL_PAYMENT_ADD= SERVER + "manual-payment/add";

   static final String APPOINTMENTS = SERVER + "appointments/retrieve/";
   static final String APPOINTMENT_BOOK = SERVER + "appointments/book";

   static final String FETCH_FAQS = SERVER + "faqs/get";

   static final String FETCH_TIPS = SERVER + "healthtips/get";
   static final String LIKE_TIP = SERVER + "healthtip/like";
   static final String TIP_COMMENTS = SERVER + "healthtips/comments/get/";
   static final String POST_COMMENT = SERVER + "healthtip/comment";

   static String ACCOUNT_INFO = SERVER + "account/profile/";
   static String CUSTOMER_FEEDBACK = SERVER + "account/feedback";

   static String PROFILE = SERVER + "customer/profile";
   static String ALLERGIES = PROFILE + "/allergies";
   static String LIFESTYLE = PROFILE + "/lifestyle";
   static String MEDICATION = PROFILE + "/medication";
   static String PREGNANCY = SERVER + "/customer/health/profile/update";
   static String SYMPTOMS = PROFILE + "/symptoms";
   static String TREATMENTS = PROFILE + "/treatments";
   static String MEDICAL_DATA = PROFILE + "/medical/data";


   static String DOCTORS_NOTES = SERVER + "doctor_notes/patient/";

   static String SPECIALTIES = SERVER + "specialties/get";
   static String SPECIALTIES_BY_CATEGORY = SERVER + "specialties/get/";


   static String DOCTOR_AVAILABLE = SERVER + "doctor/available/";
   static String INITIATE_CONSULTATION = SERVER + "consultation/initiate";
   static String UPDATE_CONSULTATION = SERVER + "consultation/update";
   static String RETRIEVE_CONSULTATION = SERVER + "consultation/retrieve";
   static String COMPLAIN_CONSULTATION = SERVER + "consultation/complaint/post";
   static String ONLINE_STATUS = SERVER + "customers/online-mode";

   static String PLANS = SERVER + "subscription/plans/get";

   static String SUBSCRIBE = SERVER + "subscription/create";
   static String SUBSCRIPTIONS = SERVER + "subscription/get";
   static String SUBSCRIPTION_CANCEL = SERVER + "subscription/cancel";
   static String MANAGEMENT_PLAN_CORPORATE = SERVER + "management/plans/corporate/bind";
   static String MANAGEMENT_PLAN_NYSC = SERVER + "management/plans/nysc/bind";
   static String MANAGEMENT_PLAN_AGENT = SERVER + "management/plans/agent/bind";
   static String MANAGEMENT_PLAN_ANY = SERVER + "management/plans/token/bind";
   static String VERIFY_ACCOUNT_SUBSCRIPTION =SERVER+ "account/verify/subscription";


   static String FAVOURITES = SERVER + "customer/favorites";
   static String SPECIALTY_DOCTORS = SERVER + "doctor/search/speciality/";
   static String DOCTORS_SEARCH = SERVER + "doctor/search/name/";
   static String DOCTORS_RANDOM = SERVER + "doctor/search/random";


   static final String PRESCRIPTIONS = SERVER + "prescriptions/patient/";
   static final String PRESCRIPTIONS_SEARCH = SERVER + "prescriptions/search/";

   static final String PROFILE_UPDATE = SERVER + "account/update";
   static final String CHANGE_PASSWORD = SERVER + "account/password/change";

   static final String INTERESTS = SERVER + "customer/health/interests";
   static final String LANGUAGES = SERVER + "customer/languages";

   static final String CHAT = SERVER + "pusher/message/send";

   static final String PUSH_TOKEN = SERVER + "push/pushtoken/add";

   static final String MOBILE_SLIDER = SERVER + "admin/mobile-slider/get";

  //book appointments
   static final String APPOINTMENT_DOCTOR_LIST = SERVER + "doctor/list/calendar";
   static final String CALENDAR_RETRIEVE = SERVER + "calendar/retrieve/";

  // therapy
   static final String THERAPY_QUESTIONS=SERVER +"therapy/therapy-questions";
   static final String THERAPY_SUBMIT_QUESTION_ANSWER= SERVER +"therapy/submit-question";
   static final String THERAPY_APPOINTMENT_SCHEDULE=SERVER +"customer/hpp-appointment-schedule-group-by-date";
   static final String THERAPY_APPOINTMENT_TIME_DATE=SERVER+"customer/schedule-hpp-appointment-by-date/all";
   static final String THERAPY_BOOK_APPOINMENT=SERVER +"customer/book-hpp-appointment";
   static final String THERAPY_APPOINTMENT_LIST=SERVER +"customer/customer-hpp-appointments";
   static final String THERAPY_APPOINTMENT_INITIATE_CONSULTATION= SERVER + "consultation/initiate/hpp-appointment";
   static final String THERAPY_PROVIDER_LIST=SERVER + "therapy/therapy-provider";
   static final String THERAPY_STATUS=SERVER + "customer/hpp-appointments-status";

  // web payment
   static final String WEB_PAYMENT = SERVER + "payment/webview?";
}