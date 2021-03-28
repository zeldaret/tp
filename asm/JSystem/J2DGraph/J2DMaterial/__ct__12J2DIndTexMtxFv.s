lbl_802EB320:
/* 802EB320  38 E0 00 00 */	li r7, 0
/* 802EB324  38 80 00 00 */	li r4, 0
/* 802EB328  3C A0 80 3A */	lis r5, j2dDefaultIndTexMtxInfo@ha
/* 802EB32C  38 A5 1B C4 */	addi r5, r5, j2dDefaultIndTexMtxInfo@l
lbl_802EB330:
/* 802EB330  38 C0 00 00 */	li r6, 0
/* 802EB334  7D 05 22 14 */	add r8, r5, r4
/* 802EB338  7D 23 22 14 */	add r9, r3, r4
/* 802EB33C  38 00 00 03 */	li r0, 3
/* 802EB340  7C 09 03 A6 */	mtctr r0
lbl_802EB344:
/* 802EB344  7C 08 34 2E */	lfsx f0, r8, r6
/* 802EB348  7C 09 35 2E */	stfsx f0, r9, r6
/* 802EB34C  38 C6 00 04 */	addi r6, r6, 4
/* 802EB350  42 00 FF F4 */	bdnz lbl_802EB344
/* 802EB354  38 E7 00 01 */	addi r7, r7, 1
/* 802EB358  2C 07 00 02 */	cmpwi r7, 2
/* 802EB35C  38 84 00 0C */	addi r4, r4, 0xc
/* 802EB360  41 80 FF D0 */	blt lbl_802EB330
/* 802EB364  3C 80 80 3A */	lis r4, j2dDefaultIndTexMtxInfo@ha
/* 802EB368  38 84 1B C4 */	addi r4, r4, j2dDefaultIndTexMtxInfo@l
/* 802EB36C  88 04 00 18 */	lbz r0, 0x18(r4)
/* 802EB370  98 03 00 18 */	stb r0, 0x18(r3)
/* 802EB374  4E 80 00 20 */	blr 
