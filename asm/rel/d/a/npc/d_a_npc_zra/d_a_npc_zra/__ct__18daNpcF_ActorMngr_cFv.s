lbl_80B7EE38:
/* 80B7EE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EE3C  7C 08 02 A6 */	mflr r0
/* 80B7EE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7EE48  7C 7F 1B 78 */	mr r31, r3
/* 80B7EE4C  3C 80 80 B9 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B8D9D4@ha */
/* 80B7EE50  38 04 D9 D4 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80B8D9D4@l */
/* 80B7EE54  90 03 00 04 */	stw r0, 4(r3)
/* 80B7EE58  4B 5D 18 59 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B7EE5C  7F E3 FB 78 */	mr r3, r31
/* 80B7EE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7EE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EE68  7C 08 03 A6 */	mtlr r0
/* 80B7EE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EE70  4E 80 00 20 */	blr 
