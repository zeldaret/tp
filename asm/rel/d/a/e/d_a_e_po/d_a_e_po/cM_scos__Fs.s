lbl_80757434:
/* 80757434  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80757438  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8075743C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80757440  7C 64 02 14 */	add r3, r4, r0
/* 80757444  C0 23 00 04 */	lfs f1, 4(r3)
/* 80757448  4E 80 00 20 */	blr 
