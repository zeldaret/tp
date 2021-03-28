lbl_80BF0C74:
/* 80BF0C74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF0C78  7C 08 02 A6 */	mflr r0
/* 80BF0C7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF0C80  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BF0C84  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BF0C88  7C 7E 1B 78 */	mr r30, r3
/* 80BF0C8C  3C 80 80 BF */	lis r4, lit_3647@ha
/* 80BF0C90  3B E4 1D 90 */	addi r31, r4, lit_3647@l
/* 80BF0C94  80 83 06 34 */	lwz r4, 0x634(r3)
/* 80BF0C98  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80BF0C9C  41 82 01 98 */	beq lbl_80BF0E34
/* 80BF0CA0  38 80 00 00 */	li r4, 0
/* 80BF0CA4  98 9E 05 67 */	stb r4, 0x567(r30)
/* 80BF0CA8  A8 7E 05 7E */	lha r3, 0x57e(r30)
/* 80BF0CAC  2C 03 00 03 */	cmpwi r3, 3
/* 80BF0CB0  41 80 00 70 */	blt lbl_80BF0D20
/* 80BF0CB4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80BF0CB8  60 00 00 10 */	ori r0, r0, 0x10
/* 80BF0CBC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BF0CC0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF0CC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BF0CC8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80BF0CCC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BF0CD0  41 82 00 1C */	beq lbl_80BF0CEC
/* 80BF0CD4  38 00 00 02 */	li r0, 2
/* 80BF0CD8  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80BF0CDC  B0 9E 05 7E */	sth r4, 0x57e(r30)
/* 80BF0CE0  80 1E 08 48 */	lwz r0, 0x848(r30)
/* 80BF0CE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BF0CE8  90 1E 08 48 */	stw r0, 0x848(r30)
lbl_80BF0CEC:
/* 80BF0CEC  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 80BF0CF0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BF0CF4  40 80 00 14 */	bge lbl_80BF0D08
/* 80BF0CF8  2C 00 C0 00 */	cmpwi r0, -16384
/* 80BF0CFC  40 81 00 0C */	ble lbl_80BF0D08
/* 80BF0D00  38 80 00 00 */	li r4, 0
/* 80BF0D04  48 00 00 08 */	b lbl_80BF0D0C
lbl_80BF0D08:
/* 80BF0D08  38 80 80 00 */	li r4, -32768
lbl_80BF0D0C:
/* 80BF0D0C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80BF0D10  38 A0 00 01 */	li r5, 1
/* 80BF0D14  38 C0 10 00 */	li r6, 0x1000
/* 80BF0D18  4B 67 F8 F0 */	b cLib_addCalcAngleS2__FPssss
/* 80BF0D1C  48 00 02 8C */	b lbl_80BF0FA8
lbl_80BF0D20:
/* 80BF0D20  38 03 00 01 */	addi r0, r3, 1
/* 80BF0D24  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 80BF0D28  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BF0D2C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BF0D30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF0D34  40 81 00 14 */	ble lbl_80BF0D48
/* 80BF0D38  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BF0D3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF0D40  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BF0D44  48 00 00 20 */	b lbl_80BF0D64
lbl_80BF0D48:
/* 80BF0D48  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 80BF0D4C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BF0D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF0D54  40 80 00 10 */	bge lbl_80BF0D64
/* 80BF0D58  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BF0D5C  4B 67 6B F8 */	b cM_rndF__Ff
/* 80BF0D60  D0 3E 05 2C */	stfs f1, 0x52c(r30)
lbl_80BF0D64:
/* 80BF0D64  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BF0D68  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80BF0D6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF0D70  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BF0D74  C0 1E 05 94 */	lfs f0, 0x594(r30)
/* 80BF0D78  FC 00 02 10 */	fabs f0, f0
/* 80BF0D7C  FC 20 00 18 */	frsp f1, f0
/* 80BF0D80  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080283@ha */
/* 80BF0D84  38 03 02 83 */	addi r0, r3, 0x0283 /* 0x00080283@l */
/* 80BF0D88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BF0D8C  4B 77 13 20 */	b __cvt_fp2unsigned
/* 80BF0D90  7C 66 1B 78 */	mr r6, r3
/* 80BF0D94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BF0D98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BF0D9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF0DA0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BF0DA4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF0DA8  38 E0 00 00 */	li r7, 0
/* 80BF0DAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF0DB0  FC 40 08 90 */	fmr f2, f1
/* 80BF0DB4  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80BF0DB8  FC 80 18 90 */	fmr f4, f3
/* 80BF0DBC  39 00 00 00 */	li r8, 0
/* 80BF0DC0  4B 6B AB C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF0DC4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BF0DC8  4B 67 6B C4 */	b cM_rndFX__Ff
/* 80BF0DCC  FC 00 08 1E */	fctiwz f0, f1
/* 80BF0DD0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BF0DD4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80BF0DD8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BF0DDC  7C 00 1A 14 */	add r0, r0, r3
/* 80BF0DE0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BF0DE4  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80BF0DE8  2C 00 00 03 */	cmpwi r0, 3
/* 80BF0DEC  40 82 00 14 */	bne lbl_80BF0E00
/* 80BF0DF0  38 00 00 00 */	li r0, 0
/* 80BF0DF4  B0 1E 05 8C */	sth r0, 0x58c(r30)
/* 80BF0DF8  B0 1E 05 8A */	sth r0, 0x58a(r30)
/* 80BF0DFC  48 00 01 AC */	b lbl_80BF0FA8
lbl_80BF0E00:
/* 80BF0E00  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BF0E04  4B 67 6B 88 */	b cM_rndFX__Ff
/* 80BF0E08  FC 00 08 1E */	fctiwz f0, f1
/* 80BF0E0C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BF0E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF0E14  B0 1E 05 8A */	sth r0, 0x58a(r30)
/* 80BF0E18  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BF0E1C  4B 67 6B 70 */	b cM_rndFX__Ff
/* 80BF0E20  FC 00 08 1E */	fctiwz f0, f1
/* 80BF0E24  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BF0E28  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BF0E2C  B0 1E 05 8C */	sth r0, 0x58c(r30)
/* 80BF0E30  48 00 01 78 */	b lbl_80BF0FA8
lbl_80BF0E34:
/* 80BF0E34  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 80BF0E38  2C 00 00 00 */	cmpwi r0, 0
/* 80BF0E3C  40 82 00 DC */	bne lbl_80BF0F18
/* 80BF0E40  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80BF0E44  41 82 00 D4 */	beq lbl_80BF0F18
/* 80BF0E48  4B FF FC 89 */	bl wall_angle_get__FP14obj_food_class
/* 80BF0E4C  7C 60 07 34 */	extsh r0, r3
/* 80BF0E50  2C 00 00 23 */	cmpwi r0, 0x23
/* 80BF0E54  41 82 00 C4 */	beq lbl_80BF0F18
/* 80BF0E58  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80BF0E5C  7C 03 28 50 */	subf r0, r3, r5
/* 80BF0E60  7C 00 07 34 */	extsh r0, r0
/* 80BF0E64  54 04 08 3C */	slwi r4, r0, 1
/* 80BF0E68  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80BF0E6C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80BF0E70  7C 04 00 50 */	subf r0, r4, r0
/* 80BF0E74  7C 04 07 34 */	extsh r4, r0
/* 80BF0E78  7C 05 22 14 */	add r0, r5, r4
/* 80BF0E7C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BF0E80  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BF0E84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BF0E88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BF0E8C  7C 80 0E 70 */	srawi r0, r4, 1
/* 80BF0E90  7C 00 01 94 */	addze r0, r0
/* 80BF0E94  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF0E98  7C 63 02 14 */	add r3, r3, r0
/* 80BF0E9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BF0EA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF0EA4  FC 00 02 10 */	fabs f0, f0
/* 80BF0EA8  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80BF0EAC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BF0EB0  FC 00 00 18 */	frsp f0, f0
/* 80BF0EB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF0EB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BF0EBC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BF0EC0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BF0EC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BF0EC8  38 00 00 0A */	li r0, 0xa
/* 80BF0ECC  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80BF0ED0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080283@ha */
/* 80BF0ED4  38 03 02 83 */	addi r0, r3, 0x0283 /* 0x00080283@l */
/* 80BF0ED8  90 01 00 08 */	stw r0, 8(r1)
/* 80BF0EDC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BF0EE0  4B 77 11 CC */	b __cvt_fp2unsigned
/* 80BF0EE4  7C 66 1B 78 */	mr r6, r3
/* 80BF0EE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BF0EEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BF0EF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF0EF4  38 81 00 08 */	addi r4, r1, 8
/* 80BF0EF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF0EFC  38 E0 00 00 */	li r7, 0
/* 80BF0F00  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF0F04  FC 40 08 90 */	fmr f2, f1
/* 80BF0F08  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80BF0F0C  FC 80 18 90 */	fmr f4, f3
/* 80BF0F10  39 00 00 00 */	li r8, 0
/* 80BF0F14  4B 6B AA 70 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BF0F18:
/* 80BF0F18  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BF0F1C  A8 1E 05 8A */	lha r0, 0x58a(r30)
/* 80BF0F20  7C 03 02 14 */	add r0, r3, r0
/* 80BF0F24  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BF0F28  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80BF0F2C  A8 1E 05 8C */	lha r0, 0x58c(r30)
/* 80BF0F30  7C 03 02 14 */	add r0, r3, r0
/* 80BF0F34  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BF0F38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF0F3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BF0F40  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF0F44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF0F48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF0F4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF0F50  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80BF0F54  2C 00 00 00 */	cmpwi r0, 0
/* 80BF0F58  40 82 00 14 */	bne lbl_80BF0F6C
/* 80BF0F5C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BF0F60  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BF0F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF0F68  40 80 00 14 */	bge lbl_80BF0F7C
lbl_80BF0F6C:
/* 80BF0F6C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80BF0F70  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BF0F74  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF0F78  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80BF0F7C:
/* 80BF0F7C  38 7E 0A 78 */	addi r3, r30, 0xa78
/* 80BF0F80  38 81 00 10 */	addi r4, r1, 0x10
/* 80BF0F84  4B 67 E6 C4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BF0F88  38 7E 0A 78 */	addi r3, r30, 0xa78
/* 80BF0F8C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BF0F90  4B 67 E7 78 */	b SetR__8cM3dGSphFf
/* 80BF0F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF0F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF0F9C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BF0FA0  38 9E 09 54 */	addi r4, r30, 0x954
/* 80BF0FA4  4B 67 3C 04 */	b Set__4cCcSFP8cCcD_Obj
lbl_80BF0FA8:
/* 80BF0FA8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BF0FAC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BF0FB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF0FB4  7C 08 03 A6 */	mtlr r0
/* 80BF0FB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF0FBC  4E 80 00 20 */	blr 
