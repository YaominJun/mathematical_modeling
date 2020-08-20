# 优化问题

## 1. 平板车装货问题

### 来源

[中国慕课网]: https://www.icourse163.org/learn/NWPU-1003545127?tid=1206999286#/learn/announce	"数学建模"

### 问题说明

见pdf

### 解决方法

matlab中的intlinprog函数。

建立好模型后（决策变量、约束条件、目标函数），用lingo软件求解或matlab求解：

matlab中有intlinprog函数，可以进行混合整数线性规划问题的求解。

intlinprog Mixed integer linear programming. 

```matlab
X = intlinprog(f,intcon,A,b)
```

 attempts to solve problems of the form：

<img src=".././images/intlinprog.png" style="zoom:80%;" />

其中intcon是指要求为整数的数的下标集合。可以是1：末尾，也可以是随意定的各个数值。