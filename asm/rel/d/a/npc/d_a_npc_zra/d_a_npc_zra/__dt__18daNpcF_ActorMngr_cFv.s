lbl_80B7EDF0:
/* 80B7EDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EDF4  7C 08 02 A6 */	mflr r0
/* 80B7EDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7EE00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7EE04  41 82 00 1C */	beq lbl_80B7EE20
/* 80B7EE08  3C A0 80 B9 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80B7EE0C  38 05 D9 D4 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80B7EE10  90 1F 00 04 */	stw r0, 4(r31)
/* 80B7EE14  7C 80 07 35 */	extsh. r0, r4
/* 80B7EE18  40 81 00 08 */	ble lbl_80B7EE20
/* 80B7EE1C  4B 74 FF 20 */	b __dl__FPv
lbl_80B7EE20:
/* 80B7EE20  7F E3 FB 78 */	mr r3, r31
/* 80B7EE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7EE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EE2C  7C 08 03 A6 */	mtlr r0
/* 80B7EE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EE34  4E 80 00 20 */	blr 
