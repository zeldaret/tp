lbl_805706B8:
/* 805706B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805706BC  7C 08 02 A6 */	mflr r0
/* 805706C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805706C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805706C8  7C 7F 1B 78 */	mr r31, r3
/* 805706CC  3C 80 80 57 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80573458@ha */
/* 805706D0  38 04 34 58 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80573458@l */
/* 805706D4  90 03 00 04 */	stw r0, 4(r3)
/* 805706D8  4B BD 4F FD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 805706DC  7F E3 FB 78 */	mr r3, r31
/* 805706E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805706E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805706E8  7C 08 03 A6 */	mtlr r0
/* 805706EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805706F0  4E 80 00 20 */	blr 
