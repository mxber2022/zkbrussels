pragma circom 2.0.0;

template IsEqual(n) {
    signal input a[n];
    signal input b[n];
    signal output out;

    signal tmp[n];
    signal squared[n];
    signal sum[n+1];

    sum[0] <== 0;

    var i;
    for (i = 0; i < n; i++) {
        tmp[i] <== a[i] - b[i];
        squared[i] <== tmp[i] * tmp[i];
        sum[i+1] <== sum[i] + squared[i];
    }
    out <== sum[n];
}

template Feedback() {
    signal input identityHash[256];
    signal input feedbackHash[256];
    signal input validUserHash[256];

    component isValid = IsEqual(256);
    var i;
    for (i = 0; i < 256; i++) {
        isValid.a[i] <== identityHash[i];
        isValid.b[i] <== validUserHash[i];
    }

    signal output out[256];
    for (i = 0; i < 256; i++) {
        out[i] <== feedbackHash[i];
    }

    isValid.out === 0;
}

component main = Feedback();
