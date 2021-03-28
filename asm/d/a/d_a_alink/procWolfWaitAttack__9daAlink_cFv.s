lbl_8013AFC0:
/* 8013AFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013AFC4  7C 08 02 A6 */	mflr r0
/* 8013AFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013AFCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013AFD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8013AFD4  7C 7E 1B 78 */	mr r30, r3
/* 8013AFD8  4B FE EA A9 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013AFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8013AFE0  41 82 00 0C */	beq lbl_8013AFEC
/* 8013AFE4  38 60 00 01 */	li r3, 1
/* 8013AFE8  48 00 02 A0 */	b lbl_8013B288
lbl_8013AFEC:
/* 8013AFEC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013AFF0  38 00 00 05 */	li r0, 5
/* 8013AFF4  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013AFF8  38 7E 33 98 */	addi r3, r30, 0x3398
/* 8013AFFC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013B000  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8013B004  38 84 EF 28 */	addi r4, r4, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 8013B008  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8013B00C  48 13 57 35 */	bl cLib_chaseF__FPfff
/* 8013B010  7F C3 F3 78 */	mr r3, r30
/* 8013B014  4B F9 70 E9 */	bl setComboReserb__9daAlink_cFv
/* 8013B018  7F C3 F3 78 */	mr r3, r30
/* 8013B01C  4B F9 76 69 */	bl checkCutTurnCharge__9daAlink_cFv
/* 8013B020  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8013B024  28 00 00 2F */	cmplwi r0, 0x2f
/* 8013B028  41 82 00 28 */	beq lbl_8013B050
/* 8013B02C  7F C3 F3 78 */	mr r3, r30
/* 8013B030  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 8013B034  7C 00 00 34 */	cntlzw r0, r0
/* 8013B038  54 04 DE 3E */	rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 8013B03C  4B FE F1 ED */	bl checkWolfAttackReverse__9daAlink_cFi
/* 8013B040  2C 03 00 00 */	cmpwi r3, 0
/* 8013B044  41 82 00 0C */	beq lbl_8013B050
/* 8013B048  38 60 00 01 */	li r3, 1
/* 8013B04C  48 00 02 3C */	b lbl_8013B288
lbl_8013B050:
/* 8013B050  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8013B054  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8013B058  41 82 00 38 */	beq lbl_8013B090
/* 8013B05C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B060  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 8013B064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B068  4C 41 13 82 */	cror 2, 1, 2
/* 8013B06C  40 82 00 24 */	bne lbl_8013B090
/* 8013B070  7F C3 F3 78 */	mr r3, r30
/* 8013B074  88 9E 05 68 */	lbz r4, 0x568(r30)
/* 8013B078  38 04 FF D4 */	addi r0, r4, -44
/* 8013B07C  30 00 FF FF */	addic r0, r0, -1
/* 8013B080  7C 80 01 10 */	subfe r4, r0, r0
/* 8013B084  38 84 00 03 */	addi r4, r4, 3
/* 8013B088  48 00 1A C1 */	bl procWolfEnemyThrowInit__9daAlink_cFi
/* 8013B08C  48 00 01 FC */	b lbl_8013B288
lbl_8013B090:
/* 8013B090  7F E3 FB 78 */	mr r3, r31
/* 8013B094  48 02 34 39 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013B098  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013B09C  41 82 00 8C */	beq lbl_8013B128
/* 8013B0A0  7F C3 F3 78 */	mr r3, r30
/* 8013B0A4  38 80 00 01 */	li r4, 1
/* 8013B0A8  4B F9 63 89 */	bl resetCombo__9daAlink_cFi
/* 8013B0AC  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8013B0B0  28 00 00 2B */	cmplwi r0, 0x2b
/* 8013B0B4  40 82 00 1C */	bne lbl_8013B0D0
/* 8013B0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013B0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013B0C0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8013B0C4  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8013B0C8  4B F0 D0 B5 */	bl cutEnd__16dEvent_manager_cFi
/* 8013B0CC  48 00 01 B8 */	b lbl_8013B284
lbl_8013B0D0:
/* 8013B0D0  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 8013B0D4  2C 00 00 00 */	cmpwi r0, 0
/* 8013B0D8  40 81 00 38 */	ble lbl_8013B110
/* 8013B0DC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B0E0  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8013B0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B0E8  40 81 00 18 */	ble lbl_8013B100
/* 8013B0EC  7F C3 F3 78 */	mr r3, r30
/* 8013B0F0  38 80 00 01 */	li r4, 1
/* 8013B0F4  4B FE EA 51 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013B0F8  2C 03 00 00 */	cmpwi r3, 0
/* 8013B0FC  40 82 01 88 */	bne lbl_8013B284
lbl_8013B100:
/* 8013B100  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 8013B104  38 03 FF FF */	addi r0, r3, -1
/* 8013B108  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8013B10C  48 00 01 78 */	b lbl_8013B284
lbl_8013B110:
/* 8013B110  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B114  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8013B118  7F C3 F3 78 */	mr r3, r30
/* 8013B11C  38 80 00 00 */	li r4, 0
/* 8013B120  4B FE EA 25 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013B124  48 00 01 60 */	b lbl_8013B284
lbl_8013B128:
/* 8013B128  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B12C  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8013B130  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B134  40 81 00 28 */	ble lbl_8013B15C
/* 8013B138  7F C3 F3 78 */	mr r3, r30
/* 8013B13C  38 80 00 01 */	li r4, 1
/* 8013B140  4B FE EA 05 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013B144  2C 03 00 00 */	cmpwi r3, 0
/* 8013B148  40 82 01 3C */	bne lbl_8013B284
/* 8013B14C  7F C3 F3 78 */	mr r3, r30
/* 8013B150  38 80 00 01 */	li r4, 1
/* 8013B154  4B F9 62 DD */	bl resetCombo__9daAlink_cFi
/* 8013B158  48 00 01 2C */	b lbl_8013B284
lbl_8013B15C:
/* 8013B15C  7F C3 F3 78 */	mr r3, r30
/* 8013B160  38 80 00 01 */	li r4, 1
/* 8013B164  4B F7 85 D1 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8013B168  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8013B16C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8013B170  7F E3 FB 78 */	mr r3, r31
/* 8013B174  C0 3E 34 84 */	lfs f1, 0x3484(r30)
/* 8013B178  48 1E D2 B5 */	bl checkPass__12J3DFrameCtrlFf
/* 8013B17C  2C 03 00 00 */	cmpwi r3, 0
/* 8013B180  41 82 00 0C */	beq lbl_8013B18C
/* 8013B184  C0 1E 34 88 */	lfs f0, 0x3488(r30)
/* 8013B188  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_8013B18C:
/* 8013B18C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8013B190  2C 00 00 00 */	cmpwi r0, 0
/* 8013B194  40 82 00 B0 */	bne lbl_8013B244
/* 8013B198  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B19C  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 8013B1A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B1A4  4C 41 13 82 */	cror 2, 1, 2
/* 8013B1A8  40 82 00 9C */	bne lbl_8013B244
/* 8013B1AC  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 8013B1B0  28 00 00 04 */	cmplwi r0, 4
/* 8013B1B4  40 82 00 24 */	bne lbl_8013B1D8
/* 8013B1B8  7F C3 F3 78 */	mr r3, r30
/* 8013B1BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010039@ha */
/* 8013B1C0  38 84 00 39 */	addi r4, r4, 0x0039 /* 0x00010039@l */
/* 8013B1C4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013B1C8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013B1CC  7D 89 03 A6 */	mtctr r12
/* 8013B1D0  4E 80 04 21 */	bctrl 
/* 8013B1D4  48 00 00 20 */	b lbl_8013B1F4
lbl_8013B1D8:
/* 8013B1D8  7F C3 F3 78 */	mr r3, r30
/* 8013B1DC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010038@ha */
/* 8013B1E0  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x00010038@l */
/* 8013B1E4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013B1E8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013B1EC  7D 89 03 A6 */	mtctr r12
/* 8013B1F0  4E 80 04 21 */	bctrl 
lbl_8013B1F4:
/* 8013B1F4  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8013B1F8  2C 00 00 00 */	cmpwi r0, 0
/* 8013B1FC  40 82 00 24 */	bne lbl_8013B220
/* 8013B200  7F C3 F3 78 */	mr r3, r30
/* 8013B204  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000D@ha */
/* 8013B208  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0002000D@l */
/* 8013B20C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013B210  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013B214  7D 89 03 A6 */	mtctr r12
/* 8013B218  4E 80 04 21 */	bctrl 
/* 8013B21C  48 00 00 20 */	b lbl_8013B23C
lbl_8013B220:
/* 8013B220  7F C3 F3 78 */	mr r3, r30
/* 8013B224  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020009@ha */
/* 8013B228  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00020009@l */
/* 8013B22C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8013B230  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013B234  7D 89 03 A6 */	mtctr r12
/* 8013B238  4E 80 04 21 */	bctrl 
lbl_8013B23C:
/* 8013B23C  38 00 00 01 */	li r0, 1
/* 8013B240  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8013B244:
/* 8013B244  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013B248  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 8013B24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B250  4C 41 13 82 */	cror 2, 1, 2
/* 8013B254  40 82 00 30 */	bne lbl_8013B284
/* 8013B258  C0 1E 34 80 */	lfs f0, 0x3480(r30)
/* 8013B25C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013B260  40 80 00 24 */	bge lbl_8013B284
/* 8013B264  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8013B268  60 00 00 02 */	ori r0, r0, 2
/* 8013B26C  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8013B270  A8 7E 30 0A */	lha r3, 0x300a(r30)
/* 8013B274  2C 03 00 00 */	cmpwi r3, 0
/* 8013B278  41 82 00 0C */	beq lbl_8013B284
/* 8013B27C  38 03 FF FF */	addi r0, r3, -1
/* 8013B280  B0 1E 30 0A */	sth r0, 0x300a(r30)
lbl_8013B284:
/* 8013B284  38 60 00 01 */	li r3, 1
lbl_8013B288:
/* 8013B288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013B28C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013B290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013B294  7C 08 03 A6 */	mtlr r0
/* 8013B298  38 21 00 10 */	addi r1, r1, 0x10
/* 8013B29C  4E 80 00 20 */	blr 
