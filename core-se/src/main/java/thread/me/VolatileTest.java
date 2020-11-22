package thread.me;

public class VolatileTest {
    private boolean shouldExit = false;

    public void setShouldExit(boolean shouldExit) {
        System.out.println("[" + Thread.currentThread().getName() + "] setShouldExit to " + shouldExit);
        this.shouldExit = shouldExit;
    }

    public void waitShouldExit() {
        System.out.println("[" + Thread.currentThread().getName() + "] waitShouldExit");
        while (!this.shouldExit) {

        }
        System.out.println("[" + Thread.currentThread().getName() + "] waitShouldExit end");
    }

    public static void main(String[] args) {
        final VolatileTest t1 = new VolatileTest();
        new Thread(() -> {
            t1.waitShouldExit();
        }, "T-1").start();
        t1.setShouldExit(false);
        new Thread(() -> {
            t1.waitShouldExit();
        }, "T-2").start();
        t1.setShouldExit(true);
    }
}
