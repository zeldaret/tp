lbl_806DB304:
/* 806DB304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DB308  7C 08 02 A6 */	mflr r0
/* 806DB30C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DB310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806DB314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806DB318  7C 7F 1B 78 */	mr r31, r3
/* 806DB31C  3C 60 80 6E */	lis r3, lit_3763@ha /* 0x806DEE38@ha */
/* 806DB320  3B C3 EE 38 */	addi r30, r3, lit_3763@l /* 0x806DEE38@l */
/* 806DB324  38 00 00 05 */	li r0, 5
/* 806DB328  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 806DB32C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806DB330  A8 9F 06 6A */	lha r4, 0x66a(r31)
/* 806DB334  38 A0 00 01 */	li r5, 1
/* 806DB338  38 C0 10 00 */	li r6, 0x1000
/* 806DB33C  4B B9 52 CD */	bl cLib_addCalcAngleS2__FPssss
/* 806DB340  A8 1F 06 58 */	lha r0, 0x658(r31)
/* 806DB344  2C 00 00 03 */	cmpwi r0, 3
/* 806DB348  41 82 00 F4 */	beq lbl_806DB43C
/* 806DB34C  40 80 00 1C */	bge lbl_806DB368
/* 806DB350  2C 00 00 01 */	cmpwi r0, 1
/* 806DB354  41 82 01 A0 */	beq lbl_806DB4F4
/* 806DB358  40 80 00 98 */	bge lbl_806DB3F0
/* 806DB35C  2C 00 00 00 */	cmpwi r0, 0
/* 806DB360  40 80 00 18 */	bge lbl_806DB378
/* 806DB364  48 00 01 90 */	b lbl_806DB4F4
lbl_806DB368:
/* 806DB368  2C 00 00 05 */	cmpwi r0, 5
/* 806DB36C  41 82 01 40 */	beq lbl_806DB4AC
/* 806DB370  40 80 01 84 */	bge lbl_806DB4F4
/* 806DB374  48 00 01 14 */	b lbl_806DB488
lbl_806DB378:
/* 806DB378  7F E3 FB 78 */	mr r3, r31
/* 806DB37C  38 80 00 15 */	li r4, 0x15
/* 806DB380  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DB384  38 A0 00 00 */	li r5, 0
/* 806DB388  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DB38C  4B FF D1 ED */	bl anm_init__FP11e_gob_classifUcf
/* 806DB390  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070200@ha */
/* 806DB394  38 03 02 00 */	addi r0, r3, 0x0200 /* 0x00070200@l */
/* 806DB398  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DB39C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DB3A0  38 81 00 10 */	addi r4, r1, 0x10
/* 806DB3A4  38 A0 FF FF */	li r5, -1
/* 806DB3A8  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DB3AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DB3B0  7D 89 03 A6 */	mtctr r12
/* 806DB3B4  4E 80 04 21 */	bctrl 
/* 806DB3B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E7@ha */
/* 806DB3BC  38 03 01 E7 */	addi r0, r3, 0x01E7 /* 0x000701E7@l */
/* 806DB3C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DB3C4  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DB3C8  38 81 00 0C */	addi r4, r1, 0xc
/* 806DB3CC  38 A0 00 00 */	li r5, 0
/* 806DB3D0  38 C0 FF FF */	li r6, -1
/* 806DB3D4  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DB3D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DB3DC  7D 89 03 A6 */	mtctr r12
/* 806DB3E0  4E 80 04 21 */	bctrl 
/* 806DB3E4  38 00 00 01 */	li r0, 1
/* 806DB3E8  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DB3EC  48 00 01 08 */	b lbl_806DB4F4
lbl_806DB3F0:
/* 806DB3F0  7F E3 FB 78 */	mr r3, r31
/* 806DB3F4  38 80 00 11 */	li r4, 0x11
/* 806DB3F8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806DB3FC  38 A0 00 00 */	li r5, 0
/* 806DB400  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DB404  4B FF D1 75 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB408  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070201@ha */
/* 806DB40C  38 03 02 01 */	addi r0, r3, 0x0201 /* 0x00070201@l */
/* 806DB410  90 01 00 08 */	stw r0, 8(r1)
/* 806DB414  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DB418  38 81 00 08 */	addi r4, r1, 8
/* 806DB41C  38 A0 FF FF */	li r5, -1
/* 806DB420  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DB424  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DB428  7D 89 03 A6 */	mtctr r12
/* 806DB42C  4E 80 04 21 */	bctrl 
/* 806DB430  38 00 00 03 */	li r0, 3
/* 806DB434  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DB438  48 00 00 BC */	b lbl_806DB4F4
lbl_806DB43C:
/* 806DB43C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DB440  38 80 00 01 */	li r4, 1
/* 806DB444  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DB448  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DB44C  40 82 00 18 */	bne lbl_806DB464
/* 806DB450  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DB454  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DB458  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DB45C  41 82 00 08 */	beq lbl_806DB464
/* 806DB460  38 80 00 00 */	li r4, 0
lbl_806DB464:
/* 806DB464  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DB468  41 82 00 8C */	beq lbl_806DB4F4
/* 806DB46C  7F E3 FB 78 */	mr r3, r31
/* 806DB470  38 80 00 12 */	li r4, 0x12
/* 806DB474  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806DB478  38 A0 00 02 */	li r5, 2
/* 806DB47C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DB480  4B FF D0 F9 */	bl anm_init__FP11e_gob_classifUcf
/* 806DB484  48 00 00 70 */	b lbl_806DB4F4
lbl_806DB488:
/* 806DB488  7F E3 FB 78 */	mr r3, r31
/* 806DB48C  38 80 00 17 */	li r4, 0x17
/* 806DB490  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806DB494  38 A0 00 00 */	li r5, 0
/* 806DB498  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DB49C  4B FF D0 DD */	bl anm_init__FP11e_gob_classifUcf
/* 806DB4A0  38 00 00 05 */	li r0, 5
/* 806DB4A4  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DB4A8  48 00 00 4C */	b lbl_806DB4F4
lbl_806DB4AC:
/* 806DB4AC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DB4B0  38 80 00 01 */	li r4, 1
/* 806DB4B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DB4B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DB4BC  40 82 00 18 */	bne lbl_806DB4D4
/* 806DB4C0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DB4C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DB4C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DB4CC  41 82 00 08 */	beq lbl_806DB4D4
/* 806DB4D0  38 80 00 00 */	li r4, 0
lbl_806DB4D4:
/* 806DB4D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DB4D8  41 82 00 1C */	beq lbl_806DB4F4
/* 806DB4DC  7F E3 FB 78 */	mr r3, r31
/* 806DB4E0  38 80 00 25 */	li r4, 0x25
/* 806DB4E4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806DB4E8  38 A0 00 02 */	li r5, 2
/* 806DB4EC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DB4F0  4B FF D0 89 */	bl anm_init__FP11e_gob_classifUcf
lbl_806DB4F4:
/* 806DB4F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806DB4F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806DB4FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806DB500  7C 08 03 A6 */	mtlr r0
/* 806DB504  38 21 00 20 */	addi r1, r1, 0x20
/* 806DB508  4E 80 00 20 */	blr 
