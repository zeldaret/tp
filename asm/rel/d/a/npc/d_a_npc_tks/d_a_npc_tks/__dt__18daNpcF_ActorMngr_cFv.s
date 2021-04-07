lbl_80B1D440:
/* 80B1D440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D444  7C 08 02 A6 */	mflr r0
/* 80B1D448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D450  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1D454  41 82 00 1C */	beq lbl_80B1D470
/* 80B1D458  3C A0 80 B2 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B1E500@ha */
/* 80B1D45C  38 05 E5 00 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80B1E500@l */
/* 80B1D460  90 1F 00 04 */	stw r0, 4(r31)
/* 80B1D464  7C 80 07 35 */	extsh. r0, r4
/* 80B1D468  40 81 00 08 */	ble lbl_80B1D470
/* 80B1D46C  4B 7B 18 D1 */	bl __dl__FPv
lbl_80B1D470:
/* 80B1D470  7F E3 FB 78 */	mr r3, r31
/* 80B1D474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D47C  7C 08 03 A6 */	mtlr r0
/* 80B1D480  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D484  4E 80 00 20 */	blr 
