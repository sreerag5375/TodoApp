import 'package:flutter/material.dart';
import '/const/app_colors.dart';
import '/const/app_sizes.dart';
import '/views/widgets/app_bar.dart';
import '/views/widgets/floating_btn_add_task.dart';
import '/views/widgets/spacing.dart';
import '../widgets/todo_item_list_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.PAGE_PADDING),
        child: Column(
          children: [
            const Spacing(space: 50),
            const AppBarTodo(),
            const Spacing(space: 18),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.ACCENT_COLOR,
                  borderRadius: BorderRadius.circular(12)),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                      color: AppColors.SECONDARY_COLOR,
                      borderRadius: BorderRadius.circular(12)),
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 36),
                  tabs: const [
                    Tab(
                      child: Text(
                        'High',
                        style: TextStyle(
                            fontSize: AppSizes.SUB_HEADING_FONT_SIZE,
                            color: AppColors.PRIMARY_COLOR),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            fontSize: AppSizes.SUB_HEADING_FONT_SIZE,
                            color: AppColors.PRIMARY_COLOR),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Low',
                        style: TextStyle(
                            fontSize: AppSizes.SUB_HEADING_FONT_SIZE,
                            color: AppColors.PRIMARY_COLOR),
                      ),
                    )
                  ]),
            ),
            const Spacing(space: 10),
            SizedBox(
                height: 180,
                child: TabBarView(controller: _tabController, children: [
                  Container(
                    color: const Color.fromARGB(255, 205, 198, 198),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 246, 170, 147),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 193, 208, 234),
                  ),
                ])),
            const Spacing(space: 24),
            const TodoItemsListHeading(),
            const Spacing(space: 20),
            TodoItemList()
          ],
        ),
      ),
      floatingActionButton: const AddNewTaskButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class TodoItemList extends StatelessWidget {
  const TodoItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (ctx, index) {
            return Container(
              color: Color.fromARGB(255, 205, 201, 201),
              child: const ListTile(
                title: Text('Design home screen ui'),
                subtitle: Text('design and implement to home screen basic ui'),
              ),
            );
          },
          separatorBuilder: (ctx, index) => const Divider(),
          itemCount: 20),
    );
  }
}
