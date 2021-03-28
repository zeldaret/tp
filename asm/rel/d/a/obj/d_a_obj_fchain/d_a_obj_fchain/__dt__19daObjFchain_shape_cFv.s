lbl_80BE73D4:
/* 80BE73D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE73D8  7C 08 02 A6 */	mflr r0
/* 80BE73DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE73E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE73E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE73E8  41 82 00 30 */	beq lbl_80BE7418
/* 80BE73EC  3C 60 80 BE */	lis r3, __vt__19daObjFchain_shape_c@ha
/* 80BE73F0  38 03 75 28 */	addi r0, r3, __vt__19daObjFchain_shape_c@l
/* 80BE73F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE73F8  41 82 00 10 */	beq lbl_80BE7408
/* 80BE73FC  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80BE7400  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80BE7404  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BE7408:
/* 80BE7408  7C 80 07 35 */	extsh. r0, r4
/* 80BE740C  40 81 00 0C */	ble lbl_80BE7418
/* 80BE7410  7F E3 FB 78 */	mr r3, r31
/* 80BE7414  4B 6E 79 28 */	b __dl__FPv
lbl_80BE7418:
/* 80BE7418  7F E3 FB 78 */	mr r3, r31
/* 80BE741C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE7420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7424  7C 08 03 A6 */	mtlr r0
/* 80BE7428  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE742C  4E 80 00 20 */	blr 
