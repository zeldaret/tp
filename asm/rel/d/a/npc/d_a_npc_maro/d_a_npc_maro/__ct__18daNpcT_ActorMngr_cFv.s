lbl_805638C8:
/* 805638C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805638CC  7C 08 02 A6 */	mflr r0
/* 805638D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805638D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805638D8  7C 7F 1B 78 */	mr r31, r3
/* 805638DC  3C 80 80 56 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha /* 0x80565C80@ha */
/* 805638E0  38 04 5C 80 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l /* 0x80565C80@l */
/* 805638E4  90 03 00 04 */	stw r0, 4(r3)
/* 805638E8  4B BE 1D ED */	bl initialize__18daNpcT_ActorMngr_cFv
/* 805638EC  7F E3 FB 78 */	mr r3, r31
/* 805638F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805638F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805638F8  7C 08 03 A6 */	mtlr r0
/* 805638FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80563900  4E 80 00 20 */	blr 
