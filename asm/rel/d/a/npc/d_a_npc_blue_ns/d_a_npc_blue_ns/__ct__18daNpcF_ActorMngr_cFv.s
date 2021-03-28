lbl_8096BFD8:
/* 8096BFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BFDC  7C 08 02 A6 */	mflr r0
/* 8096BFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096BFE8  7C 7F 1B 78 */	mr r31, r3
/* 8096BFEC  3C 80 80 97 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 8096BFF0  38 04 CE 44 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 8096BFF4  90 03 00 04 */	stw r0, 4(r3)
/* 8096BFF8  4B 7E 46 B8 */	b initialize__18daNpcF_ActorMngr_cFv
/* 8096BFFC  7F E3 FB 78 */	mr r3, r31
/* 8096C000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C008  7C 08 03 A6 */	mtlr r0
/* 8096C00C  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C010  4E 80 00 20 */	blr 
