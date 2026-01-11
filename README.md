# متجر جيهاد لخضاري

مشروع متجر إلكتروني مبني بـ PHP  وHTML وCSS و MySQL.  
يتيح للمستخدمين تصفح المنتجات، إضافتها للعربة، متابعة الطلبات، تسجيل الدخول، ووضع تقييمات ومفضلات.

---

## الملفات المهمة

### الصفحات الأساسية
- index.php / index.html: الصفحة الرئيسية للمتجر
- login.php : صفحة تسجيل الدخول
- registre.php : صفحة إنشاء حساب جديد
- logout.php : تسجيل الخروج
- cart.php : صفحة عربة التسوق
- checkout.php : صفحة إتمام الطلبات
- my orders.php : صفحة الطلبات السابقة للمستخدم

### ملفات PHP وظيفية
- config.php : إعدادات الاتصال بقاعدة البيانات
- add_to_cart_ajax.php : إضافة منتج للعربة باستخدام AJAX
- delete cart item.php : حذف منتج من العربة
- update cart quantity.php : تحديث كمية المنتج في العربة
- favorite.php : إضافة المنتجات للمفضلة
- toggle_favorite.php : تفعيل/إلغاء المفضلة
- get cart count.php : جلب عدد المنتجات في العربة
- track_view.php : متابعة مشاهدة المنتجات


## كيفية تشغيل المشروع

1. ثبت XAMPP أو أي سيرفر محلي يدعم PHP + MySQL.
2. ضع الملفات في مجلد السيرفر (مثلاً htdocs/ في XAMPP).
3. افتح phpMyAdmin واستورد ملف sql/djihan.sql.
4. عدّل config.php لتتصل بقاعدة البيانات.
5. افتح index.php في المتصفح لتشغيل الموقع.

---

## فئات المنتجات

- Téléphones
- Pc
- Imprimantes
- Caméras
- Appareils intelligents

---

## بعض المنتجات مع صورها

| المنتج | السعر | صورة |
|--------|-------|------|
| iPhone 15 Pro Max | 325000 DA | ![iPhone 15 Pro Max](https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-pro-max-1.jpg) |
| Samsung Galaxy S24 Ultra | 275000 DA | ![Galaxy S24 Ultra](https://tse2.mm.bing.net/th/id/OIP.LuOe8eHItEE7jFlrxWHUkgHaFj?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3) |
| Oppo A58 | 45000 DA | ![Oppo A58](https://tse4.mm.bing.net/th/id/OIP.xn3TIeYg8VYmZ77ueBIqewHaHa?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3) |
| Infinix Smart 7 | 26000 DA | ![Infinix Smart 7](https://fdn2.gsmarena.com/vv/pics/infinix/infinix-smart-7-1.jpg) |
| HP Laptop 14s | 53000 DA | ![HP Laptop 14s](https://thvnext.bing.com/th/id/OIP.loGHhBYmiRgSwJjW2GY2twHaF7?o=7&cb=thvnextrm=3&rs=1&pid=ImgDetMain&o=7&rm=3) |

---

## ملاحظات

- المشروع تجريبي ويمكنك تعديل المنتجات والفئات حسب الحاجة.
- يدعم AJAX في العربة والمفضلة لتجربة مستخدم أفضل.
