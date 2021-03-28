lbl_8049CC60:
/* 8049CC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CC64  7C 08 02 A6 */	mflr r0
/* 8049CC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049CC70  7C 7F 1B 78 */	mr r31, r3
/* 8049CC74  4B FF D3 49 */	bl decAlphaBlur__9daArrow_cFv
/* 8049CC78  7F E3 FB 78 */	mr r3, r31
/* 8049CC7C  4B FF E4 A5 */	bl setStopActorMatrix__9daArrow_cFv
/* 8049CC80  88 1F 09 44 */	lbz r0, 0x944(r31)
/* 8049CC84  28 00 00 00 */	cmplwi r0, 0
/* 8049CC88  40 82 00 0C */	bne lbl_8049CC94
/* 8049CC8C  28 03 00 00 */	cmplwi r3, 0
/* 8049CC90  40 82 00 10 */	bne lbl_8049CCA0
lbl_8049CC94:
/* 8049CC94  38 00 00 01 */	li r0, 1
/* 8049CC98  98 1F 09 3F */	stb r0, 0x93f(r31)
/* 8049CC9C  48 00 00 18 */	b lbl_8049CCB4
lbl_8049CCA0:
/* 8049CCA0  88 03 04 96 */	lbz r0, 0x496(r3)
/* 8049CCA4  28 00 00 04 */	cmplwi r0, 4
/* 8049CCA8  41 82 00 0C */	beq lbl_8049CCB4
/* 8049CCAC  7F E3 FB 78 */	mr r3, r31
/* 8049CCB0  4B FF E6 C1 */	bl checkReget__9daArrow_cFv
lbl_8049CCB4:
/* 8049CCB4  38 60 00 01 */	li r3, 1
/* 8049CCB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049CCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CCC0  7C 08 03 A6 */	mtlr r0
/* 8049CCC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CCC8  4E 80 00 20 */	blr 
