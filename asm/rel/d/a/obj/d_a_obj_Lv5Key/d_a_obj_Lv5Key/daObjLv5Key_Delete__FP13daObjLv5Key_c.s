lbl_80B9BD0C:
/* 80B9BD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9BD10  7C 08 02 A6 */	mflr r0
/* 80B9BD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9BD18  48 00 07 E9 */	bl Delete__13daObjLv5Key_cFv
/* 80B9BD1C  38 60 00 01 */	li r3, 1
/* 80B9BD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9BD24  7C 08 03 A6 */	mtlr r0
/* 80B9BD28  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9BD2C  4E 80 00 20 */	blr 
