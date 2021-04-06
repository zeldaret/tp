lbl_80CC83CC:
/* 80CC83CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC83D0  7C 08 02 A6 */	mflr r0
/* 80CC83D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC83D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC83DC  7C 7F 1B 78 */	mr r31, r3
/* 80CC83E0  A0 83 06 12 */	lhz r4, 0x612(r3)
/* 80CC83E4  38 A0 00 03 */	li r5, 3
/* 80CC83E8  38 DF 06 28 */	addi r6, r31, 0x628
/* 80CC83EC  48 00 07 75 */	bl exeEmtRt__11daSCannon_cFUsiPP14JPABaseEmitter
/* 80CC83F0  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CC83F4  3C 80 80 CD */	lis r4, lit_4566@ha /* 0x80CC9214@ha */
/* 80CC83F8  C0 24 92 14 */	lfs f1, lit_4566@l(r4)  /* 0x80CC9214@l */
/* 80CC83FC  4B 66 00 31 */	bl checkPass__12J3DFrameCtrlFf
/* 80CC8400  2C 03 00 00 */	cmpwi r3, 0
/* 80CC8404  41 82 00 18 */	beq lbl_80CC841C
/* 80CC8408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC840C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC8410  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC8414  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80CC8418  4B 37 FD 65 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CC841C:
/* 80CC841C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8424  7C 08 03 A6 */	mtlr r0
/* 80CC8428  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC842C  4E 80 00 20 */	blr 
