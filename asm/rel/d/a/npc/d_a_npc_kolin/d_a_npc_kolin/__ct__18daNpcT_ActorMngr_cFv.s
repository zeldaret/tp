lbl_80559644:
/* 80559644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559648  7C 08 02 A6 */	mflr r0
/* 8055964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559654  7C 7F 1B 78 */	mr r31, r3
/* 80559658  3C 80 80 56 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x8055B2B8@ha */
/* 8055965C  38 04 B2 B8 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x8055B2B8@l */
/* 80559660  90 03 00 04 */	stw r0, 4(r3)
/* 80559664  4B BE C0 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80559668  7F E3 FB 78 */	mr r3, r31
/* 8055966C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559674  7C 08 03 A6 */	mtlr r0
/* 80559678  38 21 00 10 */	addi r1, r1, 0x10
/* 8055967C  4E 80 00 20 */	blr 
