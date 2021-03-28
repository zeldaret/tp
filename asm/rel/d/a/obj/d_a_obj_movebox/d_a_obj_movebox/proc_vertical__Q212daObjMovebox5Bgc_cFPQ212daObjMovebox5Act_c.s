lbl_8047E134:
/* 8047E134  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047E138  7C 08 02 A6 */	mflr r0
/* 8047E13C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E140  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E144  4B EE 40 90 */	b _savegpr_27
/* 8047E148  7C 7D 1B 78 */	mr r29, r3
/* 8047E14C  7C 9E 23 78 */	mr r30, r4
/* 8047E150  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha
/* 8047E154  3B 83 0F 28 */	addi r28, r3, M_lin5__Q212daObjMovebox5Bgc_c@l
/* 8047E158  83 FD 01 80 */	lwz r31, 0x180(r29)
/* 8047E15C  38 00 00 00 */	li r0, 0
/* 8047E160  90 1D 01 80 */	stw r0, 0x180(r29)
/* 8047E164  7F C3 F3 78 */	mr r3, r30
/* 8047E168  48 00 05 49 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E16C  88 03 00 9E */	lbz r0, 0x9e(r3)
/* 8047E170  28 00 00 00 */	cmplwi r0, 0
/* 8047E174  3B 60 00 05 */	li r27, 5
/* 8047E178  41 82 00 08 */	beq lbl_8047E180
/* 8047E17C  3B 60 00 15 */	li r27, 0x15
lbl_8047E180:
/* 8047E180  7F C3 F3 78 */	mr r3, r30
/* 8047E184  48 00 05 2D */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E188  88 03 00 9E */	lbz r0, 0x9e(r3)
/* 8047E18C  28 00 00 00 */	cmplwi r0, 0
/* 8047E190  38 BC 00 00 */	addi r5, r28, 0
/* 8047E194  41 82 00 08 */	beq lbl_8047E19C
/* 8047E198  38 BC 00 50 */	addi r5, r28, 0x50
lbl_8047E19C:
/* 8047E19C  7F A3 EB 78 */	mr r3, r29
/* 8047E1A0  7F C4 F3 78 */	mr r4, r30
/* 8047E1A4  7F 66 DB 78 */	mr r6, r27
/* 8047E1A8  C0 3C 01 CC */	lfs f1, 0x1cc(r28)
/* 8047E1AC  4B FF FA 45 */	bl gnd_pos__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cif
/* 8047E1B0  80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 8047E1B4  2C 00 00 00 */	cmpwi r0, 0
/* 8047E1B8  41 80 00 30 */	blt lbl_8047E1E8
/* 8047E1BC  54 00 10 3A */	slwi r0, r0, 2
/* 8047E1C0  7C 3D 04 2E */	lfsx f1, r29, r0
/* 8047E1C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047E1C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047E1CC  40 81 00 1C */	ble lbl_8047E1E8
/* 8047E1D0  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 8047E1D4  80 1D 01 80 */	lwz r0, 0x180(r29)
/* 8047E1D8  60 00 00 01 */	ori r0, r0, 1
/* 8047E1DC  90 1D 01 80 */	stw r0, 0x180(r29)
/* 8047E1E0  C0 1C 01 C0 */	lfs f0, 0x1c0(r28)
/* 8047E1E4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8047E1E8:
/* 8047E1E8  7F A3 EB 78 */	mr r3, r29
/* 8047E1EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047E1F0  4B FF FB 99 */	bl wrt_pos__Q212daObjMovebox5Bgc_cFRC4cXyz
/* 8047E1F4  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 8047E1F8  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8047E1FC  41 82 00 1C */	beq lbl_8047E218
/* 8047E200  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 8047E204  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8047E208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047E20C  40 81 00 0C */	ble lbl_8047E218
/* 8047E210  60 60 00 10 */	ori r0, r3, 0x10
/* 8047E214  90 1D 01 80 */	stw r0, 0x180(r29)
lbl_8047E218:
/* 8047E218  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 8047E21C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047E220  40 82 00 24 */	bne lbl_8047E244
/* 8047E224  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8047E228  41 82 00 1C */	beq lbl_8047E244
/* 8047E22C  60 60 00 02 */	ori r0, r3, 2
/* 8047E230  90 1D 01 80 */	stw r0, 0x180(r29)
/* 8047E234  7F C3 F3 78 */	mr r3, r30
/* 8047E238  48 00 04 79 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E23C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8047E240  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8047E244:
/* 8047E244  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 8047E248  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8047E24C  41 82 00 14 */	beq lbl_8047E260
/* 8047E250  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8047E254  40 82 00 0C */	bne lbl_8047E260
/* 8047E258  60 60 00 04 */	ori r0, r3, 4
/* 8047E25C  90 1D 01 80 */	stw r0, 0x180(r29)
lbl_8047E260:
/* 8047E260  80 7D 01 80 */	lwz r3, 0x180(r29)
/* 8047E264  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8047E268  41 82 00 14 */	beq lbl_8047E27C
/* 8047E26C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8047E270  40 82 00 0C */	bne lbl_8047E27C
/* 8047E274  60 60 00 20 */	ori r0, r3, 0x20
/* 8047E278  90 1D 01 80 */	stw r0, 0x180(r29)
lbl_8047E27C:
/* 8047E27C  80 1D 01 80 */	lwz r0, 0x180(r29)
/* 8047E280  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047E284  41 82 00 38 */	beq lbl_8047E2BC
/* 8047E288  80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 8047E28C  2C 00 00 00 */	cmpwi r0, 0
/* 8047E290  41 80 00 2C */	blt lbl_8047E2BC
/* 8047E294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047E298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8047E29C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8047E2A0  1C A0 00 54 */	mulli r5, r0, 0x54
/* 8047E2A4  3C 80 80 48 */	lis r4, M_gnd_work__Q212daObjMovebox5Bgc_c@ha
/* 8047E2A8  38 04 18 D4 */	addi r0, r4, M_gnd_work__Q212daObjMovebox5Bgc_c@l
/* 8047E2AC  7C 80 2A 14 */	add r4, r0, r5
/* 8047E2B0  38 84 00 14 */	addi r4, r4, 0x14
/* 8047E2B4  7F C5 F3 78 */	mr r5, r30
/* 8047E2B8  4B BF 78 CC */	b RideCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_c
lbl_8047E2BC:
/* 8047E2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E2C0  4B EE 3F 60 */	b _restgpr_27
/* 8047E2C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047E2C8  7C 08 03 A6 */	mtlr r0
/* 8047E2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8047E2D0  4E 80 00 20 */	blr 
