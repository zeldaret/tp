lbl_80255ACC:
/* 80255ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255AD0  7C 08 02 A6 */	mflr r0
/* 80255AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255ADC  93 C1 00 08 */	stw r30, 8(r1)
/* 80255AE0  7C 7E 1B 78 */	mr r30, r3
/* 80255AE4  7C 9F 23 79 */	or. r31, r4, r4
/* 80255AE8  41 82 00 5C */	beq lbl_80255B44
/* 80255AEC  80 7F 00 08 */	lwz r3, 8(r31)
/* 80255AF0  3C 03 AF BF */	addis r0, r3, 0xafbf
/* 80255AF4  28 00 4E 32 */	cmplwi r0, 0x4e32
/* 80255AF8  40 82 00 0C */	bne lbl_80255B04
/* 80255AFC  38 00 00 FF */	li r0, 0xff
/* 80255B00  48 00 00 08 */	b lbl_80255B08
lbl_80255B04:
/* 80255B04  88 1F 00 B2 */	lbz r0, 0xb2(r31)
lbl_80255B08:
/* 80255B08  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80255B0C  98 03 00 00 */	stb r0, 0(r3)
/* 80255B10  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80255B14  38 03 00 01 */	addi r0, r3, 1
/* 80255B18  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80255B1C  7F E3 FB 78 */	mr r3, r31
/* 80255B20  48 0A 1F 6D */	bl getFirstChildPane__7J2DPaneFv
/* 80255B24  7C 64 1B 78 */	mr r4, r3
/* 80255B28  7F C3 F3 78 */	mr r3, r30
/* 80255B2C  4B FF FF A1 */	bl childPaneGetAlpha__13CPaneMgrAlphaFP7J2DPane
/* 80255B30  7F E3 FB 78 */	mr r3, r31
/* 80255B34  48 0A 1F 91 */	bl getNextChildPane__7J2DPaneFv
/* 80255B38  7C 64 1B 78 */	mr r4, r3
/* 80255B3C  7F C3 F3 78 */	mr r3, r30
/* 80255B40  4B FF FF 8D */	bl childPaneGetAlpha__13CPaneMgrAlphaFP7J2DPane
lbl_80255B44:
/* 80255B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80255B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255B50  7C 08 03 A6 */	mtlr r0
/* 80255B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80255B58  4E 80 00 20 */	blr 
