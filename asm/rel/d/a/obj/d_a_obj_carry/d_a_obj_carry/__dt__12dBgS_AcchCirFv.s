lbl_8046FEC4:
/* 8046FEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FEC8  7C 08 02 A6 */	mflr r0
/* 8046FECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FED4  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FED8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8046FEDC  7C 9F 23 78 */	mr r31, r4
/* 8046FEE0  41 82 00 38 */	beq lbl_8046FF18
/* 8046FEE4  3C 60 80 48 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8047B160@ha */
/* 8046FEE8  38 03 B1 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8047B160@l */
/* 8046FEEC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8046FEF0  38 7E 00 14 */	addi r3, r30, 0x14
/* 8046FEF4  38 80 FF FF */	li r4, -1
/* 8046FEF8  4B DF F0 21 */	bl __dt__8cM3dGCirFv
/* 8046FEFC  7F C3 F3 78 */	mr r3, r30
/* 8046FF00  38 80 00 00 */	li r4, 0
/* 8046FF04  4B DF 81 AD */	bl __dt__13cBgS_PolyInfoFv
/* 8046FF08  7F E0 07 35 */	extsh. r0, r31
/* 8046FF0C  40 81 00 0C */	ble lbl_8046FF18
/* 8046FF10  7F C3 F3 78 */	mr r3, r30
/* 8046FF14  4B E5 EE 29 */	bl __dl__FPv
lbl_8046FF18:
/* 8046FF18  7F C3 F3 78 */	mr r3, r30
/* 8046FF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FF20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FF28  7C 08 03 A6 */	mtlr r0
/* 8046FF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FF30  4E 80 00 20 */	blr 
