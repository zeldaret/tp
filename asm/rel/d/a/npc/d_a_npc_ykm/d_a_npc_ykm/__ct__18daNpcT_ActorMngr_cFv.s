lbl_80B5C720:
/* 80B5C720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C724  7C 08 02 A6 */	mflr r0
/* 80B5C728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C730  7C 7F 1B 78 */	mr r31, r3
/* 80B5C734  3C 80 80 B6 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80B5C738  38 04 EC 14 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80B5C73C  90 03 00 04 */	stw r0, 4(r3)
/* 80B5C740  4B 5E 8F 94 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B5C744  7F E3 FB 78 */	mr r3, r31
/* 80B5C748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C750  7C 08 03 A6 */	mtlr r0
/* 80B5C754  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C758  4E 80 00 20 */	blr 
