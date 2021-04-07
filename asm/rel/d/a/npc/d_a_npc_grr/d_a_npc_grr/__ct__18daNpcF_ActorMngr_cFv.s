lbl_809E3068:
/* 809E3068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E306C  7C 08 02 A6 */	mflr r0
/* 809E3070  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E3074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E3078  7C 7F 1B 78 */	mr r31, r3
/* 809E307C  3C 80 80 9E */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E3EB0@ha */
/* 809E3080  38 04 3E B0 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809E3EB0@l */
/* 809E3084  90 03 00 04 */	stw r0, 4(r3)
/* 809E3088  4B 76 D6 29 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809E308C  7F E3 FB 78 */	mr r3, r31
/* 809E3090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E3094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E3098  7C 08 03 A6 */	mtlr r0
/* 809E309C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E30A0  4E 80 00 20 */	blr 
