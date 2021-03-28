lbl_809618DC:
/* 809618DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809618E0  7C 08 02 A6 */	mflr r0
/* 809618E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809618E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809618EC  7C 7F 1B 78 */	mr r31, r3
/* 809618F0  3C 80 80 96 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha
/* 809618F4  38 04 27 78 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l
/* 809618F8  90 03 00 04 */	stw r0, 4(r3)
/* 809618FC  4B 7E ED B4 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80961900  7F E3 FB 78 */	mr r3, r31
/* 80961904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80961908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096190C  7C 08 03 A6 */	mtlr r0
/* 80961910  38 21 00 10 */	addi r1, r1, 0x10
/* 80961914  4E 80 00 20 */	blr 
