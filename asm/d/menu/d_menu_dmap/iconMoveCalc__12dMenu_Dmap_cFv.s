lbl_801BD208:
/* 801BD208  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801BD20C  7C 08 02 A6 */	mflr r0
/* 801BD210  90 01 00 74 */	stw r0, 0x74(r1)
/* 801BD214  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801BD218  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 801BD21C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801BD220  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801BD224  7C 7F 1B 78 */	mr r31, r3
/* 801BD228  88 03 01 71 */	lbz r0, 0x171(r3)
/* 801BD22C  7C 03 07 74 */	extsb r3, r0
/* 801BD230  88 1F 01 72 */	lbz r0, 0x172(r31)
/* 801BD234  7C 00 07 74 */	extsb r0, r0
/* 801BD238  7F C3 00 50 */	subf r30, r3, r0
/* 801BD23C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801BD240  48 09 83 89 */	bl show__13CPaneMgrAlphaFv
/* 801BD244  80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 801BD248  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 801BD24C  90 61 00 44 */	stw r3, 0x44(r1)
/* 801BD250  90 01 00 48 */	stw r0, 0x48(r1)
/* 801BD254  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 801BD258  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801BD25C  57 DE 10 3A */	slwi r30, r30, 2
/* 801BD260  7C 7F F2 14 */	add r3, r31, r30
/* 801BD264  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801BD268  38 61 00 14 */	addi r3, r1, 0x14
/* 801BD26C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BD270  38 C0 00 00 */	li r6, 0
/* 801BD274  38 E0 00 00 */	li r7, 0
/* 801BD278  48 09 7C 45 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BD27C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801BD280  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BD284  90 61 00 38 */	stw r3, 0x38(r1)
/* 801BD288  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801BD28C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801BD290  90 01 00 40 */	stw r0, 0x40(r1)
/* 801BD294  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801BD298  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801BD29C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801BD2A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801BD2A4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 801BD2A8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801BD2AC  EC 42 00 28 */	fsubs f2, f2, f0
/* 801BD2B0  48 09 73 01 */	bl paneTrans__8CPaneMgrFff
/* 801BD2B4  7C 7F F2 14 */	add r3, r31, r30
/* 801BD2B8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BD2BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BD2C0  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 801BD2C4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 801BD2C8  80 63 00 04 */	lwz r3, 4(r3)
/* 801BD2CC  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801BD2D0  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801BD2D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD2D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BD2DC  7D 89 03 A6 */	mtctr r12
/* 801BD2E0  4E 80 04 21 */	bctrl 
/* 801BD2E4  88 1F 01 73 */	lbz r0, 0x173(r31)
/* 801BD2E8  7C 03 07 74 */	extsb r3, r0
/* 801BD2EC  2C 03 FF 9D */	cmpwi r3, -99
/* 801BD2F0  41 82 00 A8 */	beq lbl_801BD398
/* 801BD2F4  88 1F 01 71 */	lbz r0, 0x171(r31)
/* 801BD2F8  7C 00 07 74 */	extsb r0, r0
/* 801BD2FC  7F C0 18 50 */	subf r30, r0, r3
/* 801BD300  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801BD304  48 09 82 C5 */	bl show__13CPaneMgrAlphaFv
/* 801BD308  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801BD30C  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 801BD310  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801BD314  90 01 00 30 */	stw r0, 0x30(r1)
/* 801BD318  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 801BD31C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BD320  57 C0 10 3A */	slwi r0, r30, 2
/* 801BD324  7C 7F 02 14 */	add r3, r31, r0
/* 801BD328  80 83 00 54 */	lwz r4, 0x54(r3)
/* 801BD32C  38 61 00 08 */	addi r3, r1, 8
/* 801BD330  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BD334  38 C0 00 00 */	li r6, 0
/* 801BD338  38 E0 00 00 */	li r7, 0
/* 801BD33C  48 09 7B 81 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BD340  80 61 00 08 */	lwz r3, 8(r1)
/* 801BD344  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BD348  90 61 00 20 */	stw r3, 0x20(r1)
/* 801BD34C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BD350  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BD354  90 01 00 28 */	stw r0, 0x28(r1)
/* 801BD358  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801BD35C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801BD360  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801BD364  EC 21 00 28 */	fsubs f1, f1, f0
/* 801BD368  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801BD36C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801BD370  EC 42 00 28 */	fsubs f2, f2, f0
/* 801BD374  48 09 72 3D */	bl paneTrans__8CPaneMgrFff
/* 801BD378  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 801BD37C  80 63 00 04 */	lwz r3, 4(r3)
/* 801BD380  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801BD384  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801BD388  81 83 00 00 */	lwz r12, 0(r3)
/* 801BD38C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BD390  7D 89 03 A6 */	mtctr r12
/* 801BD394  4E 80 04 21 */	bctrl 
lbl_801BD398:
/* 801BD398  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 801BD39C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801BD3A0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801BD3A4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801BD3A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801BD3AC  7C 08 03 A6 */	mtlr r0
/* 801BD3B0  38 21 00 70 */	addi r1, r1, 0x70
/* 801BD3B4  4E 80 00 20 */	blr 
