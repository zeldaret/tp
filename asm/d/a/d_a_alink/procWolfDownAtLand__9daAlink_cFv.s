lbl_8013BA44:
/* 8013BA44  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013BA48  7C 08 02 A6 */	mflr r0
/* 8013BA4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8013BA50  39 61 00 50 */	addi r11, r1, 0x50
/* 8013BA54  48 22 67 89 */	bl _savegpr_29
/* 8013BA58  7C 7F 1B 78 */	mr r31, r3
/* 8013BA5C  4B FE E0 25 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013BA60  2C 03 00 00 */	cmpwi r3, 0
/* 8013BA64  41 82 00 0C */	beq lbl_8013BA70
/* 8013BA68  38 60 00 01 */	li r3, 1
/* 8013BA6C  48 00 02 10 */	b lbl_8013BC7C
lbl_8013BA70:
/* 8013BA70  83 BF 28 10 */	lwz r29, 0x2810(r31)
/* 8013BA74  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8013BA78  7F C3 F3 78 */	mr r3, r30
/* 8013BA7C  48 02 2A 51 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013BA80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013BA84  41 82 01 88 */	beq lbl_8013BC0C
/* 8013BA88  7F E3 FB 78 */	mr r3, r31
/* 8013BA8C  38 80 00 6D */	li r4, 0x6d
/* 8013BA90  4B FE CD 7D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013BA94  2C 03 00 00 */	cmpwi r3, 0
/* 8013BA98  41 82 01 28 */	beq lbl_8013BBC0
/* 8013BA9C  7F E3 FB 78 */	mr r3, r31
/* 8013BAA0  38 80 02 DA */	li r4, 0x2da
/* 8013BAA4  38 A0 00 02 */	li r5, 2
/* 8013BAA8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BAAC  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 8013BAB0  38 C0 FF FF */	li r6, -1
/* 8013BAB4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8013BAB8  4B F7 19 21 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 8013BABC  28 1D 00 00 */	cmplwi r29, 0
/* 8013BAC0  41 82 00 F0 */	beq lbl_8013BBB0
/* 8013BAC4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8013BAC8  60 00 00 20 */	ori r0, r0, 0x20
/* 8013BACC  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8013BAD0  38 DD 05 68 */	addi r6, r29, 0x568
/* 8013BAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013BAD8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013BADC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8013BAE0  38 80 00 00 */	li r4, 0
/* 8013BAE4  90 81 00 08 */	stw r4, 8(r1)
/* 8013BAE8  38 00 FF FF */	li r0, -1
/* 8013BAEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013BAF0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8013BAF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8013BAF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8013BAFC  38 80 00 00 */	li r4, 0
/* 8013BB00  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086CA@ha */
/* 8013BB04  38 A5 86 CA */	addi r5, r5, 0x86CA /* 0x000086CA@l */
/* 8013BB08  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8013BB0C  39 00 00 00 */	li r8, 0
/* 8013BB10  39 20 00 00 */	li r9, 0
/* 8013BB14  39 40 00 FF */	li r10, 0xff
/* 8013BB18  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BB1C  4B F1 0F 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8013BB20  38 DD 05 68 */	addi r6, r29, 0x568
/* 8013BB24  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8013BB28  38 80 00 00 */	li r4, 0
/* 8013BB2C  90 81 00 08 */	stw r4, 8(r1)
/* 8013BB30  38 00 FF FF */	li r0, -1
/* 8013BB34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013BB38  90 81 00 10 */	stw r4, 0x10(r1)
/* 8013BB3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8013BB40  90 81 00 18 */	stw r4, 0x18(r1)
/* 8013BB44  38 80 00 00 */	li r4, 0
/* 8013BB48  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086CB@ha */
/* 8013BB4C  38 A5 86 CB */	addi r5, r5, 0x86CB /* 0x000086CB@l */
/* 8013BB50  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8013BB54  39 00 00 00 */	li r8, 0
/* 8013BB58  39 20 00 00 */	li r9, 0
/* 8013BB5C  39 40 00 FF */	li r10, 0xff
/* 8013BB60  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BB64  4B F1 0F 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8013BB68  38 DD 05 68 */	addi r6, r29, 0x568
/* 8013BB6C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8013BB70  38 80 00 00 */	li r4, 0
/* 8013BB74  90 81 00 08 */	stw r4, 8(r1)
/* 8013BB78  38 00 FF FF */	li r0, -1
/* 8013BB7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013BB80  90 81 00 10 */	stw r4, 0x10(r1)
/* 8013BB84  90 81 00 14 */	stw r4, 0x14(r1)
/* 8013BB88  90 81 00 18 */	stw r4, 0x18(r1)
/* 8013BB8C  38 80 00 00 */	li r4, 0
/* 8013BB90  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086CC@ha */
/* 8013BB94  38 A5 86 CC */	addi r5, r5, 0x86CC /* 0x000086CC@l */
/* 8013BB98  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8013BB9C  39 00 00 00 */	li r8, 0
/* 8013BBA0  39 20 00 00 */	li r9, 0
/* 8013BBA4  39 40 00 FF */	li r10, 0xff
/* 8013BBA8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BBAC  4B F1 0E E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8013BBB0:
/* 8013BBB0  7F E3 FB 78 */	mr r3, r31
/* 8013BBB4  38 80 00 01 */	li r4, 1
/* 8013BBB8  4B FF 27 E1 */	bl procWolfBackJumpInit__9daAlink_cFi
/* 8013BBBC  48 00 00 C0 */	b lbl_8013BC7C
lbl_8013BBC0:
/* 8013BBC0  7F E3 FB 78 */	mr r3, r31
/* 8013BBC4  38 80 00 6D */	li r4, 0x6d
/* 8013BBC8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtDown_c0@ha /* 0x8038F658@ha */
/* 8013BBCC  38 A5 F6 58 */	addi r5, r5, m__22daAlinkHIO_wlAtDown_c0@l /* 0x8038F658@l */
/* 8013BBD0  38 A5 00 78 */	addi r5, r5, 0x78
/* 8013BBD4  4B FE DC 75 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013BBD8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BBDC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8013BBE0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013BBE4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8013BBE8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8013BBEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013BBF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013BBF4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013BBF8  38 80 00 02 */	li r4, 2
/* 8013BBFC  38 A0 00 0F */	li r5, 0xf
/* 8013BC00  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8013BC04  4B F3 3E 21 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013BC08  48 00 00 70 */	b lbl_8013BC78
lbl_8013BC0C:
/* 8013BC0C  7F E3 FB 78 */	mr r3, r31
/* 8013BC10  38 80 00 64 */	li r4, 0x64
/* 8013BC14  4B FE CB F9 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013BC18  2C 03 00 00 */	cmpwi r3, 0
/* 8013BC1C  41 82 00 5C */	beq lbl_8013BC78
/* 8013BC20  7F C3 F3 78 */	mr r3, r30
/* 8013BC24  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 8013BC28  48 1E C8 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8013BC2C  2C 03 00 00 */	cmpwi r3, 0
/* 8013BC30  40 82 00 18 */	bne lbl_8013BC48
/* 8013BC34  7F C3 F3 78 */	mr r3, r30
/* 8013BC38  C0 22 94 04 */	lfs f1, lit_13794(r2)
/* 8013BC3C  48 1E C7 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 8013BC40  2C 03 00 00 */	cmpwi r3, 0
/* 8013BC44  41 82 00 34 */	beq lbl_8013BC78
lbl_8013BC48:
/* 8013BC48  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013BC4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8013BC50  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013BC54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8013BC58  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8013BC5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013BC60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013BC64  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013BC68  38 80 00 02 */	li r4, 2
/* 8013BC6C  38 A0 00 0F */	li r5, 0xf
/* 8013BC70  38 C1 00 20 */	addi r6, r1, 0x20
/* 8013BC74  4B F3 3D B1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8013BC78:
/* 8013BC78  38 60 00 01 */	li r3, 1
lbl_8013BC7C:
/* 8013BC7C  39 61 00 50 */	addi r11, r1, 0x50
/* 8013BC80  48 22 65 A9 */	bl _restgpr_29
/* 8013BC84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8013BC88  7C 08 03 A6 */	mtlr r0
/* 8013BC8C  38 21 00 50 */	addi r1, r1, 0x50
/* 8013BC90  4E 80 00 20 */	blr 
