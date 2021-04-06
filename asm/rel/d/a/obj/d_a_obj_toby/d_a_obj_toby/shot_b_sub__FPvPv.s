lbl_80D13A38:
/* 80D13A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13A3C  7C 08 02 A6 */	mflr r0
/* 80D13A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D13A48  7C 7F 1B 78 */	mr r31, r3
/* 80D13A4C  4B 30 52 95 */	bl fopAc_IsActor__FPv
/* 80D13A50  2C 03 00 00 */	cmpwi r3, 0
/* 80D13A54  41 82 00 50 */	beq lbl_80D13AA4
/* 80D13A58  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D13A5C  2C 00 00 FE */	cmpwi r0, 0xfe
/* 80D13A60  40 82 00 24 */	bne lbl_80D13A84
/* 80D13A64  4B 44 BE 39 */	bl checkBoomerangCharge__9daPy_py_cFv
/* 80D13A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D13A6C  41 82 00 18 */	beq lbl_80D13A84
/* 80D13A70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D13A74  28 00 00 01 */	cmplwi r0, 1
/* 80D13A78  40 82 00 0C */	bne lbl_80D13A84
/* 80D13A7C  7F E3 FB 78 */	mr r3, r31
/* 80D13A80  48 00 00 28 */	b lbl_80D13AA8
lbl_80D13A84:
/* 80D13A84  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D13A88  2C 00 02 ED */	cmpwi r0, 0x2ed
/* 80D13A8C  40 82 00 18 */	bne lbl_80D13AA4
/* 80D13A90  A8 1F 05 60 */	lha r0, 0x560(r31)
/* 80D13A94  2C 00 00 00 */	cmpwi r0, 0
/* 80D13A98  41 82 00 0C */	beq lbl_80D13AA4
/* 80D13A9C  7F E3 FB 78 */	mr r3, r31
/* 80D13AA0  48 00 00 08 */	b lbl_80D13AA8
lbl_80D13AA4:
/* 80D13AA4  38 60 00 00 */	li r3, 0
lbl_80D13AA8:
/* 80D13AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13AB0  7C 08 03 A6 */	mtlr r0
/* 80D13AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13AB8  4E 80 00 20 */	blr 
