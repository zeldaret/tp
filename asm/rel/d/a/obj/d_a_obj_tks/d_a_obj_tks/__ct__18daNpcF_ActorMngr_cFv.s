lbl_80D124C0:
/* 80D124C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D124C4  7C 08 02 A6 */	mflr r0
/* 80D124C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D124CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D124D0  7C 7F 1B 78 */	mr r31, r3
/* 80D124D4  3C 80 80 D1 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80D12AB4@ha */
/* 80D124D8  38 04 2A B4 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80D12AB4@l */
/* 80D124DC  90 03 00 04 */	stw r0, 4(r3)
/* 80D124E0  4B 43 E1 D1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80D124E4  7F E3 FB 78 */	mr r3, r31
/* 80D124E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D124EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D124F0  7C 08 03 A6 */	mtlr r0
/* 80D124F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D124F8  4E 80 00 20 */	blr 
