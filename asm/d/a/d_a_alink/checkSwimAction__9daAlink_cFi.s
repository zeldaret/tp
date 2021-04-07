lbl_80102B1C:
/* 80102B1C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80102B20  7C 08 02 A6 */	mflr r0
/* 80102B24  90 01 00 64 */	stw r0, 0x64(r1)
/* 80102B28  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80102B2C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80102B30  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80102B34  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80102B38  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80102B3C  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80102B40  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 80102B44  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 80102B48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80102B4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80102B50  7C 7E 1B 78 */	mr r30, r3
/* 80102B54  7C 9F 23 78 */	mr r31, r4
/* 80102B58  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80102B5C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80102B60  41 82 00 34 */	beq lbl_80102B94
/* 80102B64  38 7E 1A 60 */	addi r3, r30, 0x1a60
/* 80102B68  38 80 00 00 */	li r4, 0
/* 80102B6C  4B F9 F6 75 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 80102B70  7C 60 07 34 */	extsh r0, r3
/* 80102B74  2C 00 00 77 */	cmpwi r0, 0x77
/* 80102B78  40 82 00 0C */	bne lbl_80102B84
/* 80102B7C  C3 E2 93 68 */	lfs f31, lit_8472(r2)
/* 80102B80  48 00 00 20 */	b lbl_80102BA0
lbl_80102B84:
/* 80102B84  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80102B88  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80102B8C  C3 E3 00 48 */	lfs f31, 0x48(r3)
/* 80102B90  48 00 00 10 */	b lbl_80102BA0
lbl_80102B94:
/* 80102B94  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80102B98  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80102B9C  C3 E3 00 60 */	lfs f31, 0x60(r3)
lbl_80102BA0:
/* 80102BA0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80102BA4  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80102BA8  41 82 03 8C */	beq lbl_80102F34
/* 80102BAC  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 80102BB0  40 82 03 84 */	bne lbl_80102F34
/* 80102BB4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80102BB8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80102BBC  40 82 03 78 */	bne lbl_80102F34
/* 80102BC0  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80102BC4  28 00 00 CC */	cmplwi r0, 0xcc
/* 80102BC8  41 82 03 6C */	beq lbl_80102F34
/* 80102BCC  28 00 01 25 */	cmplwi r0, 0x125
/* 80102BD0  41 82 00 0C */	beq lbl_80102BDC
/* 80102BD4  28 00 01 26 */	cmplwi r0, 0x126
/* 80102BD8  40 82 00 10 */	bne lbl_80102BE8
lbl_80102BDC:
/* 80102BDC  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 80102BE0  2C 00 00 00 */	cmpwi r0, 0
/* 80102BE4  40 82 03 50 */	bne lbl_80102F34
lbl_80102BE8:
/* 80102BE8  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 80102BEC  28 00 00 11 */	cmplwi r0, 0x11
/* 80102BF0  41 82 03 44 */	beq lbl_80102F34
/* 80102BF4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80102BF8  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80102BFC  41 82 00 38 */	beq lbl_80102C34
/* 80102C00  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80102C04  41 82 00 14 */	beq lbl_80102C18
/* 80102C08  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80102C0C  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80102C10  C3 A3 00 50 */	lfs f29, 0x50(r3)
/* 80102C14  48 00 00 10 */	b lbl_80102C24
lbl_80102C18:
/* 80102C18  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80102C1C  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80102C20  C3 A3 00 80 */	lfs f29, 0x80(r3)
lbl_80102C24:
/* 80102C24  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80102C28  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80102C2C  C3 C3 00 58 */	lfs f30, 0x58(r3)
/* 80102C30  48 00 00 1C */	b lbl_80102C4C
lbl_80102C34:
/* 80102C34  7F C3 F3 78 */	mr r3, r30
/* 80102C38  4B FF ED E1 */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80102C3C  FF A0 08 90 */	fmr f29, f1
/* 80102C40  7F C3 F3 78 */	mr r3, r30
/* 80102C44  4B FF EE 65 */	bl getSwimMaxFallSpeed__9daAlink_cCFv
/* 80102C48  FF C0 08 90 */	fmr f30, f1
lbl_80102C4C:
/* 80102C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80102C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80102C54  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 80102C58  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80102C5C  41 82 00 0C */	beq lbl_80102C68
/* 80102C60  C3 9E 05 E4 */	lfs f28, 0x5e4(r30)
/* 80102C64  48 00 00 24 */	b lbl_80102C88
lbl_80102C68:
/* 80102C68  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80102C6C  41 82 00 18 */	beq lbl_80102C84
/* 80102C70  C0 22 95 D0 */	lfs f1, lit_27005(r2)
/* 80102C74  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80102C78  EC 01 00 2A */	fadds f0, f1, f0
/* 80102C7C  EF 80 F8 28 */	fsubs f28, f0, f31
/* 80102C80  48 00 00 08 */	b lbl_80102C88
lbl_80102C84:
/* 80102C84  C3 9E 04 D4 */	lfs f28, 0x4d4(r30)
lbl_80102C88:
/* 80102C88  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 80102C8C  EC 01 E0 28 */	fsubs f0, f1, f28
/* 80102C90  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80102C94  41 81 00 28 */	bgt lbl_80102CBC
/* 80102C98  2C 1F 00 00 */	cmpwi r31, 0
/* 80102C9C  41 82 03 80 */	beq lbl_8010301C
/* 80102CA0  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80102CA4  4C 41 13 82 */	cror 2, 1, 2
/* 80102CA8  40 82 03 74 */	bne lbl_8010301C
/* 80102CAC  C0 1E 1A 08 */	lfs f0, 0x1a08(r30)
/* 80102CB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80102CB4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80102CB8  40 81 03 64 */	ble lbl_8010301C
lbl_80102CBC:
/* 80102CBC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80102CC0  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80102CC4  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80102CC8  38 60 00 01 */	li r3, 1
/* 80102CCC  88 1E 2D 73 */	lbz r0, 0x2d73(r30)
/* 80102CD0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80102CD4  98 1E 2D 73 */	stb r0, 0x2d73(r30)
/* 80102CD8  D3 BE 05 94 */	stfs f29, 0x594(r30)
/* 80102CDC  2C 1F 00 00 */	cmpwi r31, 0
/* 80102CE0  40 82 00 14 */	bne lbl_80102CF4
/* 80102CE4  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80102CE8  C0 02 94 AC */	lfs f0, lit_16641(r2)
/* 80102CEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80102CF0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_80102CF4:
/* 80102CF4  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 80102CF8  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 80102CFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80102D00  4C 41 13 82 */	cror 2, 1, 2
/* 80102D04  40 82 00 08 */	bne lbl_80102D0C
/* 80102D08  D0 3E 33 98 */	stfs f1, 0x3398(r30)
lbl_80102D0C:
/* 80102D0C  7F C3 F3 78 */	mr r3, r30
/* 80102D10  4B FF EC 25 */	bl swimDeleteItem__9daAlink_cFv
/* 80102D14  7F C3 F3 78 */	mr r3, r30
/* 80102D18  4B FB 66 29 */	bl checkEquipAnime__9daAlink_cCFv
/* 80102D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80102D20  41 82 00 14 */	beq lbl_80102D34
/* 80102D24  7F C3 F3 78 */	mr r3, r30
/* 80102D28  38 80 00 02 */	li r4, 2
/* 80102D2C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80102D30  4B FA A9 F5 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80102D34:
/* 80102D34  38 60 00 00 */	li r3, 0
/* 80102D38  B0 7E 30 80 */	sth r3, 0x3080(r30)
/* 80102D3C  2C 1F 00 00 */	cmpwi r31, 0
/* 80102D40  41 82 00 44 */	beq lbl_80102D84
/* 80102D44  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80102D48  C0 1E 33 B4 */	lfs f0, 0x33b4(r30)
/* 80102D4C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80102D50  C0 02 94 10 */	lfs f0, lit_14615(r2)
/* 80102D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102D58  40 81 00 24 */	ble lbl_80102D7C
/* 80102D5C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80102D60  60 00 01 00 */	ori r0, r0, 0x100
/* 80102D64  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80102D68  88 1E 2D 73 */	lbz r0, 0x2d73(r30)
/* 80102D6C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80102D70  98 1E 2D 73 */	stb r0, 0x2d73(r30)
/* 80102D74  38 60 00 00 */	li r3, 0
/* 80102D78  48 00 02 A8 */	b lbl_80103020
lbl_80102D7C:
/* 80102D7C  38 60 00 01 */	li r3, 1
/* 80102D80  48 00 02 A0 */	b lbl_80103020
lbl_80102D84:
/* 80102D84  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80102D88  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80102D8C  41 82 01 44 */	beq lbl_80102ED0
/* 80102D90  7F C3 F3 78 */	mr r3, r30
/* 80102D94  4B FF EF 25 */	bl checkPossibleWaterInMode__9daAlink_cCFv
/* 80102D98  2C 03 00 00 */	cmpwi r3, 0
/* 80102D9C  40 82 01 34 */	bne lbl_80102ED0
/* 80102DA0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80102DA4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80102DA8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80102DAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80102DB0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80102DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80102DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80102DBC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80102DC0  38 80 00 02 */	li r4, 2
/* 80102DC4  38 A0 00 01 */	li r5, 1
/* 80102DC8  38 C1 00 08 */	addi r6, r1, 8
/* 80102DCC  4B F6 CC 59 */	bl StartShock__12dVibration_cFii4cXyz
/* 80102DD0  EC 1C F8 2A */	fadds f0, f28, f31
/* 80102DD4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80102DD8  C0 22 94 AC */	lfs f1, lit_16641(r2)
/* 80102DDC  C0 1E 35 2C */	lfs f0, 0x352c(r30)
/* 80102DE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80102DE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80102DE8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80102DEC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80102DF0  40 80 00 0C */	bge lbl_80102DFC
/* 80102DF4  D3 DE 04 FC */	stfs f30, 0x4fc(r30)
/* 80102DF8  48 00 00 14 */	b lbl_80102E0C
lbl_80102DFC:
/* 80102DFC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80102E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102E04  40 81 00 08 */	ble lbl_80102E0C
/* 80102E08  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80102E0C:
/* 80102E0C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80102E10  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80102E14  41 82 00 60 */	beq lbl_80102E74
/* 80102E18  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80102E1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80102E20  41 82 00 44 */	beq lbl_80102E64
/* 80102E24  48 16 4A 49 */	bl cM_rnd__Fv
/* 80102E28  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 80102E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102E30  40 80 00 18 */	bge lbl_80102E48
/* 80102E34  38 80 00 76 */	li r4, 0x76
/* 80102E38  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80102E3C  60 00 00 20 */	ori r0, r0, 0x20
/* 80102E40  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80102E44  48 00 00 14 */	b lbl_80102E58
lbl_80102E48:
/* 80102E48  38 80 00 77 */	li r4, 0x77
/* 80102E4C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80102E50  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80102E54  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80102E58:
/* 80102E58  7F C3 F3 78 */	mr r3, r30
/* 80102E5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80102E60  48 03 67 55 */	bl setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf
lbl_80102E64:
/* 80102E64  7F C3 F3 78 */	mr r3, r30
/* 80102E68  38 80 00 01 */	li r4, 1
/* 80102E6C  48 03 56 C1 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 80102E70  48 00 01 B0 */	b lbl_80103020
lbl_80102E74:
/* 80102E74  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80102E78  28 00 00 16 */	cmplwi r0, 0x16
/* 80102E7C  40 82 00 44 */	bne lbl_80102EC0
/* 80102E80  7F C3 F3 78 */	mr r3, r30
/* 80102E84  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200B1@ha */
/* 80102E88  38 84 00 B1 */	addi r4, r4, 0x00B1 /* 0x000200B1@l */
/* 80102E8C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80102E90  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80102E94  7D 89 03 A6 */	mtctr r12
/* 80102E98  4E 80 04 21 */	bctrl 
/* 80102E9C  7F C3 F3 78 */	mr r3, r30
/* 80102EA0  4B FB CF 11 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80102EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80102EA8  41 82 00 0C */	beq lbl_80102EB4
/* 80102EAC  38 00 00 1E */	li r0, 0x1e
/* 80102EB0  B0 1E 30 00 */	sth r0, 0x3000(r30)
lbl_80102EB4:
/* 80102EB4  7F C3 F3 78 */	mr r3, r30
/* 80102EB8  48 00 17 B9 */	bl procSwimMoveInit__9daAlink_cFv
/* 80102EBC  48 00 01 64 */	b lbl_80103020
lbl_80102EC0:
/* 80102EC0  7F C3 F3 78 */	mr r3, r30
/* 80102EC4  38 80 00 01 */	li r4, 1
/* 80102EC8  48 00 14 31 */	bl procSwimWaitInit__9daAlink_cFi
/* 80102ECC  48 00 01 54 */	b lbl_80103020
lbl_80102ED0:
/* 80102ED0  7F C3 F3 78 */	mr r3, r30
/* 80102ED4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80102ED8  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80102EDC  7D 89 03 A6 */	mtctr r12
/* 80102EE0  4E 80 04 21 */	bctrl 
/* 80102EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80102EE8  40 82 00 14 */	bne lbl_80102EFC
/* 80102EEC  7F C3 F3 78 */	mr r3, r30
/* 80102EF0  4B FF ED C9 */	bl checkPossibleWaterInMode__9daAlink_cCFv
/* 80102EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80102EF8  41 82 00 18 */	beq lbl_80102F10
lbl_80102EFC:
/* 80102EFC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80102F00  64 00 00 80 */	oris r0, r0, 0x80
/* 80102F04  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80102F08  38 60 00 00 */	li r3, 0
/* 80102F0C  48 00 01 14 */	b lbl_80103020
lbl_80102F10:
/* 80102F10  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80102F14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80102F18  41 82 00 10 */	beq lbl_80102F28
/* 80102F1C  7F C3 F3 78 */	mr r3, r30
/* 80102F20  48 03 54 B9 */	bl procWolfSwimUpInit__9daAlink_cFv
/* 80102F24  48 00 00 FC */	b lbl_80103020
lbl_80102F28:
/* 80102F28  7F C3 F3 78 */	mr r3, r30
/* 80102F2C  48 00 11 CD */	bl procSwimUpInit__9daAlink_cFv
/* 80102F30  48 00 00 F0 */	b lbl_80103020
lbl_80102F34:
/* 80102F34  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80102F38  40 82 00 B8 */	bne lbl_80102FF0
/* 80102F3C  7F C3 F3 78 */	mr r3, r30
/* 80102F40  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80102F44  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80102F48  7D 89 03 A6 */	mtctr r12
/* 80102F4C  4E 80 04 21 */	bctrl 
/* 80102F50  2C 03 00 00 */	cmpwi r3, 0
/* 80102F54  40 82 00 9C */	bne lbl_80102FF0
/* 80102F58  7F C3 F3 78 */	mr r3, r30
/* 80102F5C  4B FF ED 5D */	bl checkPossibleWaterInMode__9daAlink_cCFv
/* 80102F60  2C 03 00 00 */	cmpwi r3, 0
/* 80102F64  40 82 00 8C */	bne lbl_80102FF0
/* 80102F68  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80102F6C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80102F70  40 82 00 80 */	bne lbl_80102FF0
/* 80102F74  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80102F78  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80102F7C  41 82 00 44 */	beq lbl_80102FC0
/* 80102F80  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 80102F84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80102F88  EC 01 00 28 */	fsubs f0, f1, f0
/* 80102F8C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80102F90  40 81 00 30 */	ble lbl_80102FC0
/* 80102F94  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80102F98  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80102F9C  41 82 00 14 */	beq lbl_80102FB0
/* 80102FA0  7F C3 F3 78 */	mr r3, r30
/* 80102FA4  38 80 00 00 */	li r4, 0
/* 80102FA8  48 03 55 85 */	bl procWolfSwimWaitInit__9daAlink_cFi
/* 80102FAC  48 00 00 74 */	b lbl_80103020
lbl_80102FB0:
/* 80102FB0  7F C3 F3 78 */	mr r3, r30
/* 80102FB4  38 80 00 00 */	li r4, 0
/* 80102FB8  48 00 13 41 */	bl procSwimWaitInit__9daAlink_cFi
/* 80102FBC  48 00 00 64 */	b lbl_80103020
lbl_80102FC0:
/* 80102FC0  7F C3 F3 78 */	mr r3, r30
/* 80102FC4  38 80 00 00 */	li r4, 0
/* 80102FC8  48 00 03 01 */	bl swimOutAfter__9daAlink_cFi
/* 80102FCC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80102FD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80102FD4  41 82 00 10 */	beq lbl_80102FE4
/* 80102FD8  7F C3 F3 78 */	mr r3, r30
/* 80102FDC  48 02 A1 CD */	bl procWolfWaitInit__9daAlink_cFv
/* 80102FE0  48 00 00 40 */	b lbl_80103020
lbl_80102FE4:
/* 80102FE4  7F C3 F3 78 */	mr r3, r30
/* 80102FE8  4B FC 03 D1 */	bl procWaitInit__9daAlink_cFv
/* 80102FEC  48 00 00 34 */	b lbl_80103020
lbl_80102FF0:
/* 80102FF0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80102FF4  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80102FF8  41 82 00 24 */	beq lbl_8010301C
/* 80102FFC  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80103000  28 00 01 53 */	cmplwi r0, 0x153
/* 80103004  41 82 00 18 */	beq lbl_8010301C
/* 80103008  28 00 01 50 */	cmplwi r0, 0x150
/* 8010300C  41 82 00 10 */	beq lbl_8010301C
/* 80103010  7F C3 F3 78 */	mr r3, r30
/* 80103014  48 00 03 B9 */	bl checkSwimOutAction__9daAlink_cFv
/* 80103018  48 00 00 08 */	b lbl_80103020
lbl_8010301C:
/* 8010301C  38 60 00 00 */	li r3, 0
lbl_80103020:
/* 80103020  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80103024  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80103028  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8010302C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80103030  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80103034  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80103038  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 8010303C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 80103040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80103044  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80103048  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010304C  7C 08 03 A6 */	mtlr r0
/* 80103050  38 21 00 60 */	addi r1, r1, 0x60
/* 80103054  4E 80 00 20 */	blr 
