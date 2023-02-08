lbl_8010FC38:
/* 8010FC38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010FC3C  7C 08 02 A6 */	mflr r0
/* 8010FC40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010FC44  39 61 00 20 */	addi r11, r1, 0x20
/* 8010FC48  48 25 25 95 */	bl _savegpr_29
/* 8010FC4C  7C 7D 1B 78 */	mr r29, r3
/* 8010FC50  7C 9F 23 79 */	or. r31, r4, r4
/* 8010FC54  7C BE 2B 78 */	mr r30, r5
/* 8010FC58  41 82 00 20 */	beq lbl_8010FC78
/* 8010FC5C  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010FC60  28 00 00 48 */	cmplwi r0, 0x48
/* 8010FC64  41 82 00 14 */	beq lbl_8010FC78
/* 8010FC68  38 80 00 B5 */	li r4, 0xb5
/* 8010FC6C  38 A0 00 00 */	li r5, 0
/* 8010FC70  4B FB 31 6D */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 8010FC74  48 00 02 CC */	b lbl_8010FF40
lbl_8010FC78:
/* 8010FC78  28 1F 00 00 */	cmplwi r31, 0
/* 8010FC7C  40 82 00 24 */	bne lbl_8010FCA0
/* 8010FC80  88 7D 2F 9C */	lbz r3, 0x2f9c(r29)
/* 8010FC84  4B F1 E2 99 */	bl dComIfGp_getSelectItem__Fi
/* 8010FC88  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8010FC8C  28 00 00 60 */	cmplwi r0, 0x60
/* 8010FC90  41 82 00 10 */	beq lbl_8010FCA0
/* 8010FC94  7F A3 EB 78 */	mr r3, r29
/* 8010FC98  4B FA 5C 55 */	bl checkWaitAction__9daAlink_cFv
/* 8010FC9C  48 00 02 A4 */	b lbl_8010FF40
lbl_8010FCA0:
/* 8010FCA0  7F A3 EB 78 */	mr r3, r29
/* 8010FCA4  38 80 00 B5 */	li r4, 0xb5
/* 8010FCA8  4B FB 22 C5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010FCAC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010FCB0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8010FCB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010FCB8  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8010FCBC  38 00 00 04 */	li r0, 4
/* 8010FCC0  98 1D 2F 98 */	stb r0, 0x2f98(r29)
/* 8010FCC4  B3 DD 30 10 */	sth r30, 0x3010(r29)
/* 8010FCC8  28 1F 00 00 */	cmplwi r31, 0
/* 8010FCCC  41 82 00 14 */	beq lbl_8010FCE0
/* 8010FCD0  38 7D 28 0C */	addi r3, r29, 0x280c
/* 8010FCD4  7F E4 FB 78 */	mr r4, r31
/* 8010FCD8  48 04 EF E1 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010FCDC  48 00 00 1C */	b lbl_8010FCF8
lbl_8010FCE0:
/* 8010FCE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010FCE4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010FCE8  38 64 5B 54 */	addi r3, r4, 0x5b54
/* 8010FCEC  80 84 5B 64 */	lwz r4, 0x5b64(r4)
/* 8010FCF0  4B F6 3C 9D */	bl convPId__11dAttCatch_cFUi
/* 8010FCF4  7C 7F 1B 78 */	mr r31, r3
lbl_8010FCF8:
/* 8010FCF8  28 1F 00 00 */	cmplwi r31, 0
/* 8010FCFC  41 82 00 30 */	beq lbl_8010FD2C
/* 8010FD00  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 8010FD04  C0 3D 38 38 */	lfs f1, 0x3838(r29)
/* 8010FD08  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 8010FD0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FD10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8010FD14  40 81 00 0C */	ble lbl_8010FD20
/* 8010FD18  38 60 00 00 */	li r3, 0
/* 8010FD1C  48 00 00 08 */	b lbl_8010FD24
lbl_8010FD20:
/* 8010FD20  38 60 00 01 */	li r3, 1
lbl_8010FD24:
/* 8010FD24  AB DF 00 08 */	lha r30, 8(r31)
/* 8010FD28  48 00 00 40 */	b lbl_8010FD68
lbl_8010FD2C:
/* 8010FD2C  88 1D 2F BC */	lbz r0, 0x2fbc(r29)
/* 8010FD30  28 00 00 0B */	cmplwi r0, 0xb
/* 8010FD34  41 82 00 2C */	beq lbl_8010FD60
/* 8010FD38  28 00 00 06 */	cmplwi r0, 6
/* 8010FD3C  41 82 00 24 */	beq lbl_8010FD60
/* 8010FD40  C0 5D 33 B4 */	lfs f2, 0x33b4(r29)
/* 8010FD44  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8010FD48  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8010FD4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8010FD50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8010FD54  40 81 00 0C */	ble lbl_8010FD60
/* 8010FD58  38 60 00 01 */	li r3, 1
/* 8010FD5C  48 00 00 08 */	b lbl_8010FD64
lbl_8010FD60:
/* 8010FD60  38 60 00 00 */	li r3, 0
lbl_8010FD64:
/* 8010FD64  3B C0 00 FD */	li r30, 0xfd
lbl_8010FD68:
/* 8010FD68  7F C0 07 34 */	extsh r0, r30
/* 8010FD6C  2C 00 01 1E */	cmpwi r0, 0x11e
/* 8010FD70  41 82 00 20 */	beq lbl_8010FD90
/* 8010FD74  38 1E FE DE */	addi r0, r30, -290
/* 8010FD78  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8010FD7C  28 00 00 01 */	cmplwi r0, 1
/* 8010FD80  40 81 00 10 */	ble lbl_8010FD90
/* 8010FD84  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010FD88  28 00 00 48 */	cmplwi r0, 0x48
/* 8010FD8C  40 82 00 FC */	bne lbl_8010FE88
lbl_8010FD90:
/* 8010FD90  7F A3 EB 78 */	mr r3, r29
/* 8010FD94  38 80 01 0A */	li r4, 0x10a
/* 8010FD98  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FD9C  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FDA0  38 A5 00 A0 */	addi r5, r5, 0xa0
/* 8010FDA4  4B F9 D3 51 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010FDA8  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 8010FDAC  28 00 00 48 */	cmplwi r0, 0x48
/* 8010FDB0  40 82 00 3C */	bne lbl_8010FDEC
/* 8010FDB4  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8010FDB8  64 00 10 00 */	oris r0, r0, 0x1000
/* 8010FDBC  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8010FDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010FDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010FDC8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8010FDCC  38 63 02 10 */	addi r3, r3, 0x210
/* 8010FDD0  80 9D 31 C4 */	lwz r4, 0x31c4(r29)
/* 8010FDD4  4B F3 BB 45 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8010FDD8  28 03 00 00 */	cmplwi r3, 0
/* 8010FDDC  41 82 00 10 */	beq lbl_8010FDEC
/* 8010FDE0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8010FDE4  60 00 00 04 */	ori r0, r0, 4
/* 8010FDE8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8010FDEC:
/* 8010FDEC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FDF0  38 63 E9 0C */	addi r3, r3, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FDF4  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 8010FDF8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8010FDFC  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 8010FE00  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 8010FE04  28 1F 00 00 */	cmplwi r31, 0
/* 8010FE08  41 82 00 64 */	beq lbl_8010FE6C
/* 8010FE0C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8010FE10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8010FE14  48 16 0D F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8010FE18  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 8010FE1C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010FE20  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8010FE24  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010FE28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010FE2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8010FE30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8010FE34  7C 03 04 2E */	lfsx f0, r3, r0
/* 8010FE38  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8010FE3C  C0 42 93 10 */	lfs f2, lit_7306(r2)
/* 8010FE40  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010FE44  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FE48  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8010FE4C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010FE50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010FE54  7C 63 02 14 */	add r3, r3, r0
/* 8010FE58  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010FE5C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8010FE60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010FE64  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FE68  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_8010FE6C:
/* 8010FE6C  7F C0 07 34 */	extsh r0, r30
/* 8010FE70  2C 00 01 1E */	cmpwi r0, 0x11e
/* 8010FE74  40 82 00 80 */	bne lbl_8010FEF4
/* 8010FE78  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 8010FE7C  60 00 20 00 */	ori r0, r0, 0x2000
/* 8010FE80  90 1D 31 A0 */	stw r0, 0x31a0(r29)
/* 8010FE84  48 00 00 70 */	b lbl_8010FEF4
lbl_8010FE88:
/* 8010FE88  2C 03 00 00 */	cmpwi r3, 0
/* 8010FE8C  41 82 00 38 */	beq lbl_8010FEC4
/* 8010FE90  7F A3 EB 78 */	mr r3, r29
/* 8010FE94  38 80 01 08 */	li r4, 0x108
/* 8010FE98  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FE9C  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FEA0  38 A5 00 50 */	addi r5, r5, 0x50
/* 8010FEA4  4B F9 D2 51 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010FEA8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FEAC  38 63 E9 0C */	addi r3, r3, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FEB0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8010FEB4  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8010FEB8  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 8010FEBC  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 8010FEC0  48 00 00 34 */	b lbl_8010FEF4
lbl_8010FEC4:
/* 8010FEC4  7F A3 EB 78 */	mr r3, r29
/* 8010FEC8  38 80 01 07 */	li r4, 0x107
/* 8010FECC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FED0  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FED4  38 A5 00 64 */	addi r5, r5, 0x64
/* 8010FED8  4B F9 D2 1D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010FEDC  3C 60 80 39 */	lis r3, m__20daAlinkHIO_bottle_c0@ha /* 0x8038E90C@ha */
/* 8010FEE0  38 63 E9 0C */	addi r3, r3, m__20daAlinkHIO_bottle_c0@l /* 0x8038E90C@l */
/* 8010FEE4  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8010FEE8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8010FEEC  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 8010FEF0  D0 1D 34 7C */	stfs f0, 0x347c(r29)
lbl_8010FEF4:
/* 8010FEF4  38 00 00 00 */	li r0, 0
/* 8010FEF8  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8010FEFC  7F A3 EB 78 */	mr r3, r29
/* 8010FF00  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001D@ha */
/* 8010FF04  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0001001D@l */
/* 8010FF08  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8010FF0C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010FF10  7D 89 03 A6 */	mtctr r12
/* 8010FF14  4E 80 04 21 */	bctrl 
/* 8010FF18  7F A3 EB 78 */	mr r3, r29
/* 8010FF1C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020020@ha */
/* 8010FF20  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x00020020@l */
/* 8010FF24  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8010FF28  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8010FF2C  7D 89 03 A6 */	mtctr r12
/* 8010FF30  4E 80 04 21 */	bctrl 
/* 8010FF34  38 00 00 00 */	li r0, 0
/* 8010FF38  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8010FF3C  38 60 00 01 */	li r3, 1
lbl_8010FF40:
/* 8010FF40  39 61 00 20 */	addi r11, r1, 0x20
/* 8010FF44  48 25 22 E5 */	bl _restgpr_29
/* 8010FF48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010FF4C  7C 08 03 A6 */	mtlr r0
/* 8010FF50  38 21 00 20 */	addi r1, r1, 0x20
/* 8010FF54  4E 80 00 20 */	blr 
