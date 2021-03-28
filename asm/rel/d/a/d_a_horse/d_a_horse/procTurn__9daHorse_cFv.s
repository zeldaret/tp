lbl_80842AB0:
/* 80842AB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80842AB4  7C 08 02 A6 */	mflr r0
/* 80842AB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80842ABC  39 61 00 50 */	addi r11, r1, 0x50
/* 80842AC0  4B B1 F7 10 */	b _savegpr_26
/* 80842AC4  7C 7C 1B 78 */	mr r28, r3
/* 80842AC8  3C 60 80 84 */	lis r3, lit_3894@ha
/* 80842ACC  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 80842AD0  3B DC 05 B0 */	addi r30, r28, 0x5b0
/* 80842AD4  C0 3C 17 58 */	lfs f1, 0x1758(r28)
/* 80842AD8  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80842ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842AE0  41 81 00 0C */	bgt lbl_80842AEC
/* 80842AE4  38 00 00 00 */	li r0, 0
/* 80842AE8  B0 1C 17 22 */	sth r0, 0x1722(r28)
lbl_80842AEC:
/* 80842AEC  80 1C 17 30 */	lwz r0, 0x1730(r28)
/* 80842AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80842AF4  41 82 00 10 */	beq lbl_80842B04
/* 80842AF8  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 80842AFC  60 00 00 02 */	ori r0, r0, 2
/* 80842B00  90 1C 17 48 */	stw r0, 0x1748(r28)
lbl_80842B04:
/* 80842B04  7F 83 E3 78 */	mr r3, r28
/* 80842B08  38 80 00 01 */	li r4, 1
/* 80842B0C  4B FF 94 3D */	bl checkHorseNoMove__9daHorse_cFi
/* 80842B10  7C 7D 1B 78 */	mr r29, r3
/* 80842B14  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 80842B18  28 00 00 14 */	cmplwi r0, 0x14
/* 80842B1C  40 82 00 74 */	bne lbl_80842B90
/* 80842B20  7F C3 F3 78 */	mr r3, r30
/* 80842B24  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80842B28  4B AE 59 04 */	b checkPass__12J3DFrameCtrlFf
/* 80842B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80842B30  41 82 00 1C */	beq lbl_80842B4C
/* 80842B34  C0 3C 17 58 */	lfs f1, 0x1758(r28)
/* 80842B38  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80842B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842B40  41 81 00 0C */	bgt lbl_80842B4C
/* 80842B44  38 00 00 00 */	li r0, 0
/* 80842B48  B0 1C 17 1A */	sth r0, 0x171a(r28)
lbl_80842B4C:
/* 80842B4C  7F C3 F3 78 */	mr r3, r30
/* 80842B50  C0 3F 01 F8 */	lfs f1, 0x1f8(r31)
/* 80842B54  4B AE 58 D8 */	b checkPass__12J3DFrameCtrlFf
/* 80842B58  2C 03 00 00 */	cmpwi r3, 0
/* 80842B5C  41 82 00 34 */	beq lbl_80842B90
/* 80842B60  80 1C 17 4C */	lwz r0, 0x174c(r28)
/* 80842B64  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80842B68  40 82 00 28 */	bne lbl_80842B90
/* 80842B6C  3C 00 00 05 */	lis r0, 5
/* 80842B70  90 01 00 08 */	stw r0, 8(r1)
/* 80842B74  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 80842B78  38 81 00 08 */	addi r4, r1, 8
/* 80842B7C  88 BC 16 B5 */	lbz r5, 0x16b5(r28)
/* 80842B80  81 9C 10 A4 */	lwz r12, 0x10a4(r28)
/* 80842B84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80842B88  7D 89 03 A6 */	mtctr r12
/* 80842B8C  4E 80 04 21 */	bctrl 
lbl_80842B90:
/* 80842B90  7F C3 F3 78 */	mr r3, r30
/* 80842B94  C0 3C 17 84 */	lfs f1, 0x1784(r28)
/* 80842B98  4B AE 58 94 */	b checkPass__12J3DFrameCtrlFf
/* 80842B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80842BA0  41 82 00 0C */	beq lbl_80842BAC
/* 80842BA4  38 00 00 01 */	li r0, 1
/* 80842BA8  98 1C 16 B6 */	stb r0, 0x16b6(r28)
lbl_80842BAC:
/* 80842BAC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80842BB0  C0 1C 17 84 */	lfs f0, 0x1784(r28)
/* 80842BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842BB8  7C 00 00 26 */	mfcr r0
/* 80842BBC  54 1B 0F FE */	srwi r27, r0, 0x1f
/* 80842BC0  A8 1C 17 20 */	lha r0, 0x1720(r28)
/* 80842BC4  2C 00 00 00 */	cmpwi r0, 0
/* 80842BC8  41 82 00 28 */	beq lbl_80842BF0
/* 80842BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80842BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80842BD4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80842BD8  80 9C 17 2C */	lwz r4, 0x172c(r28)
/* 80842BDC  4B 80 55 A0 */	b cutEnd__16dEvent_manager_cFi
/* 80842BE0  7F 83 E3 78 */	mr r3, r28
/* 80842BE4  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80842BE8  4B FF 8C 49 */	bl setMoveAnime__9daHorse_cFf
/* 80842BEC  48 00 03 A4 */	b lbl_80842F90
lbl_80842BF0:
/* 80842BF0  7F C3 F3 78 */	mr r3, r30
/* 80842BF4  4B 91 B8 D8 */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 80842BF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80842BFC  40 82 00 10 */	bne lbl_80842C0C
/* 80842C00  80 1C 17 4C */	lwz r0, 0x174c(r28)
/* 80842C04  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80842C08  41 82 00 50 */	beq lbl_80842C58
lbl_80842C0C:
/* 80842C0C  80 1C 17 40 */	lwz r0, 0x1740(r28)
/* 80842C10  28 00 00 09 */	cmplwi r0, 9
/* 80842C14  40 82 00 30 */	bne lbl_80842C44
/* 80842C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80842C1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80842C20  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80842C24  80 9C 17 2C */	lwz r4, 0x172c(r28)
/* 80842C28  4B 80 55 54 */	b cutEnd__16dEvent_manager_cFi
/* 80842C2C  7F 83 E3 78 */	mr r3, r28
/* 80842C30  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80842C34  4B FF 8B FD */	bl setMoveAnime__9daHorse_cFf
/* 80842C38  38 00 00 01 */	li r0, 1
/* 80842C3C  B0 1C 17 20 */	sth r0, 0x1720(r28)
/* 80842C40  48 00 03 50 */	b lbl_80842F90
lbl_80842C44:
/* 80842C44  7F 83 E3 78 */	mr r3, r28
/* 80842C48  4B FF 89 31 */	bl acceptPlayerRide__9daHorse_cFv
/* 80842C4C  7F 83 E3 78 */	mr r3, r28
/* 80842C50  4B FF EA B9 */	bl procWaitInit__9daHorse_cFv
/* 80842C54  48 00 03 9C */	b lbl_80842FF0
lbl_80842C58:
/* 80842C58  2C 1D 00 00 */	cmpwi r29, 0
/* 80842C5C  40 82 00 38 */	bne lbl_80842C94
/* 80842C60  7F 83 E3 78 */	mr r3, r28
/* 80842C64  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80842C68  4B FF DD 59 */	bl checkTurnAfterFastMove__9daHorse_cFf
/* 80842C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80842C70  41 82 00 24 */	beq lbl_80842C94
/* 80842C74  28 1B 00 00 */	cmplwi r27, 0
/* 80842C78  41 82 00 14 */	beq lbl_80842C8C
/* 80842C7C  38 00 00 01 */	li r0, 1
/* 80842C80  98 1C 16 B6 */	stb r0, 0x16b6(r28)
/* 80842C84  38 00 00 02 */	li r0, 2
/* 80842C88  98 1C 16 B7 */	stb r0, 0x16b7(r28)
lbl_80842C8C:
/* 80842C8C  38 60 00 01 */	li r3, 1
/* 80842C90  48 00 03 60 */	b lbl_80842FF0
lbl_80842C94:
/* 80842C94  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80842C98  C0 1C 17 80 */	lfs f0, 0x1780(r28)
/* 80842C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842CA0  4C 41 13 82 */	cror 2, 1, 2
/* 80842CA4  40 82 02 EC */	bne lbl_80842F90
/* 80842CA8  C0 1C 17 74 */	lfs f0, 0x1774(r28)
/* 80842CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842CB0  40 80 02 E0 */	bge lbl_80842F90
/* 80842CB4  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 80842CB8  60 00 00 10 */	ori r0, r0, 0x10
/* 80842CBC  90 1C 17 48 */	stw r0, 0x1748(r28)
/* 80842CC0  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80842CC4  54 00 02 97 */	rlwinm. r0, r0, 0, 0xa, 0xb
/* 80842CC8  41 82 00 1C */	beq lbl_80842CE4
/* 80842CCC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80842CD0  C0 3C 17 74 */	lfs f1, 0x1774(r28)
/* 80842CD4  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 80842CD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80842CDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80842CE0  40 80 00 10 */	bge lbl_80842CF0
lbl_80842CE4:
/* 80842CE4  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 80842CE8  60 00 00 40 */	ori r0, r0, 0x40
/* 80842CEC  90 1C 17 48 */	stw r0, 0x1748(r28)
lbl_80842CF0:
/* 80842CF0  C0 3C 17 58 */	lfs f1, 0x1758(r28)
/* 80842CF4  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80842CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80842CFC  41 81 00 38 */	bgt lbl_80842D34
/* 80842D00  80 9C 17 44 */	lwz r4, 0x1744(r28)
/* 80842D04  54 80 02 97 */	rlwinm. r0, r4, 0, 0xa, 0xb
/* 80842D08  41 82 00 18 */	beq lbl_80842D20
/* 80842D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80842D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80842D14  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80842D18  28 00 00 00 */	cmplwi r0, 0
/* 80842D1C  41 82 00 18 */	beq lbl_80842D34
lbl_80842D20:
/* 80842D20  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80842D24  40 82 00 10 */	bne lbl_80842D34
/* 80842D28  80 1C 17 30 */	lwz r0, 0x1730(r28)
/* 80842D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80842D30  41 82 02 60 */	beq lbl_80842F90
lbl_80842D34:
/* 80842D34  C0 5C 17 78 */	lfs f2, 0x1778(r28)
/* 80842D38  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80842D3C  C0 1C 17 80 */	lfs f0, 0x1780(r28)
/* 80842D40  EC 01 00 28 */	fsubs f0, f1, f0
/* 80842D44  EC 22 00 32 */	fmuls f1, f2, f0
/* 80842D48  4B A2 48 9C */	b cM_rad2s__Ff
/* 80842D4C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80842D50  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80842D54  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80842D58  7C 23 04 2E */	lfsx f1, r3, r0
/* 80842D5C  C0 1F 03 8C */	lfs f0, 0x38c(r31)
/* 80842D60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80842D64  FC 00 00 1E */	fctiwz f0, f0
/* 80842D68  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80842D6C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80842D70  80 9C 17 44 */	lwz r4, 0x1744(r28)
/* 80842D74  3C 60 00 30 */	lis r3, 0x0030 /* 0x00300200@ha */
/* 80842D78  38 03 02 00 */	addi r0, r3, 0x0200 /* 0x00300200@l */
/* 80842D7C  7C 80 00 39 */	and. r0, r4, r0
/* 80842D80  40 82 00 10 */	bne lbl_80842D90
/* 80842D84  80 1C 17 30 */	lwz r0, 0x1730(r28)
/* 80842D88  2C 00 00 00 */	cmpwi r0, 0
/* 80842D8C  41 82 00 0C */	beq lbl_80842D98
lbl_80842D90:
/* 80842D90  AB 7C 17 1E */	lha r27, 0x171e(r28)
/* 80842D94  48 00 00 08 */	b lbl_80842D9C
lbl_80842D98:
/* 80842D98  AB 7C 16 EC */	lha r27, 0x16ec(r28)
lbl_80842D9C:
/* 80842D9C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80842DA0  7C 04 D8 50 */	subf r0, r4, r27
/* 80842DA4  7C 1A 07 35 */	extsh. r26, r0
/* 80842DA8  41 82 01 E8 */	beq lbl_80842F90
/* 80842DAC  A8 7C 17 1A */	lha r3, 0x171a(r28)
/* 80842DB0  7C 03 D1 D7 */	mullw. r0, r3, r26
/* 80842DB4  41 80 01 DC */	blt lbl_80842F90
/* 80842DB8  7C 60 07 35 */	extsh. r0, r3
/* 80842DBC  40 82 00 38 */	bne lbl_80842DF4
/* 80842DC0  A8 1C 17 1C */	lha r0, 0x171c(r28)
/* 80842DC4  7C 00 20 50 */	subf r0, r0, r4
/* 80842DC8  7C 03 07 34 */	extsh r3, r0
/* 80842DCC  4B B2 23 04 */	b abs
/* 80842DD0  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 80842DD4  40 81 00 20 */	ble lbl_80842DF4
/* 80842DD8  7F 40 07 35 */	extsh. r0, r26
/* 80842DDC  40 81 00 10 */	ble lbl_80842DEC
/* 80842DE0  38 00 00 01 */	li r0, 1
/* 80842DE4  B0 1C 17 1A */	sth r0, 0x171a(r28)
/* 80842DE8  48 00 00 0C */	b lbl_80842DF4
lbl_80842DEC:
/* 80842DEC  38 00 FF FF */	li r0, -1
/* 80842DF0  B0 1C 17 1A */	sth r0, 0x171a(r28)
lbl_80842DF4:
/* 80842DF4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80842DF8  7F 64 DB 78 */	mr r4, r27
/* 80842DFC  7F A5 EB 78 */	mr r5, r29
/* 80842E00  4B A2 DD 90 */	b cLib_chaseAngleS__FPsss
/* 80842E04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80842E08  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80842E0C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80842E10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80842E14  7C 64 02 14 */	add r3, r4, r0
/* 80842E18  C0 03 00 04 */	lfs f0, 4(r3)
/* 80842E1C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80842E20  C0 5F 01 9C */	lfs f2, 0x19c(r31)
/* 80842E24  EC 02 00 32 */	fmuls f0, f2, f0
/* 80842E28  EC 81 00 28 */	fsubs f4, f1, f0
/* 80842E2C  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 80842E30  7C 04 04 2E */	lfsx f0, r4, r0
/* 80842E34  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80842E38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80842E3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80842E40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80842E44  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80842E48  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80842E4C  38 61 00 0C */	addi r3, r1, 0xc
/* 80842E50  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80842E54  38 A1 00 24 */	addi r5, r1, 0x24
/* 80842E58  4B A2 3C DC */	b __mi__4cXyzCFRC3Vec
/* 80842E5C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80842E60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80842E64  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80842E68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80842E6C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80842E70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80842E74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80842E78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80842E7C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80842E80  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80842E84  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80842E88  4B B0 3A 60 */	b PSMTXTrans
/* 80842E8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80842E90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80842E94  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80842E98  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80842E9C  7C 04 00 50 */	subf r0, r4, r0
/* 80842EA0  7C 04 07 34 */	extsh r4, r0
/* 80842EA4  4B 7C 95 90 */	b mDoMtx_YrotM__FPA4_fs
/* 80842EA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80842EAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80842EB0  38 81 00 18 */	addi r4, r1, 0x18
/* 80842EB4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80842EB8  4B B0 3E B4 */	b PSMTXMultVec
/* 80842EBC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80842EC0  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 80842EC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80842EC8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80842ECC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80842ED0  4B 7D AD EC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80842ED4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80842ED8  41 82 00 14 */	beq lbl_80842EEC
/* 80842EDC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80842EE0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80842EE4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80842EE8  48 00 00 1C */	b lbl_80842F04
lbl_80842EEC:
/* 80842EEC  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 80842EF0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80842EF4  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80842EF8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80842EFC  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 80842F00  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80842F04:
/* 80842F04  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80842F08  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80842F0C  AB 5C 04 E6 */	lha r26, 0x4e6(r28)
/* 80842F10  3B 60 00 00 */	li r27, 0
lbl_80842F14:
/* 80842F14  7F 83 E3 78 */	mr r3, r28
/* 80842F18  38 80 00 01 */	li r4, 1
/* 80842F1C  4B FF 90 2D */	bl checkHorseNoMove__9daHorse_cFi
/* 80842F20  2C 03 00 02 */	cmpwi r3, 2
/* 80842F24  40 82 00 20 */	bne lbl_80842F44
/* 80842F28  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 80842F2C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80842F30  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80842F34  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80842F38  C0 1C 04 C4 */	lfs f0, 0x4c4(r28)
/* 80842F3C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80842F40  48 00 00 24 */	b lbl_80842F64
lbl_80842F44:
/* 80842F44  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80842F48  38 03 20 00 */	addi r0, r3, 0x2000
/* 80842F4C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80842F50  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80842F54  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80842F58  3B 7B 00 01 */	addi r27, r27, 1
/* 80842F5C  2C 1B 00 08 */	cmpwi r27, 8
/* 80842F60  41 80 FF B4 */	blt lbl_80842F14
lbl_80842F64:
/* 80842F64  B3 5C 04 E6 */	sth r26, 0x4e6(r28)
/* 80842F68  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80842F6C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80842F70  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80842F74  A8 9C 17 1C */	lha r4, 0x171c(r28)
/* 80842F78  4B A2 DE AC */	b cLib_distanceAngleS__Fss
/* 80842F7C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80842F80  41 80 00 10 */	blt lbl_80842F90
/* 80842F84  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80842F88  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 80842F8C  90 1C 17 44 */	stw r0, 0x1744(r28)
lbl_80842F90:
/* 80842F90  7F 83 E3 78 */	mr r3, r28
/* 80842F94  4B FF 85 E5 */	bl acceptPlayerRide__9daHorse_cFv
/* 80842F98  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80842F9C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80842FA0  41 82 00 1C */	beq lbl_80842FBC
/* 80842FA4  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80842FA8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80842FAC  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 80842FB0  7F 83 E3 78 */	mr r3, r28
/* 80842FB4  4B FF E7 55 */	bl procWaitInit__9daHorse_cFv
/* 80842FB8  48 00 00 34 */	b lbl_80842FEC
lbl_80842FBC:
/* 80842FBC  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80842FC0  C0 5C 17 84 */	lfs f2, 0x1784(r28)
/* 80842FC4  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80842FC8  EC 02 08 28 */	fsubs f0, f2, f1
/* 80842FCC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80842FD0  40 81 00 1C */	ble lbl_80842FEC
/* 80842FD4  EC 01 10 2A */	fadds f0, f1, f2
/* 80842FD8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80842FDC  40 80 00 10 */	bge lbl_80842FEC
/* 80842FE0  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 80842FE4  60 00 00 20 */	ori r0, r0, 0x20
/* 80842FE8  90 1C 17 48 */	stw r0, 0x1748(r28)
lbl_80842FEC:
/* 80842FEC  38 60 00 01 */	li r3, 1
lbl_80842FF0:
/* 80842FF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80842FF4  4B B1 F2 28 */	b _restgpr_26
/* 80842FF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80842FFC  7C 08 03 A6 */	mtlr r0
/* 80843000  38 21 00 50 */	addi r1, r1, 0x50
/* 80843004  4E 80 00 20 */	blr 
