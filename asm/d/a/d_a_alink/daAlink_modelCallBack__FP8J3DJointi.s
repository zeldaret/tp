lbl_8009EC28:
/* 8009EC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EC2C  7C 08 02 A6 */	mflr r0
/* 8009EC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EC34  A0 A3 00 14 */	lhz r5, 0x14(r3)
/* 8009EC38  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8009EC3C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8009EC40  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009EC44  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009EC48  2C 04 00 00 */	cmpwi r4, 0
/* 8009EC4C  40 82 00 10 */	bne lbl_8009EC5C
/* 8009EC50  7C A4 2B 78 */	mr r4, r5
/* 8009EC54  4B FF FF 05 */	bl modelCallBack__9daAlink_cFi
/* 8009EC58  48 00 00 34 */	b lbl_8009EC8C
lbl_8009EC5C:
/* 8009EC5C  2C 04 00 01 */	cmpwi r4, 1
/* 8009EC60  40 82 00 2C */	bne lbl_8009EC8C
/* 8009EC64  38 80 00 00 */	li r4, 0
/* 8009EC68  88 03 2F 90 */	lbz r0, 0x2f90(r3)
/* 8009EC6C  28 00 00 00 */	cmplwi r0, 0
/* 8009EC70  41 82 00 10 */	beq lbl_8009EC80
/* 8009EC74  2C 05 00 01 */	cmpwi r5, 1
/* 8009EC78  40 82 00 08 */	bne lbl_8009EC80
/* 8009EC7C  38 80 00 01 */	li r4, 1
lbl_8009EC80:
/* 8009EC80  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8009EC84  41 82 00 08 */	beq lbl_8009EC8C
/* 8009EC88  4B FF FE 91 */	bl resetRootMtx__9daAlink_cFv
lbl_8009EC8C:
/* 8009EC8C  38 60 00 01 */	li r3, 1
/* 8009EC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EC94  7C 08 03 A6 */	mtlr r0
/* 8009EC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EC9C  4E 80 00 20 */	blr 
