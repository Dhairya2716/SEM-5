
import java.util.Scanner;

public class greedy_approach {

    public static int cost(int[][] virtual_machines, int[][] time_complexity, int[][] total_tasks, int i) {

        int cpu = total_tasks[i][0];
        int mem = total_tasks[i][1];
        int best_machines = -1;
        int time_taken = Integer.MAX_VALUE;

        for (int j = 0; j < virtual_machines.length; j++) {
            if (virtual_machines[j][0] >= cpu && virtual_machines[j][1] >= mem) {
                if (time_complexity[j][i] < time_taken) {
                    time_taken = time_complexity[j][i];
                    best_machines = j;
                }
            }
        }

        if (best_machines != -1) {
            virtual_machines[best_machines][0] -= cpu;
            virtual_machines[best_machines][1] -= mem;
        }

        return best_machines;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter number of virtual machines: ");
        int vm = sc.nextInt();

        System.out.println("Enter number of tasks: ");
        int task = sc.nextInt();

        int[][] virtual_machines = new int[vm][2];
        int[][] total_tasks = new int[task][2];
        int[][] time_complexity = new int[vm][task];

        int[] task_executed = new int[task];

        System.out.println("Virtual machines:::::::::::");

        for (int i = 0; i < vm; i++) {
            System.out.print("v_cpu : ");
            virtual_machines[i][0] = sc.nextInt();
            System.out.print("v_memory : ");
            virtual_machines[i][1] = sc.nextInt();
        }

        System.out.println("Tasks:::::::::::");

        for (int j = 0; j < task; j++) {
            System.out.print("t_cpu : ");
            total_tasks[j][0] = sc.nextInt();
            System.out.print("t_memory : ");
            total_tasks[j][1] = sc.nextInt();
        }

        System.out.println("time complexity:::::::::::");

        for (int i = 0; i < vm; i++) {
            for (int j = 0; j < task; j++) {
                System.out.print("Enter time taken time_complexity[" + i + "][" + j + "]");
                time_complexity[i][j] = sc.nextInt();
            }
        }

        for (int i = 0; i < task; i++) {
            task_executed[i] = cost(virtual_machines, time_complexity, total_tasks, i);
        }

        System.out.println("Task allocated::::::");
        for (int i = 0; i < task; i++) {
            if (task_executed[i] != -1) {
                System.out.println("Task " + i + " assigned to VM " + task_executed[i]);
            } else {
                System.out.println("Task " + i + " could not be assigned to any VM due to resource constraints.");
            }
        }

        sc.close();
    }
}
