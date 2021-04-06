lbl_80AF5230:
/* 80AF5230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5234  7C 08 02 A6 */	mflr r0
/* 80AF5238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF523C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5240  7C 7F 1B 78 */	mr r31, r3
/* 80AF5244  3C 80 80 AF */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AF5DE8@ha */
/* 80AF5248  38 04 5D E8 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80AF5DE8@l */
/* 80AF524C  90 03 00 04 */	stw r0, 4(r3)
/* 80AF5250  4B 65 B4 61 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AF5254  7F E3 FB 78 */	mr r3, r31
/* 80AF5258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5260  7C 08 03 A6 */	mtlr r0
/* 80AF5264  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5268  4E 80 00 20 */	blr 
