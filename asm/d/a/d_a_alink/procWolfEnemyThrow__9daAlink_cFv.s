lbl_8013CC5C:
/* 8013CC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013CC60  7C 08 02 A6 */	mflr r0
/* 8013CC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013CC68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013CC6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013CC70  7C 7E 1B 78 */	mr r30, r3
/* 8013CC74  4B FE CE 0D */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013CC78  2C 03 00 00 */	cmpwi r3, 0
/* 8013CC7C  41 82 00 0C */	beq lbl_8013CC88
/* 8013CC80  38 60 00 01 */	li r3, 1
/* 8013CC84  48 00 00 58 */	b lbl_8013CCDC
lbl_8013CC88:
/* 8013CC88  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013CC8C  38 00 00 05 */	li r0, 5
/* 8013CC90  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013CC94  7F E3 FB 78 */	mr r3, r31
/* 8013CC98  48 02 18 35 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013CC9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013CCA0  41 82 00 14 */	beq lbl_8013CCB4
/* 8013CCA4  7F C3 F3 78 */	mr r3, r30
/* 8013CCA8  38 80 00 00 */	li r4, 0
/* 8013CCAC  4B FE CE 99 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013CCB0  48 00 00 28 */	b lbl_8013CCD8
lbl_8013CCB4:
/* 8013CCB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013CCB8  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtBite_c0@ha /* 0x8038F748@ha */
/* 8013CCBC  38 63 F7 48 */	addi r3, r3, m__22daAlinkHIO_wlAtBite_c0@l /* 0x8038F748@l */
/* 8013CCC0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8013CCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013CCC8  40 81 00 10 */	ble lbl_8013CCD8
/* 8013CCCC  7F C3 F3 78 */	mr r3, r30
/* 8013CCD0  38 80 00 01 */	li r4, 1
/* 8013CCD4  4B FE CE 71 */	bl checkNextActionWolf__9daAlink_cFi
lbl_8013CCD8:
/* 8013CCD8  38 60 00 01 */	li r3, 1
lbl_8013CCDC:
/* 8013CCDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013CCE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013CCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013CCE8  7C 08 03 A6 */	mtlr r0
/* 8013CCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013CCF0  4E 80 00 20 */	blr 
