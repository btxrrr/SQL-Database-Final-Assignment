# SQL-Database-Final-Assignment

## Introduction / 介绍
This repository showcases the database module assignment completed as part of the Diploma in CSF. The project involves designing a database to support business processes for a hypothetical company, NP40 Book Rental. The assignment demonstrates the entire process from conceptual data modeling to physical database implementation and SQL query formulation.

该仓库展示了完成CSF文凭课程的数据库模块作业。项目涉及设计一个数据库，以支持一个假设公司NP40书籍租赁的业务流程。作业展示了从概念数据建模到物理数据库实现以及SQL查询编写的整个过程。

## Case Study / 案例研究
For detailed business requirements and operational context, refer to the [Case Study](CASE_STUDY.md).

有关详细的业务需求和操作背景，请参阅[案例研究](CASE_STUDY.md)。

## ER Diagram / ER图
The ER diagram representing the final conceptual design is available in the root directory as `ER_Diagram.pdf`.

代表最终概念设计的ER图在根目录中以`ER_Diagram.pdf`的形式提供。

## Data Dictionary / 数据字典
The data dictionary, which details the physical design of the database, is available as `Data_Dictionary.pdf`.

详细说明数据库物理设计的数据字典以`Data_Dictionary.pdf`的形式提供。

## SQL Scripts / SQL脚本
### Individual SQL Scripts / 个人SQL脚本
The `Individual_SQL_Scripts` directory contains SQL scripts contributed by individual team members:
- `bernice.sql`: SQL statements contributed by me.

`Individual_SQL_Scripts`目录包含由各个团队成员贡献的SQL脚本：
- `bernice.sql`：我贡献的SQL语句。

### Original Database Setup / 原始数据库设置
The `Original_Database` directory contains the original SQL setup script for the NP40 Book Rental database:
- `NP40Book_Setup (1).sql`: Script for setting up the initial database.

`Original_Database`目录包含NP40书籍租赁数据库的原始SQL设置脚本：
- `NP40Book_Setup (1).sql`：用于设置初始数据库的脚本。

## Reports / 报告
The `Report` directory includes various reports and documentation related to the project:
- `Db case study annotations.docx`: Annotations and notes on the case study.
- `Team1_Bernice Parts Only_Assignment.docx`: Individual contribution report by Bernice.

`Report`目录包括与项目相关的各种报告和文档：
- `Db case study annotations.docx`：案例研究的注释和笔记。
- `Team1_Bernice Parts Only_Assignment.docx`：Bernice的个人贡献报告。

## Case Scenario / 案例场景
The case scenario document outlining the business requirements is available as `Case_Scenario.pdf`.

概述业务需求的案例场景文档以`Case_Scenario.pdf`的形式提供。

## How to Use / 使用方法
1. Clone the repository / 克隆仓库: 
``` git clone https://github.com/btxrrr/SQL-Database-Final-Assignment.git ```

2. Navigate to the Original_Database directory and run the SQL script to set up the initial database / 导航到Original_Database目录并运行SQL脚本以设置初始数据库：
```psql -U username -d database_name -f NP40Book_Setup (1).sql ```

3. Run the individual SQL scripts from the Individual_SQL_Scripts directory as needed / 根据需要运行Individual_SQL_Scripts目录中的个人SQL脚本：
```psql -U username -d database_name -f Individual_SQL_Scripts/bernice.sql```

4. Review the ER diagram and data dictionary to understand the database design and structure. / 查看ER图和数据字典以了解数据库设计和结构。


