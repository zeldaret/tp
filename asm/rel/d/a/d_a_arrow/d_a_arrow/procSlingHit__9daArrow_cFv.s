lbl_8049CE50:
/* 8049CE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CE54  7C 08 02 A6 */	mflr r0
/* 8049CE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049CE60  7C 7F 1B 78 */	mr r31, r3
/* 8049CE64  4B FF D1 59 */	bl decAlphaBlur__9daArrow_cFv
/* 8049CE68  A8 7F 09 56 */	lha r3, 0x956(r31)
/* 8049CE6C  2C 03 00 00 */	cmpwi r3, 0
/* 8049CE70  41 82 00 10 */	beq lbl_8049CE80
/* 8049CE74  38 03 FF FF */	addi r0, r3, -1
/* 8049CE78  B0 1F 09 56 */	sth r0, 0x956(r31)
/* 8049CE7C  48 00 00 0C */	b lbl_8049CE88
lbl_8049CE80:
/* 8049CE80  38 00 00 01 */	li r0, 1
/* 8049CE84  98 1F 09 3F */	stb r0, 0x93f(r31)
lbl_8049CE88:
/* 8049CE88  38 60 00 01 */	li r3, 1
/* 8049CE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049CE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CE94  7C 08 03 A6 */	mtlr r0
/* 8049CE98  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CE9C  4E 80 00 20 */	blr 
