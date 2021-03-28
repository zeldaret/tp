lbl_80AF1E28:
/* 80AF1E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1E2C  7C 08 02 A6 */	mflr r0
/* 80AF1E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1E38  7C 7F 1B 78 */	mr r31, r3
/* 80AF1E3C  3C 80 80 AF */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 80AF1E40  38 04 2A A8 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 80AF1E44  90 03 00 04 */	stw r0, 4(r3)
/* 80AF1E48  4B 65 E8 68 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AF1E4C  7F E3 FB 78 */	mr r3, r31
/* 80AF1E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1E58  7C 08 03 A6 */	mtlr r0
/* 80AF1E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1E60  4E 80 00 20 */	blr 
