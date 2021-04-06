lbl_8013ACF4:
/* 8013ACF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013ACF8  7C 08 02 A6 */	mflr r0
/* 8013ACFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AD04  93 C1 00 08 */	stw r30, 8(r1)
/* 8013AD08  7C 7E 1B 78 */	mr r30, r3
/* 8013AD0C  4B FE ED 75 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013AD10  2C 03 00 00 */	cmpwi r3, 0
/* 8013AD14  41 82 00 0C */	beq lbl_8013AD20
/* 8013AD18  38 60 00 01 */	li r3, 1
/* 8013AD1C  48 00 00 BC */	b lbl_8013ADD8
lbl_8013AD20:
/* 8013AD20  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013AD24  38 00 00 04 */	li r0, 4
/* 8013AD28  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013AD2C  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8013AD30  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013AD34  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8013AD38  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8013AD3C  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8013AD40  48 13 5A 01 */	bl cLib_chaseF__FPfff
/* 8013AD44  7F C3 F3 78 */	mr r3, r30
/* 8013AD48  4B F9 73 B5 */	bl setComboReserb__9daAlink_cFv
/* 8013AD4C  7F C3 F3 78 */	mr r3, r30
/* 8013AD50  4B F9 79 35 */	bl checkCutTurnCharge__9daAlink_cFv
/* 8013AD54  7F E3 FB 78 */	mr r3, r31
/* 8013AD58  48 02 37 75 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013AD5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013AD60  41 82 00 14 */	beq lbl_8013AD74
/* 8013AD64  7F C3 F3 78 */	mr r3, r30
/* 8013AD68  38 80 00 00 */	li r4, 0
/* 8013AD6C  4B FE ED D9 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013AD70  48 00 00 64 */	b lbl_8013ADD4
lbl_8013AD74:
/* 8013AD74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013AD78  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtLand_c0@ha /* 0x8038F618@ha */
/* 8013AD7C  38 63 F6 18 */	addi r3, r3, m__22daAlinkHIO_wlAtLand_c0@l /* 0x8038F618@l */
/* 8013AD80  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8013AD84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013AD88  40 81 00 4C */	ble lbl_8013ADD4
/* 8013AD8C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8013AD90  2C 00 00 00 */	cmpwi r0, 0
/* 8013AD94  41 82 00 24 */	beq lbl_8013ADB8
/* 8013AD98  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8013AD9C  3C 63 00 01 */	addis r3, r3, 1
/* 8013ADA0  38 03 80 00 */	addi r0, r3, -32768
/* 8013ADA4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8013ADA8  7F C3 F3 78 */	mr r3, r30
/* 8013ADAC  38 80 00 03 */	li r4, 3
/* 8013ADB0  4B FF F0 31 */	bl procWolfJumpAttackInit__9daAlink_cFi
/* 8013ADB4  48 00 00 24 */	b lbl_8013ADD8
lbl_8013ADB8:
/* 8013ADB8  7F C3 F3 78 */	mr r3, r30
/* 8013ADBC  38 80 00 01 */	li r4, 1
/* 8013ADC0  4B FE ED 85 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013ADC4  2C 03 00 00 */	cmpwi r3, 0
/* 8013ADC8  41 82 00 0C */	beq lbl_8013ADD4
/* 8013ADCC  38 60 00 01 */	li r3, 1
/* 8013ADD0  48 00 00 08 */	b lbl_8013ADD8
lbl_8013ADD4:
/* 8013ADD4  38 60 00 01 */	li r3, 1
lbl_8013ADD8:
/* 8013ADD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013ADDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013ADE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013ADE4  7C 08 03 A6 */	mtlr r0
/* 8013ADE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013ADEC  4E 80 00 20 */	blr 
