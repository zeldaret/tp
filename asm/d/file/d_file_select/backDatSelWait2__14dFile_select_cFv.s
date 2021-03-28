lbl_8018AD38:
/* 8018AD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018AD3C  7C 08 02 A6 */	mflr r0
/* 8018AD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018AD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018AD48  7C 7F 1B 78 */	mr r31, r3
/* 8018AD4C  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 8018AD50  2C 03 00 00 */	cmpwi r3, 0
/* 8018AD54  41 82 00 0C */	beq lbl_8018AD60
/* 8018AD58  38 03 FF FF */	addi r0, r3, -1
/* 8018AD5C  B0 1F 03 AC */	sth r0, 0x3ac(r31)
lbl_8018AD60:
/* 8018AD60  38 60 00 00 */	li r3, 0
/* 8018AD64  48 0D 85 49 */	bl cAPICPad_ANY_BUTTON__FUl
/* 8018AD68  28 03 00 00 */	cmplwi r3, 0
/* 8018AD6C  40 82 00 10 */	bne lbl_8018AD7C
/* 8018AD70  A8 1F 03 AC */	lha r0, 0x3ac(r31)
/* 8018AD74  2C 00 00 00 */	cmpwi r0, 0
/* 8018AD78  40 82 00 10 */	bne lbl_8018AD88
lbl_8018AD7C:
/* 8018AD7C  38 00 00 00 */	li r0, 0
/* 8018AD80  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018AD84  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018AD88:
/* 8018AD88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018AD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018AD90  7C 08 03 A6 */	mtlr r0
/* 8018AD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8018AD98  4E 80 00 20 */	blr 
