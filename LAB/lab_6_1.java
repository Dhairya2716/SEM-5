
class Node {

    int data;
    Node left, right;

    Node(int data) {
        this.data = data;
        this.left = this.right = null;
    }

}

public class lab_6_1 {

    public static int height(Node root) {
        if (root == null) {
            return 0;
        }
        int leftHeight = height(root.left);
        int rightHeight = height(root.right);
        return 1 + Math.max(leftHeight, rightHeight);
    }

    public static void main(String[] args) {

        Node root = new Node(3);
        root.left = new Node(9);
        root.right = new Node(20);
        root.right.left = new Node(15);
        root.right.right = new Node(7);

        System.out.println("height of the binary tree is: " + height(root));

    }
}
