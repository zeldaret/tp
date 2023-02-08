lbl_8070E30C:
/* 8070E30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070E310  7C 08 02 A6 */	mflr r0
/* 8070E314  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070E318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070E31C  7C 7F 1B 78 */	mr r31, r3
/* 8070E320  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070E324  2C 00 00 0A */	cmpwi r0, 0xa
/* 8070E328  41 80 00 0C */	blt lbl_8070E334
/* 8070E32C  38 60 00 00 */	li r3, 0
/* 8070E330  48 00 00 28 */	b lbl_8070E358
lbl_8070E334:
/* 8070E334  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 8070E338  4B 97 5F 89 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8070E33C  28 03 00 00 */	cmplwi r3, 0
/* 8070E340  41 82 00 14 */	beq lbl_8070E354
/* 8070E344  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 8070E348  4B 97 60 11 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 8070E34C  4B B5 56 FD */	bl GetAc__8cCcD_ObjFv
/* 8070E350  48 00 00 08 */	b lbl_8070E358
lbl_8070E354:
/* 8070E354  38 60 00 00 */	li r3, 0
lbl_8070E358:
/* 8070E358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070E35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070E360  7C 08 03 A6 */	mtlr r0
/* 8070E364  38 21 00 10 */	addi r1, r1, 0x10
/* 8070E368  4E 80 00 20 */	blr 
