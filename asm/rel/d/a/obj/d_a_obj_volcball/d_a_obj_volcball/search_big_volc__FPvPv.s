lbl_80D21B50:
/* 80D21B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21B54  7C 08 02 A6 */	mflr r0
/* 80D21B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21B60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D21B64  41 82 00 24 */	beq lbl_80D21B88
/* 80D21B68  4B 2F 71 79 */	bl fopAc_IsActor__FPv
/* 80D21B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D21B70  41 82 00 18 */	beq lbl_80D21B88
/* 80D21B74  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80D21B78  2C 00 00 E1 */	cmpwi r0, 0xe1
/* 80D21B7C  40 82 00 0C */	bne lbl_80D21B88
/* 80D21B80  7F E3 FB 78 */	mr r3, r31
/* 80D21B84  48 00 00 08 */	b lbl_80D21B8C
lbl_80D21B88:
/* 80D21B88  38 60 00 00 */	li r3, 0
lbl_80D21B8C:
/* 80D21B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21B94  7C 08 03 A6 */	mtlr r0
/* 80D21B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21B9C  4E 80 00 20 */	blr 
