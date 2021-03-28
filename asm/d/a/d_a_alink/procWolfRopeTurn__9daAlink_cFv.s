lbl_80132E88:
/* 80132E88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80132E8C  7C 08 02 A6 */	mflr r0
/* 80132E90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80132E94  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80132E98  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80132E9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80132EA0  48 22 F3 3D */	bl _savegpr_29
/* 80132EA4  7C 7E 1B 78 */	mr r30, r3
/* 80132EA8  3B BE 1F D0 */	addi r29, r30, 0x1fd0
/* 80132EAC  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 80132EB0  38 00 00 04 */	li r0, 4
/* 80132EB4  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 80132EB8  C0 23 34 7C */	lfs f1, 0x347c(r3)
/* 80132EBC  C0 03 1F E0 */	lfs f0, 0x1fe0(r3)
/* 80132EC0  EC 41 00 32 */	fmuls f2, f1, f0
/* 80132EC4  3C 80 80 42 */	lis r4, l_wolfBaseAnime@ha
/* 80132EC8  38 A4 56 1C */	addi r5, r4, l_wolfBaseAnime@l
/* 80132ECC  C0 25 00 00 */	lfs f1, 0(r5)
/* 80132ED0  3C 80 80 42 */	lis r4, l_wolfRopeBaseAnime@ha
/* 80132ED4  C4 04 56 34 */	lfsu f0, l_wolfRopeBaseAnime@l(r4)
/* 80132ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 80132EDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132EE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80132EE4  D0 03 35 88 */	stfs f0, 0x3588(r3)
/* 80132EE8  C0 25 00 08 */	lfs f1, 8(r5)
/* 80132EEC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80132EF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80132EF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80132EF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80132EFC  D0 03 35 90 */	stfs f0, 0x3590(r3)
/* 80132F00  4B FF E8 19 */	bl setWolfRopePosY__9daAlink_cFv
/* 80132F04  7F A3 EB 78 */	mr r3, r29
/* 80132F08  48 02 B5 C5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80132F0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80132F10  41 82 00 18 */	beq lbl_80132F28
/* 80132F14  7F C3 F3 78 */	mr r3, r30
/* 80132F18  38 80 00 00 */	li r4, 0
/* 80132F1C  38 A0 00 00 */	li r5, 0
/* 80132F20  4B FF ED 55 */	bl procWolfRopeMoveInit__9daAlink_cFii
/* 80132F24  48 00 01 10 */	b lbl_80133034
lbl_80132F28:
/* 80132F28  C3 FD 00 10 */	lfs f31, 0x10(r29)
/* 80132F2C  7F A3 EB 78 */	mr r3, r29
/* 80132F30  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 80132F34  48 1F 54 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80132F38  2C 03 00 00 */	cmpwi r3, 0
/* 80132F3C  41 82 00 4C */	beq lbl_80132F88
/* 80132F40  7F C3 F3 78 */	mr r3, r30
/* 80132F44  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 80132F48  4B FF EB 25 */	bl wolfRopeSwingInc__9daAlink_cFf
/* 80132F4C  38 00 00 00 */	li r0, 0
/* 80132F50  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 80132F54  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80132F58  D0 21 00 08 */	stfs f1, 8(r1)
/* 80132F5C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80132F60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80132F64  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80132F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80132F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80132F70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80132F74  38 80 00 01 */	li r4, 1
/* 80132F78  38 A0 00 0F */	li r5, 0xf
/* 80132F7C  38 C1 00 08 */	addi r6, r1, 8
/* 80132F80  4B F3 CA A5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80132F84  48 00 00 2C */	b lbl_80132FB0
lbl_80132F88:
/* 80132F88  7F A3 EB 78 */	mr r3, r29
/* 80132F8C  C0 22 93 84 */	lfs f1, lit_8781(r2)
/* 80132F90  48 1F 54 9D */	bl checkPass__12J3DFrameCtrlFf
/* 80132F94  2C 03 00 00 */	cmpwi r3, 0
/* 80132F98  41 82 00 18 */	beq lbl_80132FB0
/* 80132F9C  7F C3 F3 78 */	mr r3, r30
/* 80132FA0  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 80132FA4  4B FF EA C9 */	bl wolfRopeSwingInc__9daAlink_cFf
/* 80132FA8  38 00 00 00 */	li r0, 0
/* 80132FAC  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_80132FB0:
/* 80132FB0  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 80132FB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132FB8  41 80 00 6C */	blt lbl_80133024
/* 80132FBC  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 80132FC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132FC4  40 80 00 18 */	bge lbl_80132FDC
/* 80132FC8  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80132FCC  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 80132FD0  38 00 00 13 */	li r0, 0x13
/* 80132FD4  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132FD8  48 00 00 4C */	b lbl_80133024
lbl_80132FDC:
/* 80132FDC  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 80132FE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132FE4  40 80 00 10 */	bge lbl_80132FF4
/* 80132FE8  38 00 00 18 */	li r0, 0x18
/* 80132FEC  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80132FF0  48 00 00 34 */	b lbl_80133024
lbl_80132FF4:
/* 80132FF4  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 80132FF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80132FFC  40 80 00 18 */	bge lbl_80133014
/* 80133000  38 00 00 18 */	li r0, 0x18
/* 80133004  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80133008  38 00 00 1F */	li r0, 0x1f
/* 8013300C  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80133010  48 00 00 14 */	b lbl_80133024
lbl_80133014:
/* 80133014  38 00 00 13 */	li r0, 0x13
/* 80133018  90 1F 07 18 */	stw r0, 0x718(r31)
/* 8013301C  38 00 00 1F */	li r0, 0x1f
/* 80133020  90 1F 07 1C */	stw r0, 0x71c(r31)
lbl_80133024:
/* 80133024  7F C3 F3 78 */	mr r3, r30
/* 80133028  38 80 00 00 */	li r4, 0
/* 8013302C  4B FF EA D1 */	bl setWolfRopeOffsetY__9daAlink_cFi
/* 80133030  38 60 00 01 */	li r3, 1
lbl_80133034:
/* 80133034  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80133038  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8013303C  39 61 00 30 */	addi r11, r1, 0x30
/* 80133040  48 22 F1 E9 */	bl _restgpr_29
/* 80133044  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80133048  7C 08 03 A6 */	mtlr r0
/* 8013304C  38 21 00 40 */	addi r1, r1, 0x40
/* 80133050  4E 80 00 20 */	blr 
