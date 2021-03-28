lbl_8049F5F4:
/* 8049F5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F5F8  7C 08 02 A6 */	mflr r0
/* 8049F5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F600  28 04 00 00 */	cmplwi r4, 0
/* 8049F604  41 82 00 28 */	beq lbl_8049F62C
/* 8049F608  A8 04 00 08 */	lha r0, 8(r4)
/* 8049F60C  2C 00 01 7B */	cmpwi r0, 0x17b
/* 8049F610  41 82 00 1C */	beq lbl_8049F62C
/* 8049F614  2C 00 02 08 */	cmpwi r0, 0x208
/* 8049F618  41 82 00 14 */	beq lbl_8049F62C
/* 8049F61C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8049F620  41 82 00 0C */	beq lbl_8049F62C
/* 8049F624  38 A0 00 01 */	li r5, 1
/* 8049F628  48 00 02 89 */	bl setLockActor__13daBoomerang_cFP10fopAc_ac_ci
lbl_8049F62C:
/* 8049F62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F630  7C 08 03 A6 */	mtlr r0
/* 8049F634  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F638  4E 80 00 20 */	blr 
