#!/bin/bash
#SBATCH -J CoT                  # 作业名为 test
#SBATCH -o result.out               # 屏幕上的输出文件重定向到 test.out
#SBATCH -p HGX                    # 作业提交的分区为 HGX
#SBATCH --qos=lv0b               # 作业使用的 QoS 为 lv0b
#SBATCH -N 1                      # 作业申请 1 个节点    # 单节点启动的进程数为 1
#SBATCH --cpus-per-task=4         # 单任务使用的 CPU 核心数为 4
#SBATCH -t 10:00:00                # 任务运行的最长时间为 1 小时
#SBATCH --gres=gpu:1              # 单个节点使用 1 块 GPU 卡         #--mem=<size[units]>：设定每个节点的内存大小，后缀可以为[K|M|G|T]，默认为MB

# 输入要执行的命令，例如 ./hello 或 python test.py 等
sh scripts/tomato_salad_ppo_llm.sh                   # 执行命令