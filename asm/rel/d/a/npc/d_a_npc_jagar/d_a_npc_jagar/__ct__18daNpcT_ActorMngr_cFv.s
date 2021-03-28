lbl_80A194B8:
/* 80A194B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A194BC  7C 08 02 A6 */	mflr r0
/* 80A194C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A194C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A194C8  7C 7F 1B 78 */	mr r31, r3
/* 80A194CC  3C 80 80 A2 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80A194D0  38 04 AC CC */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80A194D4  90 03 00 04 */	stw r0, 4(r3)
/* 80A194D8  4B 72 C1 FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A194DC  7F E3 FB 78 */	mr r3, r31
/* 80A194E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A194E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A194E8  7C 08 03 A6 */	mtlr r0
/* 80A194EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A194F0  4E 80 00 20 */	blr 
