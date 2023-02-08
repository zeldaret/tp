lbl_8046FACC:
/* 8046FACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FAD0  7C 08 02 A6 */	mflr r0
/* 8046FAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FADC  7C 7F 1B 78 */	mr r31, r3
/* 8046FAE0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046FAE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046FAE8  40 82 00 1C */	bne lbl_8046FB04
/* 8046FAEC  28 1F 00 00 */	cmplwi r31, 0
/* 8046FAF0  41 82 00 08 */	beq lbl_8046FAF8
/* 8046FAF4  48 00 00 85 */	bl __ct__12daObjCarry_cFv
lbl_8046FAF8:
/* 8046FAF8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046FAFC  60 00 00 08 */	ori r0, r0, 8
/* 8046FB00  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046FB04:
/* 8046FB04  88 1F 0D 15 */	lbz r0, 0xd15(r31)
/* 8046FB08  28 00 00 00 */	cmplwi r0, 0
/* 8046FB0C  40 82 00 48 */	bne lbl_8046FB54
/* 8046FB10  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8046FB14  B0 1F 0D 16 */	sth r0, 0xd16(r31)
/* 8046FB18  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8046FB1C  B0 1F 0D 18 */	sth r0, 0xd18(r31)
/* 8046FB20  38 00 00 00 */	li r0, 0
/* 8046FB24  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8046FB28  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 8046FB2C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8046FB30  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8046FB34  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8046FB38  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8046FB3C  A0 1F 0D 18 */	lhz r0, 0xd18(r31)
/* 8046FB40  7C 00 66 70 */	srawi r0, r0, 0xc
/* 8046FB44  38 60 00 01 */	li r3, 1
/* 8046FB48  7C 00 1B B8 */	nand r0, r0, r3
/* 8046FB4C  98 1F 0D B2 */	stb r0, 0xdb2(r31)
/* 8046FB50  98 7F 0D 15 */	stb r3, 0xd15(r31)
lbl_8046FB54:
/* 8046FB54  A0 1F 0D 18 */	lhz r0, 0xd18(r31)
/* 8046FB58  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8046FB5C  98 1F 0C F0 */	stb r0, 0xcf0(r31)
/* 8046FB60  38 60 00 01 */	li r3, 1
/* 8046FB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FB6C  7C 08 03 A6 */	mtlr r0
/* 8046FB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FB74  4E 80 00 20 */	blr 
