lbl_80284B5C:
/* 80284B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284B60  7C 08 02 A6 */	mflr r0
/* 80284B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284B6C  83 E4 00 00 */	lwz r31, 0(r4)
/* 80284B70  38 1F 00 10 */	addi r0, r31, 0x10
/* 80284B74  90 04 00 00 */	stw r0, 0(r4)
/* 80284B78  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80284B7C  90 05 00 00 */	stw r0, 0(r5)
/* 80284B80  7F E3 FB 78 */	mr r3, r31
/* 80284B84  38 82 BA 50 */	la r4, ga4cSignature__Q37JStudio3fvb4data(r2) /* 80455450-_SDA2_BASE_ */
/* 80284B88  38 A0 00 04 */	li r5, 4
/* 80284B8C  48 0E 15 01 */	bl memcmp
/* 80284B90  2C 03 00 00 */	cmpwi r3, 0
/* 80284B94  41 82 00 0C */	beq lbl_80284BA0
/* 80284B98  38 60 00 00 */	li r3, 0
/* 80284B9C  48 00 00 40 */	b lbl_80284BDC
lbl_80284BA0:
/* 80284BA0  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80284BA4  28 00 FE FF */	cmplwi r0, 0xfeff
/* 80284BA8  41 82 00 0C */	beq lbl_80284BB4
/* 80284BAC  38 60 00 00 */	li r3, 0
/* 80284BB0  48 00 00 2C */	b lbl_80284BDC
lbl_80284BB4:
/* 80284BB4  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80284BB8  28 00 00 02 */	cmplwi r0, 2
/* 80284BBC  40 80 00 0C */	bge lbl_80284BC8
/* 80284BC0  38 60 00 00 */	li r3, 0
/* 80284BC4  48 00 00 18 */	b lbl_80284BDC
lbl_80284BC8:
/* 80284BC8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80284BCC  38 00 01 00 */	li r0, 0x100
/* 80284BD0  38 60 FF FF */	li r3, -1
/* 80284BD4  7C 04 00 10 */	subfc r0, r4, r0
/* 80284BD8  7C 63 01 90 */	subfze r3, r3
lbl_80284BDC:
/* 80284BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284BE4  7C 08 03 A6 */	mtlr r0
/* 80284BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80284BEC  4E 80 00 20 */	blr 
