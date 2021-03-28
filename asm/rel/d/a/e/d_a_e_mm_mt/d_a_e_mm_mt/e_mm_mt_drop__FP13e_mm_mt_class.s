lbl_80723B70:
/* 80723B70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80723B74  7C 08 02 A6 */	mflr r0
/* 80723B78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80723B7C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80723B80  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80723B84  7C 7E 1B 78 */	mr r30, r3
/* 80723B88  3C 80 80 72 */	lis r4, lit_3789@ha
/* 80723B8C  3B E4 58 58 */	addi r31, r4, lit_3789@l
/* 80723B90  4B FF F4 CD */	bl e_mm_hookCheck__FP13e_mm_mt_class
/* 80723B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80723B98  40 82 05 E0 */	bne lbl_80724178
/* 80723B9C  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 80723BA0  2C 00 00 05 */	cmpwi r0, 5
/* 80723BA4  41 82 03 38 */	beq lbl_80723EDC
/* 80723BA8  40 80 03 44 */	bge lbl_80723EEC
/* 80723BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80723BB0  40 80 00 08 */	bge lbl_80723BB8
/* 80723BB4  48 00 03 38 */	b lbl_80723EEC
lbl_80723BB8:
/* 80723BB8  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 80723BBC  2C 00 00 00 */	cmpwi r0, 0
/* 80723BC0  40 82 01 3C */	bne lbl_80723CFC
/* 80723BC4  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80723BC8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80723BCC  41 82 01 30 */	beq lbl_80723CFC
/* 80723BD0  7F C3 F3 78 */	mr r3, r30
/* 80723BD4  4B FF FD F9 */	bl wall_angle_get__FP13e_mm_mt_class
/* 80723BD8  7C 60 07 34 */	extsh r0, r3
/* 80723BDC  2C 00 00 23 */	cmpwi r0, 0x23
/* 80723BE0  41 82 01 1C */	beq lbl_80723CFC
/* 80723BE4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80723BE8  7C 03 00 50 */	subf r0, r3, r0
/* 80723BEC  7C 03 07 34 */	extsh r3, r0
/* 80723BF0  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80723BF4  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 80723BF8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80723BFC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80723C00  3C 00 43 30 */	lis r0, 0x4330
/* 80723C04  90 01 00 58 */	stw r0, 0x58(r1)
/* 80723C08  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80723C0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80723C10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80723C14  FC 00 00 1E */	fctiwz f0, f0
/* 80723C18  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80723C1C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80723C20  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80723C24  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80723C28  54 64 08 3C */	slwi r4, r3, 1
/* 80723C2C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80723C30  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80723C34  7C 04 00 50 */	subf r0, r4, r0
/* 80723C38  7C 00 07 34 */	extsh r0, r0
/* 80723C3C  7C 05 02 14 */	add r0, r5, r0
/* 80723C40  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80723C44  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80723C48  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80723C4C  41 82 00 50 */	beq lbl_80723C9C
/* 80723C50  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80723C54  4B C3 E4 58 */	b __cvt_fp2unsigned
/* 80723C58  7C 66 1B 78 */	mr r6, r3
/* 80723C5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F5@ha */
/* 80723C60  38 03 02 F5 */	addi r0, r3, 0x02F5 /* 0x000702F5@l */
/* 80723C64  90 01 00 20 */	stw r0, 0x20(r1)
/* 80723C68  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723C6C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723C70  80 63 00 00 */	lwz r3, 0(r3)
/* 80723C74  38 81 00 20 */	addi r4, r1, 0x20
/* 80723C78  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723C7C  38 E0 00 00 */	li r7, 0
/* 80723C80  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723C84  FC 40 08 90 */	fmr f2, f1
/* 80723C88  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723C8C  FC 80 18 90 */	fmr f4, f3
/* 80723C90  39 00 00 00 */	li r8, 0
/* 80723C94  4B B8 7C F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80723C98  48 00 00 4C */	b lbl_80723CE4
lbl_80723C9C:
/* 80723C9C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80723CA0  4B C3 E4 0C */	b __cvt_fp2unsigned
/* 80723CA4  7C 66 1B 78 */	mr r6, r3
/* 80723CA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F4@ha */
/* 80723CAC  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000702F4@l */
/* 80723CB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80723CB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723CB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723CBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80723CC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80723CC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723CC8  38 E0 00 00 */	li r7, 0
/* 80723CCC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723CD0  FC 40 08 90 */	fmr f2, f1
/* 80723CD4  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723CD8  FC 80 18 90 */	fmr f4, f3
/* 80723CDC  39 00 00 00 */	li r8, 0
/* 80723CE0  4B B8 7C A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80723CE4:
/* 80723CE4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80723CE8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80723CEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80723CF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80723CF4  38 00 00 0A */	li r0, 0xa
/* 80723CF8  B0 1E 06 84 */	sth r0, 0x684(r30)
lbl_80723CFC:
/* 80723CFC  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80723D00  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80723D04  41 82 01 E8 */	beq lbl_80723EEC
/* 80723D08  A8 7E 06 68 */	lha r3, 0x668(r30)
/* 80723D0C  2C 03 00 04 */	cmpwi r3, 4
/* 80723D10  40 80 00 0C */	bge lbl_80723D1C
/* 80723D14  38 03 00 01 */	addi r0, r3, 1
/* 80723D18  B0 1E 06 68 */	sth r0, 0x668(r30)
lbl_80723D1C:
/* 80723D1C  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 80723D20  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80723D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80723D28  40 80 01 18 */	bge lbl_80723E40
/* 80723D2C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80723D30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80723D34  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80723D38  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80723D3C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80723D40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80723D44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80723D48  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80723D4C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80723D50  41 82 00 50 */	beq lbl_80723DA0
/* 80723D54  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80723D58  4B C3 E3 54 */	b __cvt_fp2unsigned
/* 80723D5C  7C 66 1B 78 */	mr r6, r3
/* 80723D60  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F5@ha */
/* 80723D64  38 03 02 F5 */	addi r0, r3, 0x02F5 /* 0x000702F5@l */
/* 80723D68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80723D6C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723D70  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723D74  80 63 00 00 */	lwz r3, 0(r3)
/* 80723D78  38 81 00 18 */	addi r4, r1, 0x18
/* 80723D7C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723D80  38 E0 00 00 */	li r7, 0
/* 80723D84  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723D88  FC 40 08 90 */	fmr f2, f1
/* 80723D8C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723D90  FC 80 18 90 */	fmr f4, f3
/* 80723D94  39 00 00 00 */	li r8, 0
/* 80723D98  4B B8 7B EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80723D9C  48 00 00 4C */	b lbl_80723DE8
lbl_80723DA0:
/* 80723DA0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80723DA4  4B C3 E3 08 */	b __cvt_fp2unsigned
/* 80723DA8  7C 66 1B 78 */	mr r6, r3
/* 80723DAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F4@ha */
/* 80723DB0  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000702F4@l */
/* 80723DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80723DB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723DBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723DC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80723DC4  38 81 00 14 */	addi r4, r1, 0x14
/* 80723DC8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723DCC  38 E0 00 00 */	li r7, 0
/* 80723DD0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723DD4  FC 40 08 90 */	fmr f2, f1
/* 80723DD8  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723DDC  FC 80 18 90 */	fmr f4, f3
/* 80723DE0  39 00 00 00 */	li r8, 0
/* 80723DE4  4B B8 7B A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80723DE8:
/* 80723DE8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80723DEC  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 80723DF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80723DF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80723DF8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80723DFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80723E00  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80723E04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80723E08  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80723E0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80723E10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80723E14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80723E18  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80723E1C  2C 00 00 00 */	cmpwi r0, 0
/* 80723E20  40 82 00 CC */	bne lbl_80723EEC
/* 80723E24  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80723E28  4B B4 3B 64 */	b cM_rndFX__Ff
/* 80723E2C  FC 00 08 1E */	fctiwz f0, f1
/* 80723E30  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80723E34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80723E38  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80723E3C  48 00 00 B0 */	b lbl_80723EEC
lbl_80723E40:
/* 80723E40  38 00 00 05 */	li r0, 5
/* 80723E44  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80723E48  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 80723E4C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80723E50  41 82 00 48 */	beq lbl_80723E98
/* 80723E54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F5@ha */
/* 80723E58  38 03 02 F5 */	addi r0, r3, 0x02F5 /* 0x000702F5@l */
/* 80723E5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80723E60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723E64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723E68  80 63 00 00 */	lwz r3, 0(r3)
/* 80723E6C  38 81 00 10 */	addi r4, r1, 0x10
/* 80723E70  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723E74  38 C0 00 00 */	li r6, 0
/* 80723E78  38 E0 00 00 */	li r7, 0
/* 80723E7C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723E80  FC 40 08 90 */	fmr f2, f1
/* 80723E84  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723E88  FC 80 18 90 */	fmr f4, f3
/* 80723E8C  39 00 00 00 */	li r8, 0
/* 80723E90  4B B8 7A F4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80723E94  48 00 00 58 */	b lbl_80723EEC
lbl_80723E98:
/* 80723E98  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F4@ha */
/* 80723E9C  38 03 02 F4 */	addi r0, r3, 0x02F4 /* 0x000702F4@l */
/* 80723EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80723EA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80723EA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80723EAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80723EB0  38 81 00 0C */	addi r4, r1, 0xc
/* 80723EB4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80723EB8  38 C0 00 00 */	li r6, 0
/* 80723EBC  38 E0 00 00 */	li r7, 0
/* 80723EC0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723EC4  FC 40 08 90 */	fmr f2, f1
/* 80723EC8  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80723ECC  FC 80 18 90 */	fmr f4, f3
/* 80723ED0  39 00 00 00 */	li r8, 0
/* 80723ED4  4B B8 7A B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80723ED8  48 00 00 14 */	b lbl_80723EEC
lbl_80723EDC:
/* 80723EDC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80723EE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80723EE4  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80723EE8  4B B4 BB 98 */	b cLib_addCalc0__FPfff
lbl_80723EEC:
/* 80723EEC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80723EF0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80723EF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80723EF8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80723EFC  4B 8E 84 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80723F00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80723F04  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80723F08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80723F0C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80723F10  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80723F14  38 61 00 48 */	addi r3, r1, 0x48
/* 80723F18  38 81 00 3C */	addi r4, r1, 0x3c
/* 80723F1C  4B B4 CF D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80723F20  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80723F24  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80723F28  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80723F2C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80723F30  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80723F34  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80723F38  EC 01 00 2A */	fadds f0, f1, f0
/* 80723F3C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80723F40  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80723F44  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80723F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80723F4C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80723F50  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80723F54  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80723F58  EC 01 00 2A */	fadds f0, f1, f0
/* 80723F5C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80723F60  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80723F64  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80723F68  EC 01 00 2A */	fadds f0, f1, f0
/* 80723F6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80723F70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80723F74  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80723F78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80723F7C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80723F80  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80723F84  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80723F88  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80723F8C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80723F90  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80723F94  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80723F98  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80723F9C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80723FA0  38 7E 06 90 */	addi r3, r30, 0x690
/* 80723FA4  38 80 80 00 */	li r4, -32768
/* 80723FA8  38 A0 00 01 */	li r5, 1
/* 80723FAC  38 C0 10 00 */	li r6, 0x1000
/* 80723FB0  4B B4 C6 58 */	b cLib_addCalcAngleS2__FPssss
/* 80723FB4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80723FB8  60 00 00 10 */	ori r0, r0, 0x10
/* 80723FBC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80723FC0  38 00 00 07 */	li r0, 7
/* 80723FC4  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80723FC8  A8 7E 06 8E */	lha r3, 0x68e(r30)
/* 80723FCC  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80723FD0  7C 03 02 14 */	add r0, r3, r0
/* 80723FD4  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 80723FD8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80723FDC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80723FE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80723FE4  4C 41 13 82 */	cror 2, 1, 2
/* 80723FE8  40 82 00 68 */	bne lbl_80724050
/* 80723FEC  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 80723FF0  60 00 00 01 */	ori r0, r0, 1
/* 80723FF4  90 1E 09 00 */	stw r0, 0x900(r30)
/* 80723FF8  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 80723FFC  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80724000  90 1E 09 00 */	stw r0, 0x900(r30)
/* 80724004  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 80724008  60 00 00 02 */	ori r0, r0, 2
/* 8072400C  90 1E 09 00 */	stw r0, 0x900(r30)
/* 80724010  38 00 00 01 */	li r0, 1
/* 80724014  98 1E 09 76 */	stb r0, 0x976(r30)
/* 80724018  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 8072401C  2C 00 00 00 */	cmpwi r0, 0
/* 80724020  40 82 00 3C */	bne lbl_8072405C
/* 80724024  38 7E 09 00 */	addi r3, r30, 0x900
/* 80724028  4B 96 02 98 */	b ChkAtHit__12dCcD_GObjInfFv
/* 8072402C  28 03 00 00 */	cmplwi r3, 0
/* 80724030  41 82 00 2C */	beq lbl_8072405C
/* 80724034  38 00 00 04 */	li r0, 4
/* 80724038  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 8072403C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80724040  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80724044  EC 01 00 32 */	fmuls f0, f1, f0
/* 80724048  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8072404C  48 00 00 10 */	b lbl_8072405C
lbl_80724050:
/* 80724050  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 80724054  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80724058  90 1E 09 00 */	stw r0, 0x900(r30)
lbl_8072405C:
/* 8072405C  80 7E 04 9C */	lwz r3, 0x49c(r30)
/* 80724060  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80724064  41 82 00 80 */	beq lbl_807240E4
/* 80724068  38 00 00 02 */	li r0, 2
/* 8072406C  B0 1E 06 66 */	sth r0, 0x666(r30)
/* 80724070  38 00 00 00 */	li r0, 0
/* 80724074  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80724078  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 8072407C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80724080  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80724084  B0 1E 06 92 */	sth r0, 0x692(r30)
/* 80724088  80 1E 07 18 */	lwz r0, 0x718(r30)
/* 8072408C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80724090  41 82 00 44 */	beq lbl_807240D4
/* 80724094  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F1@ha */
/* 80724098  38 03 02 F1 */	addi r0, r3, 0x02F1 /* 0x000702F1@l */
/* 8072409C  90 01 00 08 */	stw r0, 8(r1)
/* 807240A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807240A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807240A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807240AC  38 81 00 08 */	addi r4, r1, 8
/* 807240B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807240B4  38 C0 00 00 */	li r6, 0
/* 807240B8  38 E0 00 00 */	li r7, 0
/* 807240BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807240C0  FC 40 08 90 */	fmr f2, f1
/* 807240C4  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 807240C8  FC 80 18 90 */	fmr f4, f3
/* 807240CC  39 00 00 00 */	li r8, 0
/* 807240D0  4B B8 78 B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807240D4:
/* 807240D4  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 807240D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807240DC  90 1E 09 00 */	stw r0, 0x900(r30)
/* 807240E0  48 00 00 98 */	b lbl_80724178
lbl_807240E4:
/* 807240E4  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 807240E8  41 82 00 90 */	beq lbl_80724178
/* 807240EC  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 807240F0  2C 00 00 00 */	cmpwi r0, 0
/* 807240F4  40 82 00 84 */	bne lbl_80724178
/* 807240F8  38 00 00 01 */	li r0, 1
/* 807240FC  B0 1E 06 66 */	sth r0, 0x666(r30)
/* 80724100  38 00 FF F6 */	li r0, -10
/* 80724104  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80724108  38 80 00 00 */	li r4, 0
/* 8072410C  98 9E 06 8A */	stb r4, 0x68a(r30)
/* 80724110  80 1E 09 2C */	lwz r0, 0x92c(r30)
/* 80724114  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80724118  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 8072411C  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 80724120  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80724124  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 80724128  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8072412C  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 80724130  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80724134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80724138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072413C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80724140  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80724144  38 03 40 00 */	addi r0, r3, 0x4000
/* 80724148  7C 03 07 34 */	extsh r3, r0
/* 8072414C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80724150  7C 03 00 50 */	subf r0, r3, r0
/* 80724154  7C 00 07 34 */	extsh r0, r0
/* 80724158  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8072415C  41 81 00 0C */	bgt lbl_80724168
/* 80724160  2C 00 C0 00 */	cmpwi r0, -16384
/* 80724164  40 80 00 10 */	bge lbl_80724174
lbl_80724168:
/* 80724168  38 00 80 00 */	li r0, -32768
/* 8072416C  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 80724170  48 00 00 08 */	b lbl_80724178
lbl_80724174:
/* 80724174  B0 9E 06 94 */	sth r4, 0x694(r30)
lbl_80724178:
/* 80724178  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8072417C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80724180  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80724184  7C 08 03 A6 */	mtlr r0
/* 80724188  38 21 00 70 */	addi r1, r1, 0x70
/* 8072418C  4E 80 00 20 */	blr 
