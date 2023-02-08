lbl_80990F14:
/* 80990F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990F18  7C 08 02 A6 */	mflr r0
/* 80990F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990F24  7C 7F 1B 78 */	mr r31, r3
/* 80990F28  3C 80 80 99 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809923C8@ha */
/* 80990F2C  38 04 23 C8 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809923C8@l */
/* 80990F30  90 03 00 04 */	stw r0, 4(r3)
/* 80990F34  4B 7B F7 7D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80990F38  7F E3 FB 78 */	mr r3, r31
/* 80990F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990F44  7C 08 03 A6 */	mtlr r0
/* 80990F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80990F4C  4E 80 00 20 */	blr 
