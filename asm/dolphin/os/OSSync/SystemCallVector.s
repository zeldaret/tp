lbl_80340A20:
/* 80340A20  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 80340A24  61 2A 00 08 */	ori r10, r9, 8
/* 80340A28  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 80340A2C  4C 00 01 2C */	isync 
/* 80340A30  7C 00 04 AC */	sync
/* 80340A34  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 80340A38  4C 00 00 64 */	rfi 
