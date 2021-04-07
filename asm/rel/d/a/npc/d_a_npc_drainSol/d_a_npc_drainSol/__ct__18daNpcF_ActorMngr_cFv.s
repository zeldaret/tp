lbl_809AF6CC:
/* 809AF6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF6D0  7C 08 02 A6 */	mflr r0
/* 809AF6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF6D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF6DC  7C 7F 1B 78 */	mr r31, r3
/* 809AF6E0  3C 80 80 9B */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809AFC04@ha */
/* 809AF6E4  38 04 FC 04 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809AFC04@l */
/* 809AF6E8  90 03 00 04 */	stw r0, 4(r3)
/* 809AF6EC  4B 7A 0F C5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809AF6F0  7F E3 FB 78 */	mr r3, r31
/* 809AF6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF6FC  7C 08 03 A6 */	mtlr r0
/* 809AF700  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF704  4E 80 00 20 */	blr 
