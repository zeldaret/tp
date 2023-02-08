lbl_80CBB370:
/* 80CBB370  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CBB374  7C 08 02 A6 */	mflr r0
/* 80CBB378  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CBB37C  39 61 00 70 */	addi r11, r1, 0x70
/* 80CBB380  4B 6A 6E 4D */	bl _savegpr_25
/* 80CBB384  7C 7A 1B 78 */	mr r26, r3
/* 80CBB388  3C 60 80 CC */	lis r3, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CBB38C  3B A3 C3 68 */	addi r29, r3, l_cull_box@l /* 0x80CBC368@l */
/* 80CBB390  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CBB394  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80CBB398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBB39C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBB3A0  83 3C 5D AC */	lwz r25, 0x5dac(r28)
/* 80CBB3A4  7F 83 E3 78 */	mr r3, r28
/* 80CBB3A8  7F 64 DB 78 */	mr r4, r27
/* 80CBB3AC  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CBB3B0  7C 05 07 74 */	extsb r5, r0
/* 80CBB3B4  4B 37 9F AD */	bl isSwitch__10dSv_info_cCFii
/* 80CBB3B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB3BC  40 82 00 0C */	bne lbl_80CBB3C8
/* 80CBB3C0  28 1B 00 FF */	cmplwi r27, 0xff
/* 80CBB3C4  40 82 04 9C */	bne lbl_80CBB860
lbl_80CBB3C8:
/* 80CBB3C8  7F 43 D3 78 */	mr r3, r26
/* 80CBB3CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBB3D0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CBB3D4  4B FF F4 D5 */	bl checkAreaL__12daObjRgate_cFPC4cXyzPC4cXyz
/* 80CBB3D8  7C 7E 1B 78 */	mr r30, r3
/* 80CBB3DC  7F 43 D3 78 */	mr r3, r26
/* 80CBB3E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBB3E4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CBB3E8  4B FF F8 51 */	bl checkAreaR__12daObjRgate_cFPC4cXyzPC4cXyz
/* 80CBB3EC  7C 7F 1B 78 */	mr r31, r3
/* 80CBB3F0  AB 9A 0B 9C */	lha r28, 0xb9c(r26)
/* 80CBB3F4  AB 7A 0B 9E */	lha r27, 0xb9e(r26)
/* 80CBB3F8  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80CBB3FC  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80CBB400  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CBB404  41 82 00 8C */	beq lbl_80CBB490
/* 80CBB408  2C 1E 00 01 */	cmpwi r30, 1
/* 80CBB40C  40 82 00 44 */	bne lbl_80CBB450
/* 80CBB410  7F 43 D3 78 */	mr r3, r26
/* 80CBB414  7F 24 CB 78 */	mr r4, r25
/* 80CBB418  4B FF FC D9 */	bl checkDirL__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB41C  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB420  41 82 00 20 */	beq lbl_80CBB440
/* 80CBB424  40 80 00 24 */	bge lbl_80CBB448
/* 80CBB428  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB42C  40 80 00 08 */	bge lbl_80CBB434
/* 80CBB430  48 00 00 18 */	b lbl_80CBB448
lbl_80CBB434:
/* 80CBB434  38 00 01 F4 */	li r0, 0x1f4
/* 80CBB438  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
/* 80CBB43C  48 00 00 0C */	b lbl_80CBB448
lbl_80CBB440:
/* 80CBB440  38 00 FE 0C */	li r0, -500
/* 80CBB444  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB448:
/* 80CBB448  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80CBB44C  D0 1A 0B B0 */	stfs f0, 0xbb0(r26)
lbl_80CBB450:
/* 80CBB450  2C 1F 00 01 */	cmpwi r31, 1
/* 80CBB454  40 82 00 3C */	bne lbl_80CBB490
/* 80CBB458  7F 43 D3 78 */	mr r3, r26
/* 80CBB45C  7F 24 CB 78 */	mr r4, r25
/* 80CBB460  4B FF FD 21 */	bl checkDirR__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB464  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB468  41 82 00 20 */	beq lbl_80CBB488
/* 80CBB46C  40 80 00 24 */	bge lbl_80CBB490
/* 80CBB470  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB474  40 80 00 08 */	bge lbl_80CBB47C
/* 80CBB478  48 00 00 18 */	b lbl_80CBB490
lbl_80CBB47C:
/* 80CBB47C  38 00 FE 0C */	li r0, -500
/* 80CBB480  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
/* 80CBB484  48 00 00 0C */	b lbl_80CBB490
lbl_80CBB488:
/* 80CBB488  38 00 01 F4 */	li r0, 0x1f4
/* 80CBB48C  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB490:
/* 80CBB490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBB494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBB498  83 23 5D B8 */	lwz r25, 0x5db8(r3)
/* 80CBB49C  28 19 00 00 */	cmplwi r25, 0
/* 80CBB4A0  41 82 00 9C */	beq lbl_80CBB53C
/* 80CBB4A4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80CBB4A8  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80CBB4AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CBB4B0  41 82 00 8C */	beq lbl_80CBB53C
/* 80CBB4B4  2C 1E 00 03 */	cmpwi r30, 3
/* 80CBB4B8  40 82 00 44 */	bne lbl_80CBB4FC
/* 80CBB4BC  7F 43 D3 78 */	mr r3, r26
/* 80CBB4C0  7F 24 CB 78 */	mr r4, r25
/* 80CBB4C4  4B FF FC 2D */	bl checkDirL__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB4C8  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB4CC  41 82 00 20 */	beq lbl_80CBB4EC
/* 80CBB4D0  40 80 00 24 */	bge lbl_80CBB4F4
/* 80CBB4D4  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB4D8  40 80 00 08 */	bge lbl_80CBB4E0
/* 80CBB4DC  48 00 00 18 */	b lbl_80CBB4F4
lbl_80CBB4E0:
/* 80CBB4E0  38 00 03 20 */	li r0, 0x320
/* 80CBB4E4  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
/* 80CBB4E8  48 00 00 0C */	b lbl_80CBB4F4
lbl_80CBB4EC:
/* 80CBB4EC  38 00 FC E0 */	li r0, -800
/* 80CBB4F0  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB4F4:
/* 80CBB4F4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80CBB4F8  D0 1A 0B B0 */	stfs f0, 0xbb0(r26)
lbl_80CBB4FC:
/* 80CBB4FC  2C 1F 00 03 */	cmpwi r31, 3
/* 80CBB500  40 82 00 3C */	bne lbl_80CBB53C
/* 80CBB504  7F 43 D3 78 */	mr r3, r26
/* 80CBB508  7F 24 CB 78 */	mr r4, r25
/* 80CBB50C  4B FF FC 75 */	bl checkDirR__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB510  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB514  41 82 00 20 */	beq lbl_80CBB534
/* 80CBB518  40 80 00 24 */	bge lbl_80CBB53C
/* 80CBB51C  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB520  40 80 00 08 */	bge lbl_80CBB528
/* 80CBB524  48 00 00 18 */	b lbl_80CBB53C
lbl_80CBB528:
/* 80CBB528  38 00 FC E0 */	li r0, -800
/* 80CBB52C  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
/* 80CBB530  48 00 00 0C */	b lbl_80CBB53C
lbl_80CBB534:
/* 80CBB534  38 00 03 20 */	li r0, 0x320
/* 80CBB538  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB53C:
/* 80CBB53C  3C 60 80 CC */	lis r3, search_coach__FPvPv@ha /* 0x80CB9C98@ha */
/* 80CBB540  38 63 9C 98 */	addi r3, r3, search_coach__FPvPv@l /* 0x80CB9C98@l */
/* 80CBB544  7F 44 D3 78 */	mr r4, r26
/* 80CBB548  4B 35 E2 B1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CBB54C  7C 79 1B 79 */	or. r25, r3, r3
/* 80CBB550  41 82 00 9C */	beq lbl_80CBB5EC
/* 80CBB554  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80CBB558  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80CBB55C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CBB560  41 82 00 8C */	beq lbl_80CBB5EC
/* 80CBB564  2C 1E 00 02 */	cmpwi r30, 2
/* 80CBB568  40 82 00 44 */	bne lbl_80CBB5AC
/* 80CBB56C  7F 43 D3 78 */	mr r3, r26
/* 80CBB570  7F 24 CB 78 */	mr r4, r25
/* 80CBB574  4B FF FB 7D */	bl checkDirL__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB578  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB57C  41 82 00 20 */	beq lbl_80CBB59C
/* 80CBB580  40 80 00 24 */	bge lbl_80CBB5A4
/* 80CBB584  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB588  40 80 00 08 */	bge lbl_80CBB590
/* 80CBB58C  48 00 00 18 */	b lbl_80CBB5A4
lbl_80CBB590:
/* 80CBB590  38 00 03 84 */	li r0, 0x384
/* 80CBB594  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
/* 80CBB598  48 00 00 0C */	b lbl_80CBB5A4
lbl_80CBB59C:
/* 80CBB59C  38 00 FC 7C */	li r0, -900
/* 80CBB5A0  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB5A4:
/* 80CBB5A4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80CBB5A8  D0 1A 0B B0 */	stfs f0, 0xbb0(r26)
lbl_80CBB5AC:
/* 80CBB5AC  2C 1F 00 02 */	cmpwi r31, 2
/* 80CBB5B0  40 82 00 3C */	bne lbl_80CBB5EC
/* 80CBB5B4  7F 43 D3 78 */	mr r3, r26
/* 80CBB5B8  7F 24 CB 78 */	mr r4, r25
/* 80CBB5BC  4B FF FB C5 */	bl checkDirR__12daObjRgate_cFP10fopAc_ac_c
/* 80CBB5C0  2C 03 00 01 */	cmpwi r3, 1
/* 80CBB5C4  41 82 00 20 */	beq lbl_80CBB5E4
/* 80CBB5C8  40 80 00 24 */	bge lbl_80CBB5EC
/* 80CBB5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB5D0  40 80 00 08 */	bge lbl_80CBB5D8
/* 80CBB5D4  48 00 00 18 */	b lbl_80CBB5EC
lbl_80CBB5D8:
/* 80CBB5D8  38 00 FC 7C */	li r0, -900
/* 80CBB5DC  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
/* 80CBB5E0  48 00 00 0C */	b lbl_80CBB5EC
lbl_80CBB5E4:
/* 80CBB5E4  38 00 03 84 */	li r0, 0x384
/* 80CBB5E8  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB5EC:
/* 80CBB5EC  7F 83 E3 78 */	mr r3, r28
/* 80CBB5F0  4B 6A 9A E1 */	bl abs
/* 80CBB5F4  7C 7C 1B 78 */	mr r28, r3
/* 80CBB5F8  A8 7A 0B 9C */	lha r3, 0xb9c(r26)
/* 80CBB5FC  4B 6A 9A D5 */	bl abs
/* 80CBB600  7C 63 E0 50 */	subf r3, r3, r28
/* 80CBB604  4B 6A 9A CD */	bl abs
/* 80CBB608  2C 03 01 90 */	cmpwi r3, 0x190
/* 80CBB60C  41 81 00 28 */	bgt lbl_80CBB634
/* 80CBB610  7F 63 DB 78 */	mr r3, r27
/* 80CBB614  4B 6A 9A BD */	bl abs
/* 80CBB618  7C 7B 1B 78 */	mr r27, r3
/* 80CBB61C  A8 7A 0B 9E */	lha r3, 0xb9e(r26)
/* 80CBB620  4B 6A 9A B1 */	bl abs
/* 80CBB624  7C 63 D8 50 */	subf r3, r3, r27
/* 80CBB628  4B 6A 9A A9 */	bl abs
/* 80CBB62C  2C 03 01 90 */	cmpwi r3, 0x190
/* 80CBB630  40 81 00 0C */	ble lbl_80CBB63C
lbl_80CBB634:
/* 80CBB634  7F 43 D3 78 */	mr r3, r26
/* 80CBB638  4B FF FC 55 */	bl setCrkSE__12daObjRgate_cFv
lbl_80CBB63C:
/* 80CBB63C  A8 1A 0B 9C */	lha r0, 0xb9c(r26)
/* 80CBB640  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 80CBB644  40 81 00 0C */	ble lbl_80CBB650
/* 80CBB648  38 00 05 DC */	li r0, 0x5dc
/* 80CBB64C  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB650:
/* 80CBB650  A8 1A 0B 9C */	lha r0, 0xb9c(r26)
/* 80CBB654  2C 00 FA 24 */	cmpwi r0, -1500
/* 80CBB658  40 80 00 0C */	bge lbl_80CBB664
/* 80CBB65C  38 00 FA 24 */	li r0, -1500
/* 80CBB660  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB664:
/* 80CBB664  A8 1A 0B 9E */	lha r0, 0xb9e(r26)
/* 80CBB668  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 80CBB66C  40 81 00 0C */	ble lbl_80CBB678
/* 80CBB670  38 00 05 DC */	li r0, 0x5dc
/* 80CBB674  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB678:
/* 80CBB678  A8 1A 0B 9E */	lha r0, 0xb9e(r26)
/* 80CBB67C  2C 00 FA 24 */	cmpwi r0, -1500
/* 80CBB680  40 80 00 0C */	bge lbl_80CBB68C
/* 80CBB684  38 00 FA 24 */	li r0, -1500
/* 80CBB688  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB68C:
/* 80CBB68C  A8 7A 0B 76 */	lha r3, 0xb76(r26)
/* 80CBB690  A8 1A 0B 9C */	lha r0, 0xb9c(r26)
/* 80CBB694  7C 03 02 14 */	add r0, r3, r0
/* 80CBB698  B0 1A 0B 76 */	sth r0, 0xb76(r26)
/* 80CBB69C  A8 1A 0B 76 */	lha r0, 0xb76(r26)
/* 80CBB6A0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80CBB6A4  40 81 00 44 */	ble lbl_80CBB6E8
/* 80CBB6A8  38 00 40 00 */	li r0, 0x4000
/* 80CBB6AC  B0 1A 0B 76 */	sth r0, 0xb76(r26)
/* 80CBB6B0  A8 1A 0B 9C */	lha r0, 0xb9c(r26)
/* 80CBB6B4  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 80CBB6B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBB6BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CBB6C0  3C 00 43 30 */	lis r0, 0x4330
/* 80CBB6C4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80CBB6C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CBB6CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CBB6D0  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80CBB6D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBB6D8  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB6DC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CBB6E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CBB6E4  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB6E8:
/* 80CBB6E8  A8 1A 0B 76 */	lha r0, 0xb76(r26)
/* 80CBB6EC  2C 00 C0 00 */	cmpwi r0, -16384
/* 80CBB6F0  40 80 00 44 */	bge lbl_80CBB734
/* 80CBB6F4  38 00 C0 00 */	li r0, -16384
/* 80CBB6F8  B0 1A 0B 76 */	sth r0, 0xb76(r26)
/* 80CBB6FC  A8 1A 0B 9C */	lha r0, 0xb9c(r26)
/* 80CBB700  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 80CBB704  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBB708  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CBB70C  3C 00 43 30 */	lis r0, 0x4330
/* 80CBB710  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CBB714  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CBB718  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CBB71C  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80CBB720  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBB724  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB728  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CBB72C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CBB730  B0 1A 0B 9C */	sth r0, 0xb9c(r26)
lbl_80CBB734:
/* 80CBB734  A8 7A 0B 74 */	lha r3, 0xb74(r26)
/* 80CBB738  A8 1A 0B 9E */	lha r0, 0xb9e(r26)
/* 80CBB73C  7C 03 02 14 */	add r0, r3, r0
/* 80CBB740  B0 1A 0B 74 */	sth r0, 0xb74(r26)
/* 80CBB744  A8 1A 0B 74 */	lha r0, 0xb74(r26)
/* 80CBB748  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80CBB74C  40 81 00 44 */	ble lbl_80CBB790
/* 80CBB750  38 00 40 00 */	li r0, 0x4000
/* 80CBB754  B0 1A 0B 74 */	sth r0, 0xb74(r26)
/* 80CBB758  A8 1A 0B 9E */	lha r0, 0xb9e(r26)
/* 80CBB75C  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 80CBB760  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBB764  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CBB768  3C 00 43 30 */	lis r0, 0x4330
/* 80CBB76C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CBB770  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CBB774  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CBB778  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80CBB77C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBB780  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB784  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CBB788  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CBB78C  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB790:
/* 80CBB790  A8 1A 0B 74 */	lha r0, 0xb74(r26)
/* 80CBB794  2C 00 C0 00 */	cmpwi r0, -16384
/* 80CBB798  40 80 00 44 */	bge lbl_80CBB7DC
/* 80CBB79C  38 00 C0 00 */	li r0, -16384
/* 80CBB7A0  B0 1A 0B 74 */	sth r0, 0xb74(r26)
/* 80CBB7A4  A8 1A 0B 9E */	lha r0, 0xb9e(r26)
/* 80CBB7A8  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 80CBB7AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBB7B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CBB7B4  3C 00 43 30 */	lis r0, 0x4330
/* 80CBB7B8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CBB7BC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CBB7C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CBB7C4  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80CBB7C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBB7CC  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB7D0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CBB7D4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CBB7D8  B0 1A 0B 9E */	sth r0, 0xb9e(r26)
lbl_80CBB7DC:
/* 80CBB7DC  38 7A 0B 9C */	addi r3, r26, 0xb9c
/* 80CBB7E0  38 80 00 00 */	li r4, 0
/* 80CBB7E4  38 A0 00 0A */	li r5, 0xa
/* 80CBB7E8  38 C0 00 64 */	li r6, 0x64
/* 80CBB7EC  38 E0 00 0A */	li r7, 0xa
/* 80CBB7F0  4B 5B 4D 51 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBB7F4  38 7A 0B 9E */	addi r3, r26, 0xb9e
/* 80CBB7F8  38 80 00 00 */	li r4, 0
/* 80CBB7FC  38 A0 00 0A */	li r5, 0xa
/* 80CBB800  38 C0 00 64 */	li r6, 0x64
/* 80CBB804  38 E0 00 0A */	li r7, 0xa
/* 80CBB808  4B 5B 4D 39 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBB80C  38 7A 0B AE */	addi r3, r26, 0xbae
/* 80CBB810  38 80 30 00 */	li r4, 0x3000
/* 80CBB814  38 A0 00 0A */	li r5, 0xa
/* 80CBB818  38 C0 04 00 */	li r6, 0x400
/* 80CBB81C  38 E0 01 00 */	li r7, 0x100
/* 80CBB820  4B 5B 4D 21 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBB824  38 7A 0B B4 */	addi r3, r26, 0xbb4
/* 80CBB828  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 80CBB82C  C0 5D 00 B8 */	lfs f2, 0xb8(r29)
/* 80CBB830  4B 5B 4F 11 */	bl cLib_chaseF__FPfff
/* 80CBB834  38 7A 0B C0 */	addi r3, r26, 0xbc0
/* 80CBB838  C0 3D 00 D0 */	lfs f1, 0xd0(r29)
/* 80CBB83C  C0 5D 00 B8 */	lfs f2, 0xb8(r29)
/* 80CBB840  4B 5B 4F 01 */	bl cLib_chaseF__FPfff
/* 80CBB844  38 7A 0B CC */	addi r3, r26, 0xbcc
/* 80CBB848  38 80 7F FF */	li r4, 0x7fff
/* 80CBB84C  38 A0 00 0A */	li r5, 0xa
/* 80CBB850  38 C0 04 00 */	li r6, 0x400
/* 80CBB854  38 E0 01 00 */	li r7, 0x100
/* 80CBB858  4B 5B 4C E9 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBB85C  48 00 01 9C */	b lbl_80CBB9F8
lbl_80CBB860:
/* 80CBB860  7F 43 D3 78 */	mr r3, r26
/* 80CBB864  38 81 00 14 */	addi r4, r1, 0x14
/* 80CBB868  38 A1 00 08 */	addi r5, r1, 8
/* 80CBB86C  4B FF F0 3D */	bl checkAreaL__12daObjRgate_cFPC4cXyzPC4cXyz
/* 80CBB870  7C 7B 1B 78 */	mr r27, r3
/* 80CBB874  7F 43 D3 78 */	mr r3, r26
/* 80CBB878  38 81 00 14 */	addi r4, r1, 0x14
/* 80CBB87C  38 A1 00 08 */	addi r5, r1, 8
/* 80CBB880  4B FF F3 B9 */	bl checkAreaR__12daObjRgate_cFPC4cXyzPC4cXyz
/* 80CBB884  2C 1B 00 00 */	cmpwi r27, 0
/* 80CBB888  40 82 00 0C */	bne lbl_80CBB894
/* 80CBB88C  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB890  41 82 00 80 */	beq lbl_80CBB910
lbl_80CBB894:
/* 80CBB894  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80CBB898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBB89C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBB8A0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CBB8A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CBB8A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CBB8AC  41 82 00 3C */	beq lbl_80CBB8E8
/* 80CBB8B0  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80CBB8B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CBB8B8  40 82 00 10 */	bne lbl_80CBB8C8
/* 80CBB8BC  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80CBB8C0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CBB8C4  41 82 00 4C */	beq lbl_80CBB910
lbl_80CBB8C8:
/* 80CBB8C8  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 80CBB8CC  D0 1A 0B 94 */	stfs f0, 0xb94(r26)
/* 80CBB8D0  D0 1A 0B 90 */	stfs f0, 0xb90(r26)
/* 80CBB8D4  38 00 08 00 */	li r0, 0x800
/* 80CBB8D8  B0 1A 0B AC */	sth r0, 0xbac(r26)
/* 80CBB8DC  7F 43 D3 78 */	mr r3, r26
/* 80CBB8E0  4B FF F9 31 */	bl setAtkSE__12daObjRgate_cFv
/* 80CBB8E4  48 00 00 2C */	b lbl_80CBB910
lbl_80CBB8E8:
/* 80CBB8E8  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80CBB8EC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CBB8F0  41 82 00 20 */	beq lbl_80CBB910
/* 80CBB8F4  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 80CBB8F8  D0 1A 0B 94 */	stfs f0, 0xb94(r26)
/* 80CBB8FC  D0 1A 0B 90 */	stfs f0, 0xb90(r26)
/* 80CBB900  38 00 08 00 */	li r0, 0x800
/* 80CBB904  B0 1A 0B AC */	sth r0, 0xbac(r26)
/* 80CBB908  7F 43 D3 78 */	mr r3, r26
/* 80CBB90C  4B FF F9 05 */	bl setAtkSE__12daObjRgate_cFv
lbl_80CBB910:
/* 80CBB910  80 1A 0B 98 */	lwz r0, 0xb98(r26)
/* 80CBB914  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80CBB918  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CBB91C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CBB920  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CBB924  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CBB928  C0 1A 0B 90 */	lfs f0, 0xb90(r26)
/* 80CBB92C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CBB930  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB934  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CBB938  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CBB93C  B0 1A 0B 76 */	sth r0, 0xb76(r26)
/* 80CBB940  80 1A 0B 98 */	lwz r0, 0xb98(r26)
/* 80CBB944  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80CBB948  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CBB94C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CBB950  C0 3A 0B 94 */	lfs f1, 0xb94(r26)
/* 80CBB954  FC 00 00 50 */	fneg f0, f0
/* 80CBB958  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CBB95C  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB960  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CBB964  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CBB968  B0 1A 0B 74 */	sth r0, 0xb74(r26)
/* 80CBB96C  38 7A 0B 90 */	addi r3, r26, 0xb90
/* 80CBB970  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 80CBB974  C0 5D 00 E0 */	lfs f2, 0xe0(r29)
/* 80CBB978  4B 5B 41 09 */	bl cLib_addCalc0__FPfff
/* 80CBB97C  38 7A 0B 94 */	addi r3, r26, 0xb94
/* 80CBB980  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 80CBB984  C0 5D 00 E0 */	lfs f2, 0xe0(r29)
/* 80CBB988  4B 5B 40 F9 */	bl cLib_addCalc0__FPfff
/* 80CBB98C  A8 7A 0B AC */	lha r3, 0xbac(r26)
/* 80CBB990  38 03 FE A0 */	addi r0, r3, -352
/* 80CBB994  B0 1A 0B AC */	sth r0, 0xbac(r26)
/* 80CBB998  A8 7A 0B AA */	lha r3, 0xbaa(r26)
/* 80CBB99C  A8 1A 0B AC */	lha r0, 0xbac(r26)
/* 80CBB9A0  7C 03 02 14 */	add r0, r3, r0
/* 80CBB9A4  B0 1A 0B AA */	sth r0, 0xbaa(r26)
/* 80CBB9A8  A8 1A 0B AA */	lha r0, 0xbaa(r26)
/* 80CBB9AC  2C 00 00 00 */	cmpwi r0, 0
/* 80CBB9B0  40 80 00 48 */	bge lbl_80CBB9F8
/* 80CBB9B4  38 00 00 00 */	li r0, 0
/* 80CBB9B8  B0 1A 0B AA */	sth r0, 0xbaa(r26)
/* 80CBB9BC  C0 5D 00 E4 */	lfs f2, 0xe4(r29)
/* 80CBB9C0  A8 1A 0B AC */	lha r0, 0xbac(r26)
/* 80CBB9C4  7C 00 00 D0 */	neg r0, r0
/* 80CBB9C8  C8 3D 00 E8 */	lfd f1, 0xe8(r29)
/* 80CBB9CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBB9D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CBB9D4  3C 00 43 30 */	lis r0, 0x4330
/* 80CBB9D8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CBB9DC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CBB9E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBB9E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CBB9E8  FC 00 00 1E */	fctiwz f0, f0
/* 80CBB9EC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CBB9F0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CBB9F4  B0 1A 0B AC */	sth r0, 0xbac(r26)
lbl_80CBB9F8:
/* 80CBB9F8  39 61 00 70 */	addi r11, r1, 0x70
/* 80CBB9FC  4B 6A 68 1D */	bl _restgpr_25
/* 80CBBA00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CBBA04  7C 08 03 A6 */	mtlr r0
/* 80CBBA08  38 21 00 70 */	addi r1, r1, 0x70
/* 80CBBA0C  4E 80 00 20 */	blr 
