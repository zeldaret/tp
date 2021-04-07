lbl_80B9BE24:
/* 80B9BE24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B9BE28  7C 08 02 A6 */	mflr r0
/* 80B9BE2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9BE30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B9BE34  7C 7F 1B 78 */	mr r31, r3
/* 80B9BE38  A8 03 09 54 */	lha r0, 0x954(r3)
/* 80B9BE3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B9BE40  41 82 00 18 */	beq lbl_80B9BE58
/* 80B9BE44  40 80 00 08 */	bge lbl_80B9BE4C
/* 80B9BE48  48 00 00 AC */	b lbl_80B9BEF4
lbl_80B9BE4C:
/* 80B9BE4C  2C 00 00 02 */	cmpwi r0, 2
/* 80B9BE50  40 80 00 A4 */	bge lbl_80B9BEF4
/* 80B9BE54  48 00 00 24 */	b lbl_80B9BE78
lbl_80B9BE58:
/* 80B9BE58  38 00 00 00 */	li r0, 0
/* 80B9BE5C  98 1F 09 45 */	stb r0, 0x945(r31)
/* 80B9BE60  3C 60 80 BA */	lis r3, lit_3773@ha /* 0x80B9C93C@ha */
/* 80B9BE64  C0 03 C9 3C */	lfs f0, lit_3773@l(r3)  /* 0x80B9C93C@l */
/* 80B9BE68  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 80B9BE6C  38 00 00 01 */	li r0, 1
/* 80B9BE70  B0 1F 09 54 */	sth r0, 0x954(r31)
/* 80B9BE74  48 00 00 80 */	b lbl_80B9BEF4
lbl_80B9BE78:
/* 80B9BE78  88 1F 09 45 */	lbz r0, 0x945(r31)
/* 80B9BE7C  7C 00 07 74 */	extsb r0, r0
/* 80B9BE80  2C 00 00 02 */	cmpwi r0, 2
/* 80B9BE84  40 82 00 3C */	bne lbl_80B9BEC0
/* 80B9BE88  4B FF FC D5 */	bl setBgc__13daObjLv5Key_cFv
/* 80B9BE8C  3C 60 80 BA */	lis r3, lit_3837@ha /* 0x80B9C9C4@ha */
/* 80B9BE90  38 83 C9 C4 */	addi r4, r3, lit_3837@l /* 0x80B9C9C4@l */
/* 80B9BE94  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9BE98  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9BE9C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B9BEA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B9BEA4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9BEA8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B9BEAC  7F E3 FB 78 */	mr r3, r31
/* 80B9BEB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80B9BEB4  38 A0 00 01 */	li r5, 1
/* 80B9BEB8  4B FF FE 79 */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
/* 80B9BEBC  48 00 00 38 */	b lbl_80B9BEF4
lbl_80B9BEC0:
/* 80B9BEC0  2C 00 00 01 */	cmpwi r0, 1
/* 80B9BEC4  40 82 00 30 */	bne lbl_80B9BEF4
/* 80B9BEC8  3C 80 80 BA */	lis r4, lit_3842@ha /* 0x80B9C9D0@ha */
/* 80B9BECC  38 A4 C9 D0 */	addi r5, r4, lit_3842@l /* 0x80B9C9D0@l */
/* 80B9BED0  80 85 00 00 */	lwz r4, 0(r5)
/* 80B9BED4  80 05 00 04 */	lwz r0, 4(r5)
/* 80B9BED8  90 81 00 08 */	stw r4, 8(r1)
/* 80B9BEDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9BEE0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B9BEE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9BEE8  38 81 00 08 */	addi r4, r1, 8
/* 80B9BEEC  38 A0 00 01 */	li r5, 1
/* 80B9BEF0  4B FF FE 41 */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
lbl_80B9BEF4:
/* 80B9BEF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B9BEF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9BEFC  7C 08 03 A6 */	mtlr r0
/* 80B9BF00  38 21 00 30 */	addi r1, r1, 0x30
/* 80B9BF04  4E 80 00 20 */	blr 
