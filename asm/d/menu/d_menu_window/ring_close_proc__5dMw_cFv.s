lbl_801FB064:
/* 801FB064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB068  7C 08 02 A6 */	mflr r0
/* 801FB06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB074  7C 7F 1B 78 */	mr r31, r3
/* 801FB078  80 63 01 10 */	lwz r3, 0x110(r3)
/* 801FB07C  4B FF 03 51 */	bl isClose__12dMenu_Ring_cFv
/* 801FB080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB084  41 82 00 20 */	beq lbl_801FB0A4
/* 801FB088  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FB08C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FB090  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 801FB094  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801FB098  B0 03 00 98 */	sth r0, 0x98(r3)
/* 801FB09C  38 00 00 00 */	li r0, 0
/* 801FB0A0  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB0A4:
/* 801FB0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB0AC  7C 08 03 A6 */	mtlr r0
/* 801FB0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB0B4  4E 80 00 20 */	blr 
