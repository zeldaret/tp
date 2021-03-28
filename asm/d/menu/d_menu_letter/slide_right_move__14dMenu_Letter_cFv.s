lbl_801DE1E8:
/* 801DE1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE1EC  7C 08 02 A6 */	mflr r0
/* 801DE1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE1F8  7C 7F 1B 78 */	mr r31, r3
/* 801DE1FC  38 7F 03 58 */	addi r3, r31, 0x358
/* 801DE200  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DE204  C0 42 A9 18 */	lfs f2, lit_4308(r2)
/* 801DE208  C0 62 A9 1C */	lfs f3, lit_4309(r2)
/* 801DE20C  48 09 18 31 */	bl cLib_addCalc2__FPffff
/* 801DE210  C0 1F 03 58 */	lfs f0, 0x358(r31)
/* 801DE214  FC 00 02 10 */	fabs f0, f0
/* 801DE218  FC 20 00 18 */	frsp f1, f0
/* 801DE21C  C0 02 A9 20 */	lfs f0, lit_4310(r2)
/* 801DE220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DE224  40 80 00 14 */	bge lbl_801DE238
/* 801DE228  C0 02 A8 E0 */	lfs f0, lit_3827(r2)
/* 801DE22C  D0 1F 03 58 */	stfs f0, 0x358(r31)
/* 801DE230  38 00 00 00 */	li r0, 0
/* 801DE234  98 1F 03 6D */	stb r0, 0x36d(r31)
lbl_801DE238:
/* 801DE238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE240  7C 08 03 A6 */	mtlr r0
/* 801DE244  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE248  4E 80 00 20 */	blr 
