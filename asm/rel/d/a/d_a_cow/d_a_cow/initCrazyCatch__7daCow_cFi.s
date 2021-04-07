lbl_8065E7D0:
/* 8065E7D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065E7D4  7C 08 02 A6 */	mflr r0
/* 8065E7D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065E7DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8065E7E0  4B D0 39 F9 */	bl _savegpr_28
/* 8065E7E4  7C 7C 1B 78 */	mr r28, r3
/* 8065E7E8  3C 80 80 66 */	lis r4, lit_3987@ha /* 0x80662DB0@ha */
/* 8065E7EC  3B C4 2D B0 */	addi r30, r4, lit_3987@l /* 0x80662DB0@l */
/* 8065E7F0  38 80 00 17 */	li r4, 0x17
/* 8065E7F4  38 A0 00 00 */	li r5, 0
/* 8065E7F8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065E7FC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8065E800  4B FF 9F 31 */	bl setBck__7daCow_cFiUcff
/* 8065E804  38 00 00 03 */	li r0, 3
/* 8065E808  98 1C 0C 9F */	stb r0, 0xc9f(r28)
/* 8065E80C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065E810  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8065E814  38 00 00 00 */	li r0, 0
/* 8065E818  B0 1C 0C 42 */	sth r0, 0xc42(r28)
/* 8065E81C  98 1C 0C 60 */	stb r0, 0xc60(r28)
/* 8065E820  7F 83 E3 78 */	mr r3, r28
/* 8065E824  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8065E828  38 80 00 01 */	li r4, 1
/* 8065E82C  4B FF F3 DD */	bl calcCatchPos__7daCow_cFfi
/* 8065E830  3B A0 00 00 */	li r29, 0
/* 8065E834  3B E0 00 00 */	li r31, 0
lbl_8065E838:
/* 8065E838  38 7F 08 8C */	addi r3, r31, 0x88c
/* 8065E83C  7C 1C 18 2E */	lwzx r0, r28, r3
/* 8065E840  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065E844  7C 1C 19 2E */	stwx r0, r28, r3
/* 8065E848  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 8065E84C  4B C0 51 11 */	bl ClrCcMove__9cCcD_SttsFv
/* 8065E850  3B BD 00 01 */	addi r29, r29, 1
/* 8065E854  2C 1D 00 03 */	cmpwi r29, 3
/* 8065E858  3B FF 01 38 */	addi r31, r31, 0x138
/* 8065E85C  41 80 FF DC */	blt lbl_8065E838
/* 8065E860  38 00 00 01 */	li r0, 1
/* 8065E864  98 1C 0C 63 */	stb r0, 0xc63(r28)
/* 8065E868  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065E86C  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 8065E870  39 61 00 20 */	addi r11, r1, 0x20
/* 8065E874  4B D0 39 B1 */	bl _restgpr_28
/* 8065E878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065E87C  7C 08 03 A6 */	mtlr r0
/* 8065E880  38 21 00 20 */	addi r1, r1, 0x20
/* 8065E884  4E 80 00 20 */	blr 
