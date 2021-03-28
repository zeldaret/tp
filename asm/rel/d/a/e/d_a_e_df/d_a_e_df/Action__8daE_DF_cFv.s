lbl_806A9304:
/* 806A9304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9308  7C 08 02 A6 */	mflr r0
/* 806A930C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9314  7C 7F 1B 78 */	mr r31, r3
/* 806A9318  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 806A931C  2C 00 00 02 */	cmpwi r0, 2
/* 806A9320  41 82 00 3C */	beq lbl_806A935C
/* 806A9324  40 80 00 14 */	bge lbl_806A9338
/* 806A9328  2C 00 00 00 */	cmpwi r0, 0
/* 806A932C  41 82 00 18 */	beq lbl_806A9344
/* 806A9330  40 80 00 24 */	bge lbl_806A9354
/* 806A9334  48 00 00 3C */	b lbl_806A9370
lbl_806A9338:
/* 806A9338  2C 00 00 04 */	cmpwi r0, 4
/* 806A933C  40 80 00 34 */	bge lbl_806A9370
/* 806A9340  48 00 00 2C */	b lbl_806A936C
lbl_806A9344:
/* 806A9344  4B FF FE 71 */	bl WaitAction__8daE_DF_cFv
/* 806A9348  7F E3 FB 78 */	mr r3, r31
/* 806A934C  4B FF EE 21 */	bl Obj_Damage__8daE_DF_cFv
/* 806A9350  48 00 00 20 */	b lbl_806A9370
lbl_806A9354:
/* 806A9354  4B FF FB 81 */	bl EatAction__8daE_DF_cFv
/* 806A9358  48 00 00 18 */	b lbl_806A9370
lbl_806A935C:
/* 806A935C  4B FF EE E9 */	bl DamageAction__8daE_DF_cFv
/* 806A9360  7F E3 FB 78 */	mr r3, r31
/* 806A9364  4B FF EE 09 */	bl Obj_Damage__8daE_DF_cFv
/* 806A9368  48 00 00 08 */	b lbl_806A9370
lbl_806A936C:
/* 806A936C  4B FF FE E9 */	bl MissAction__8daE_DF_cFv
lbl_806A9370:
/* 806A9370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A9374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9378  7C 08 03 A6 */	mtlr r0
/* 806A937C  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9380  4E 80 00 20 */	blr 
