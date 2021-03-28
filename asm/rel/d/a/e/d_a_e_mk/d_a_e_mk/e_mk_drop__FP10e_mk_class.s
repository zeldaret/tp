lbl_80715D2C:
/* 80715D2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80715D30  7C 08 02 A6 */	mflr r0
/* 80715D34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80715D38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80715D3C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80715D40  7C 7E 1B 78 */	mr r30, r3
/* 80715D44  3C 80 80 72 */	lis r4, lit_3777@ha
/* 80715D48  3B E4 C5 44 */	addi r31, r4, lit_3777@l
/* 80715D4C  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 80715D50  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80715D54  FC 00 00 1E */	fctiwz f0, f0
/* 80715D58  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80715D5C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80715D60  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80715D64  2C 00 00 03 */	cmpwi r0, 3
/* 80715D68  41 82 01 64 */	beq lbl_80715ECC
/* 80715D6C  40 80 00 1C */	bge lbl_80715D88
/* 80715D70  2C 00 00 01 */	cmpwi r0, 1
/* 80715D74  41 82 00 84 */	beq lbl_80715DF8
/* 80715D78  40 80 00 9C */	bge lbl_80715E14
/* 80715D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80715D80  40 80 00 18 */	bge lbl_80715D98
/* 80715D84  48 00 03 14 */	b lbl_80716098
lbl_80715D88:
/* 80715D88  2C 00 00 05 */	cmpwi r0, 5
/* 80715D8C  41 82 02 28 */	beq lbl_80715FB4
/* 80715D90  40 80 03 08 */	bge lbl_80716098
/* 80715D94  48 00 01 C4 */	b lbl_80715F58
lbl_80715D98:
/* 80715D98  38 80 00 17 */	li r4, 0x17
/* 80715D9C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80715DA0  38 A0 00 00 */	li r5, 0
/* 80715DA4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80715DA8  4B FF E3 D5 */	bl anm_init__FP10e_mk_classifUcf
/* 80715DAC  38 00 00 01 */	li r0, 1
/* 80715DB0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80715DB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80715DB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80715DBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80715DC0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80715DC4  4B 8F 66 18 */	b mDoMtx_YrotS__FPA4_fs
/* 80715DC8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80715DCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80715DD0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80715DD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80715DD8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80715DDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80715DE0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80715DE4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80715DE8  4B B5 B1 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80715DEC  38 00 00 32 */	li r0, 0x32
/* 80715DF0  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 80715DF4  48 00 02 A4 */	b lbl_80716098
lbl_80715DF8:
/* 80715DF8  2C 05 00 0E */	cmpwi r5, 0xe
/* 80715DFC  41 80 02 9C */	blt lbl_80716098
/* 80715E00  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80715E04  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80715E08  38 00 00 02 */	li r0, 2
/* 80715E0C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80715E10  48 00 02 88 */	b lbl_80716098
lbl_80715E14:
/* 80715E14  38 00 00 05 */	li r0, 5
/* 80715E18  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 80715E1C  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 80715E20  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80715E24  41 82 02 74 */	beq lbl_80716098
/* 80715E28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80715E2C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80715E30  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80715E34  38 00 00 03 */	li r0, 3
/* 80715E38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80715E3C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80715E40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80715E44  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80715E48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80715E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80715E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80715E54  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80715E58  38 80 00 05 */	li r4, 5
/* 80715E5C  38 A0 00 0F */	li r5, 0xf
/* 80715E60  38 C1 00 10 */	addi r6, r1, 0x10
/* 80715E64  4B 95 9B C0 */	b StartShock__12dVibration_cFii4cXyz
/* 80715E68  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007A@ha */
/* 80715E6C  38 03 00 7A */	addi r0, r3, 0x007A /* 0x0007007A@l */
/* 80715E70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80715E74  38 7E 06 10 */	addi r3, r30, 0x610
/* 80715E78  38 81 00 0C */	addi r4, r1, 0xc
/* 80715E7C  38 A0 00 00 */	li r5, 0
/* 80715E80  38 C0 FF FF */	li r6, -1
/* 80715E84  81 9E 06 10 */	lwz r12, 0x610(r30)
/* 80715E88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80715E8C  7D 89 03 A6 */	mtctr r12
/* 80715E90  4E 80 04 21 */	bctrl 
/* 80715E94  38 00 00 01 */	li r0, 1
/* 80715E98  98 1E 07 1B */	stb r0, 0x71b(r30)
/* 80715E9C  38 00 00 00 */	li r0, 0
/* 80715EA0  98 1E 07 19 */	stb r0, 0x719(r30)
/* 80715EA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80715EA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80715EAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80715EB0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80715EB4  38 80 00 01 */	li r4, 1
/* 80715EB8  4B B9 BF 3C */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 80715EBC  38 60 00 05 */	li r3, 5
/* 80715EC0  38 80 FF FF */	li r4, -1
/* 80715EC4  4B 91 7B D8 */	b dComIfGs_onOneZoneSwitch__Fii
/* 80715EC8  48 00 01 D0 */	b lbl_80716098
lbl_80715ECC:
/* 80715ECC  2C 05 00 16 */	cmpwi r5, 0x16
/* 80715ED0  41 82 00 0C */	beq lbl_80715EDC
/* 80715ED4  2C 05 00 20 */	cmpwi r5, 0x20
/* 80715ED8  40 82 00 0C */	bne lbl_80715EE4
lbl_80715EDC:
/* 80715EDC  38 00 00 01 */	li r0, 1
/* 80715EE0  98 1E 07 1B */	stb r0, 0x71b(r30)
lbl_80715EE4:
/* 80715EE4  2C 05 00 2D */	cmpwi r5, 0x2d
/* 80715EE8  41 80 00 14 */	blt lbl_80715EFC
/* 80715EEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80715EF0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80715EF4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80715EF8  D0 1E 05 00 */	stfs f0, 0x500(r30)
lbl_80715EFC:
/* 80715EFC  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80715F00  38 80 00 01 */	li r4, 1
/* 80715F04  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80715F08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80715F0C  40 82 00 18 */	bne lbl_80715F24
/* 80715F10  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80715F14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80715F18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80715F1C  41 82 00 08 */	beq lbl_80715F24
/* 80715F20  38 80 00 00 */	li r4, 0
lbl_80715F24:
/* 80715F24  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80715F28  41 82 01 70 */	beq lbl_80716098
/* 80715F2C  7F C3 F3 78 */	mr r3, r30
/* 80715F30  38 80 00 0A */	li r4, 0xa
/* 80715F34  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80715F38  38 A0 00 02 */	li r5, 2
/* 80715F3C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80715F40  4B FF E2 3D */	bl anm_init__FP10e_mk_classifUcf
/* 80715F44  38 00 00 04 */	li r0, 4
/* 80715F48  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80715F4C  38 00 00 96 */	li r0, 0x96
/* 80715F50  B0 1E 06 FC */	sth r0, 0x6fc(r30)
/* 80715F54  48 00 01 44 */	b lbl_80716098
lbl_80715F58:
/* 80715F58  A8 1E 06 FC */	lha r0, 0x6fc(r30)
/* 80715F5C  2C 00 00 00 */	cmpwi r0, 0
/* 80715F60  40 82 01 38 */	bne lbl_80716098
/* 80715F64  38 80 00 24 */	li r4, 0x24
/* 80715F68  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80715F6C  38 A0 00 00 */	li r5, 0
/* 80715F70  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80715F74  4B FF E2 09 */	bl anm_init__FP10e_mk_classifUcf
/* 80715F78  38 00 00 05 */	li r0, 5
/* 80715F7C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80715F80  38 00 00 04 */	li r0, 4
/* 80715F84  98 1E 07 19 */	stb r0, 0x719(r30)
/* 80715F88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070075@ha */
/* 80715F8C  38 03 00 75 */	addi r0, r3, 0x0075 /* 0x00070075@l */
/* 80715F90  90 01 00 08 */	stw r0, 8(r1)
/* 80715F94  38 7E 06 10 */	addi r3, r30, 0x610
/* 80715F98  38 81 00 08 */	addi r4, r1, 8
/* 80715F9C  38 A0 FF FF */	li r5, -1
/* 80715FA0  81 9E 06 10 */	lwz r12, 0x610(r30)
/* 80715FA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80715FA8  7D 89 03 A6 */	mtctr r12
/* 80715FAC  4E 80 04 21 */	bctrl 
/* 80715FB0  48 00 00 E8 */	b lbl_80716098
lbl_80715FB4:
/* 80715FB4  80 1E 05 CC */	lwz r0, 0x5cc(r30)
/* 80715FB8  2C 00 00 23 */	cmpwi r0, 0x23
/* 80715FBC  40 82 00 24 */	bne lbl_80715FE0
/* 80715FC0  2C 05 00 09 */	cmpwi r5, 9
/* 80715FC4  41 82 00 14 */	beq lbl_80715FD8
/* 80715FC8  2C 05 00 18 */	cmpwi r5, 0x18
/* 80715FCC  41 82 00 0C */	beq lbl_80715FD8
/* 80715FD0  2C 05 00 23 */	cmpwi r5, 0x23
/* 80715FD4  40 82 00 0C */	bne lbl_80715FE0
lbl_80715FD8:
/* 80715FD8  38 00 00 02 */	li r0, 2
/* 80715FDC  98 1E 07 1B */	stb r0, 0x71b(r30)
lbl_80715FE0:
/* 80715FE0  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80715FE4  38 80 00 01 */	li r4, 1
/* 80715FE8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80715FEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80715FF0  40 82 00 18 */	bne lbl_80716008
/* 80715FF4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80715FF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80715FFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80716000  41 82 00 08 */	beq lbl_80716008
/* 80716004  38 80 00 00 */	li r4, 0
lbl_80716008:
/* 80716008  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8071600C  41 82 00 8C */	beq lbl_80716098
/* 80716010  38 00 00 01 */	li r0, 1
/* 80716014  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 80716018  38 00 00 02 */	li r0, 2
/* 8071601C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80716020  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716024  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80716028  D0 1E 06 E0 */	stfs f0, 0x6e0(r30)
/* 8071602C  D0 1E 06 E4 */	stfs f0, 0x6e4(r30)
/* 80716030  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80716034  4B B5 19 20 */	b cM_rndF__Ff
/* 80716038  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8071603C  EC 00 08 2A */	fadds f0, f0, f1
/* 80716040  FC 00 00 1E */	fctiwz f0, f0
/* 80716044  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80716048  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8071604C  B0 1E 06 FA */	sth r0, 0x6fa(r30)
/* 80716050  38 00 00 01 */	li r0, 1
/* 80716054  98 1E 07 18 */	stb r0, 0x718(r30)
/* 80716058  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8071605C  2C 00 00 64 */	cmpwi r0, 0x64
/* 80716060  40 81 00 20 */	ble lbl_80716080
/* 80716064  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80716068  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8071606C  80 63 00 00 */	lwz r3, 0(r3)
/* 80716070  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80716074  38 80 00 02 */	li r4, 2
/* 80716078  4B B9 BD 7C */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 8071607C  48 00 00 1C */	b lbl_80716098
lbl_80716080:
/* 80716080  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80716084  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80716088  80 63 00 00 */	lwz r3, 0(r3)
/* 8071608C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80716090  38 80 00 03 */	li r4, 3
/* 80716094  4B B9 BD 60 */	b changeSubBgmStatus__8Z2SeqMgrFl
lbl_80716098:
/* 80716098  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8071609C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807160A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807160A4  7C 08 03 A6 */	mtlr r0
/* 807160A8  38 21 00 40 */	addi r1, r1, 0x40
/* 807160AC  4E 80 00 20 */	blr 
