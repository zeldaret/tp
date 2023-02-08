lbl_801DE2D0:
/* 801DE2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE2D4  7C 08 02 A6 */	mflr r0
/* 801DE2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE2DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE2E0  7C 7F 1B 78 */	mr r31, r3
/* 801DE2E4  38 7F 03 58 */	addi r3, r31, 0x358
/* 801DE2E8  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DE2EC  C0 42 A9 18 */	lfs f2, lit_4308(r2)
/* 801DE2F0  C0 62 A9 1C */	lfs f3, lit_4309(r2)
/* 801DE2F4  48 09 17 49 */	bl cLib_addCalc2__FPffff
/* 801DE2F8  C0 1F 03 58 */	lfs f0, 0x358(r31)
/* 801DE2FC  FC 00 02 10 */	fabs f0, f0
/* 801DE300  FC 20 00 18 */	frsp f1, f0
/* 801DE304  C0 02 A9 20 */	lfs f0, lit_4310(r2)
/* 801DE308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DE30C  40 80 00 14 */	bge lbl_801DE320
/* 801DE310  C0 02 A8 E0 */	lfs f0, lit_3827(r2)
/* 801DE314  D0 1F 03 58 */	stfs f0, 0x358(r31)
/* 801DE318  38 00 00 00 */	li r0, 0
/* 801DE31C  98 1F 03 6D */	stb r0, 0x36d(r31)
lbl_801DE320:
/* 801DE320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE328  7C 08 03 A6 */	mtlr r0
/* 801DE32C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE330  4E 80 00 20 */	blr 
