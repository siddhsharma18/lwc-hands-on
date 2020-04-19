trigger T1OnAccount on Account (before insert) {
    System.debug('Hello World');
}