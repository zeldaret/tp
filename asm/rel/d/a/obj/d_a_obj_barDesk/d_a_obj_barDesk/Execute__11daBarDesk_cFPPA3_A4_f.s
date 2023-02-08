lbl_80BA95A4:
/* 80BA95A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA95A8  7C 08 02 A6 */	mflr r0
/* 80BA95AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA95B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA95B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA95B8  7C 7E 1B 78 */	mr r30, r3
/* 80BA95BC  7C 9F 23 78 */	mr r31, r4
/* 80BA95C0  48 00 00 35 */	bl windowProc__11daBarDesk_cFv
/* 80BA95C4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BA95C8  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA95CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA95D0  7F C3 F3 78 */	mr r3, r30
/* 80BA95D4  4B FF FC 2D */	bl setBaseMtx__11daBarDesk_cFv
/* 80BA95D8  38 60 00 01 */	li r3, 1
/* 80BA95DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA95E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA95E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA95E8  7C 08 03 A6 */	mtlr r0
/* 80BA95EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA95F0  4E 80 00 20 */	blr 
