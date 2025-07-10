
import java.util.ArrayList;
import java.util.List;

//class node is already defiend in this folder so it will show error...
// class Node {
//     int data;
//     Node left, right;
//     Node(int data) {
//         this.data = data;
//         this.left = this.right = null;
//     }
// }
public class lab_6_2 {

    public static void pendentNodes(Node root, List<Integer> leafNodes) {
        if (root == null) {
            return;
        }

        if (root.left == null && root.right == null) {
            leafNodes.add(root.data);
            return;
        }

        pendentNodes(root.left, leafNodes);
        pendentNodes(root.right, leafNodes);
    }

    public static void main(String[] args) {
        Node root = new Node(3);
        root.left = new Node(9);
        root.right = new Node(20);
        root.right.left = new Node(15);
        root.right.right = new Node(7);

        List<Integer> totalNodes = new ArrayList<>();
        pendentNodes(root, totalNodes);
        System.out.println("pendent Nodes: " + totalNodes);
        System.out.println("total number of pendent nodes: " + totalNodes.size());
    }
}
