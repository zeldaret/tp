lbl_8045AE00:
/* 8045AE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045AE04  7C 08 02 A6 */	mflr r0
/* 8045AE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045AE0C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8045AE10  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8045AE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045AE18  7C 7F 1B 78 */	mr r31, r3
/* 8045AE1C  38 00 00 00 */	li r0, 0
/* 8045AE20  98 03 0C C4 */	stb r0, 0xcc4(r3)
/* 8045AE24  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 8045AE28  3C 80 80 46 */	lis r4, l_cyl_src@ha /* 0x8045C9B8@ha */
/* 8045AE2C  38 84 C9 B8 */	addi r4, r4, l_cyl_src@l /* 0x8045C9B8@l */
/* 8045AE30  4B C2 9A 85 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8045AE34  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 8045AE38  90 1F 0B CC */	stw r0, 0xbcc(r31)
/* 8045AE3C  C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 8045AE40  C0 3F 05 1C */	lfs f1, 0x51c(r31)
/* 8045AE44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045AE48  40 81 00 0C */	ble lbl_8045AE54
/* 8045AE4C  FF E0 00 90 */	fmr f31, f0
/* 8045AE50  48 00 00 08 */	b lbl_8045AE58
lbl_8045AE54:
/* 8045AE54  FF E0 08 90 */	fmr f31, f1
lbl_8045AE58:
/* 8045AE58  38 7F 0C AC */	addi r3, r31, 0xcac
/* 8045AE5C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8045AE60  4B E1 43 7D */	bl SetC__8cM3dGCylFRC4cXyz
/* 8045AE64  38 7F 0C AC */	addi r3, r31, 0xcac
/* 8045AE68  C0 3F 05 18 */	lfs f1, 0x518(r31)
/* 8045AE6C  4B E1 43 8D */	bl SetH__8cM3dGCylFf
/* 8045AE70  38 7F 0C AC */	addi r3, r31, 0xcac
/* 8045AE74  FC 20 F8 90 */	fmr f1, f31
/* 8045AE78  4B E1 43 89 */	bl SetR__8cM3dGCylFf
/* 8045AE7C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8045AE80  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8045AE84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045AE88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045AE8C  7C 08 03 A6 */	mtlr r0
/* 8045AE90  38 21 00 20 */	addi r1, r1, 0x20
/* 8045AE94  4E 80 00 20 */	blr 
