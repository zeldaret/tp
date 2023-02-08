lbl_8061863C:
/* 8061863C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80618640  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80618644  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80618648  7C 23 04 2E */	lfsx f1, r3, r0
/* 8061864C  4E 80 00 20 */	blr 
