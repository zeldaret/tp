lbl_8059F394:
/* 8059F394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F398  7C 08 02 A6 */	mflr r0
/* 8059F39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F3A4  7C 7F 1B 78 */	mr r31, r3
/* 8059F3A8  4B FF F6 11 */	bl getShopArcname__12daShopItem_cFv
/* 8059F3AC  7C 64 1B 78 */	mr r4, r3
/* 8059F3B0  7F E3 FB 78 */	mr r3, r31
/* 8059F3B4  4B BA 53 71 */	bl DeleteBase__12daItemBase_cFPCc
/* 8059F3B8  38 60 00 01 */	li r3, 1
/* 8059F3BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F3C4  7C 08 03 A6 */	mtlr r0
/* 8059F3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F3CC  4E 80 00 20 */	blr 
