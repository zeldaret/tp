lbl_804BB37C:
/* 804BB37C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804BB380  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804BB384  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804BB388  7C 23 04 2E */	lfsx f1, r3, r0
/* 804BB38C  4E 80 00 20 */	blr 
