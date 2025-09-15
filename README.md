# NewsApp

A new Flutter project.

## ٌRun 

https://github.com/user-attachments/assets/07d0b4bf-8f86-46d8-b161-372bcc114af6

## Search

CustomScrollView هي ويدجت تسمح بإنشاء واجهة قابلة للتمرير (Scrollable) تحتوي على عدة أجزاء مختلفة تُسمى Slivers. هذه الـ Slivers قد تكون:

قائمة (List)

شبكة (Grid)

AppBar متحرك (SliverAppBar)

أو أي عنصر آخر قابل للتمرير

وبالتالي فإنها تمنح حرية أكبر من الويدجت التقليدية مثل ListView أو GridView.

مكونات CustomScrollView

slivers:
وهو عبارة عن قائمة من العناصر (Slivers) التي يتم عرضها داخل التمرير.

controller:
للتحكم في التمرير برمجيًا.

scrollDirection:
لتحديد اتجاه التمرير (عمودي أو أفقي).

reverse:
لعكس اتجاه التمرير.

أمثلة على Slivers

SliverAppBar: شريط علوي يمكن أن يتمدد أو يختفي عند التمرير.

SliverList: قائمة ديناميكية شبيهة بـ ListView.

SliverGrid: شبكة عناصر مشابهة لـ GridView.

مميزات CustomScrollView

إمكانية دمج أنواع مختلفة من القوائم والشبكات في نفس الواجهة.

دعم الـ AppBar المتحرك والمتكيف مع التمرير.

أداء عالي في التعامل مع بيانات كبيرة (لأن Slivers تبني العناصر عند الحاجة فقط).

الفرق بينها وبين ListView

ListView أسهل للاستخدام إذا كانت لديك قائمة واحدة فقط.

CustomScrollView تُستخدم عندما تحتاج أكثر من نوع عرض (قائمة + شبكة + AppBar في نفس الصفحة).
