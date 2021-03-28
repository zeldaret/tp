lbl_807DFAEC:
/* 807DFAEC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 807DFAF0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 807DFAF4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 807DFAF8  7C 64 02 14 */	add r3, r4, r0
/* 807DFAFC  C0 23 00 04 */	lfs f1, 4(r3)
/* 807DFB00  4E 80 00 20 */	blr 
