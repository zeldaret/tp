lbl_80D313F8:
/* 80D313F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D313FC  7C 08 02 A6 */	mflr r0
/* 80D31400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31404  4B FF FC A9 */	bl execute__13daObjWchain_cFv
/* 80D31408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3140C  7C 08 03 A6 */	mtlr r0
/* 80D31410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31414  4E 80 00 20 */	blr 
