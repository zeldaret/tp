lbl_80A135A0:
/* 80A135A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A135A4  7C 08 02 A6 */	mflr r0
/* 80A135A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A135AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A135B0  7C 7F 1B 78 */	mr r31, r3
/* 80A135B4  3C 80 80 A1 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 80A135B8  38 04 45 B4 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 80A135BC  90 03 00 04 */	stw r0, 4(r3)
/* 80A135C0  4B 73 D0 F0 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80A135C4  7F E3 FB 78 */	mr r3, r31
/* 80A135C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A135CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A135D0  7C 08 03 A6 */	mtlr r0
/* 80A135D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A135D8  4E 80 00 20 */	blr 
