lbl_80552630:
/* 80552630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552634  7C 08 02 A6 */	mflr r0
/* 80552638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055263C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552640  7C 7F 1B 78 */	mr r31, r3
/* 80552644  3C 80 80 55 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80552648  38 04 3D CC */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 8055264C  90 03 00 04 */	stw r0, 4(r3)
/* 80552650  4B BF 30 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80552654  7F E3 FB 78 */	mr r3, r31
/* 80552658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055265C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552660  7C 08 03 A6 */	mtlr r0
/* 80552664  38 21 00 10 */	addi r1, r1, 0x10
/* 80552668  4E 80 00 20 */	blr 
