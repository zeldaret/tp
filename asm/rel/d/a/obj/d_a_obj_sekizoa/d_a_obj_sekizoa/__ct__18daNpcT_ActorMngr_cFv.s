lbl_80CD4CD8:
/* 80CD4CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4CDC  7C 08 02 A6 */	mflr r0
/* 80CD4CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4CE8  7C 7F 1B 78 */	mr r31, r3
/* 80CD4CEC  3C 80 80 CD */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80CD4CF0  38 04 67 CC */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80CD4CF4  90 03 00 04 */	stw r0, 4(r3)
/* 80CD4CF8  4B 47 09 DC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80CD4CFC  7F E3 FB 78 */	mr r3, r31
/* 80CD4D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4D08  7C 08 03 A6 */	mtlr r0
/* 80CD4D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4D10  4E 80 00 20 */	blr 
