lbl_804F3E74:
/* 804F3E74  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804F3E78  7C 08 02 A6 */	mflr r0
/* 804F3E7C  90 01 00 84 */	stw r0, 0x84(r1)
/* 804F3E80  39 61 00 80 */	addi r11, r1, 0x80
/* 804F3E84  4B E6 E3 51 */	bl _savegpr_27
/* 804F3E88  7C 7C 1B 78 */	mr r28, r3
/* 804F3E8C  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F3E90  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804F3E94  3B C0 00 01 */	li r30, 1
/* 804F3E98  80 83 05 D0 */	lwz r4, 0x5d0(r3)
/* 804F3E9C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804F3EA0  FC 00 00 1E */	fctiwz f0, f0
/* 804F3EA4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 804F3EA8  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 804F3EAC  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F3EB0  2C 00 00 02 */	cmpwi r0, 2
/* 804F3EB4  41 82 02 CC */	beq lbl_804F4180
/* 804F3EB8  40 80 00 14 */	bge lbl_804F3ECC
/* 804F3EBC  2C 00 00 00 */	cmpwi r0, 0
/* 804F3EC0  41 82 00 1C */	beq lbl_804F3EDC
/* 804F3EC4  40 80 00 70 */	bge lbl_804F3F34
/* 804F3EC8  48 00 05 A0 */	b lbl_804F4468
lbl_804F3ECC:
/* 804F3ECC  2C 00 00 04 */	cmpwi r0, 4
/* 804F3ED0  41 82 04 D4 */	beq lbl_804F43A4
/* 804F3ED4  40 80 05 94 */	bge lbl_804F4468
/* 804F3ED8  48 00 04 4C */	b lbl_804F4324
lbl_804F3EDC:
/* 804F3EDC  38 80 00 18 */	li r4, 0x18
/* 804F3EE0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F3EE4  38 A0 00 00 */	li r5, 0
/* 804F3EE8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F3EEC  4B FF B9 1D */	bl anm_init__FP10e_fm_classifUcf
/* 804F3EF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028B@ha */
/* 804F3EF4  38 03 02 8B */	addi r0, r3, 0x028B /* 0x0007028B@l */
/* 804F3EF8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F3EFC  38 7C 06 3C */	addi r3, r28, 0x63c
/* 804F3F00  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F3F04  38 A0 FF FF */	li r5, -1
/* 804F3F08  81 9C 06 3C */	lwz r12, 0x63c(r28)
/* 804F3F0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F3F10  7D 89 03 A6 */	mtctr r12
/* 804F3F14  4E 80 04 21 */	bctrl 
/* 804F3F18  38 00 00 01 */	li r0, 1
/* 804F3F1C  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F3F20  38 00 00 02 */	li r0, 2
/* 804F3F24  98 1C 07 C0 */	stb r0, 0x7c0(r28)
/* 804F3F28  38 00 00 05 */	li r0, 5
/* 804F3F2C  B0 1C 07 B4 */	sth r0, 0x7b4(r28)
/* 804F3F30  48 00 05 38 */	b lbl_804F4468
lbl_804F3F34:
/* 804F3F34  38 00 00 05 */	li r0, 5
/* 804F3F38  B0 1C 07 B4 */	sth r0, 0x7b4(r28)
/* 804F3F3C  38 00 00 01 */	li r0, 1
/* 804F3F40  98 1C 18 2B */	stb r0, 0x182b(r28)
/* 804F3F44  2C 1D 00 36 */	cmpwi r29, 0x36
/* 804F3F48  40 82 00 28 */	bne lbl_804F3F70
/* 804F3F4C  3C 9C 00 02 */	addis r4, r28, 2
/* 804F3F50  88 04 B0 78 */	lbz r0, -0x4f88(r4)
/* 804F3F54  7C 00 07 75 */	extsb. r0, r0
/* 804F3F58  40 82 00 18 */	bne lbl_804F3F70
/* 804F3F5C  A8 64 AF F2 */	lha r3, -0x500e(r4)
/* 804F3F60  38 03 00 01 */	addi r0, r3, 1
/* 804F3F64  B0 04 AF F2 */	sth r0, -0x500e(r4)
/* 804F3F68  38 00 00 00 */	li r0, 0
/* 804F3F6C  B0 04 AF F4 */	sth r0, -0x500c(r4)
lbl_804F3F70:
/* 804F3F70  2C 1D 00 48 */	cmpwi r29, 0x48
/* 804F3F74  40 80 00 0C */	bge lbl_804F3F80
/* 804F3F78  38 00 00 02 */	li r0, 2
/* 804F3F7C  98 1C 07 C0 */	stb r0, 0x7c0(r28)
lbl_804F3F80:
/* 804F3F80  2C 1D 00 5A */	cmpwi r29, 0x5a
/* 804F3F84  40 82 01 74 */	bne lbl_804F40F8
/* 804F3F88  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F3F8C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804F3F90  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F3F94  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804F3F98  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804F3F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F3FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F3FA4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F3FA8  38 80 00 08 */	li r4, 8
/* 804F3FAC  38 A0 00 0F */	li r5, 0xf
/* 804F3FB0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 804F3FB4  4B B7 BA 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 804F3FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F3FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F3FC0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F3FC4  38 80 00 00 */	li r4, 0
/* 804F3FC8  90 81 00 08 */	stw r4, 8(r1)
/* 804F3FCC  38 00 FF FF */	li r0, -1
/* 804F3FD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F3FD4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F3FD8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F3FDC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F3FE0  38 80 00 00 */	li r4, 0
/* 804F3FE4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008150@ha */
/* 804F3FE8  38 A5 81 50 */	addi r5, r5, 0x8150 /* 0x00008150@l */
/* 804F3FEC  38 DC 04 A8 */	addi r6, r28, 0x4a8
/* 804F3FF0  38 E0 00 00 */	li r7, 0
/* 804F3FF4  39 00 00 00 */	li r8, 0
/* 804F3FF8  39 20 00 00 */	li r9, 0
/* 804F3FFC  39 40 00 FF */	li r10, 0xff
/* 804F4000  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F4004  4B B5 8A 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F4008  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080163@ha */
/* 804F400C  38 03 01 63 */	addi r0, r3, 0x0163 /* 0x00080163@l */
/* 804F4010  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F4014  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F4018  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F401C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4020  38 81 00 20 */	addi r4, r1, 0x20
/* 804F4024  38 A0 00 00 */	li r5, 0
/* 804F4028  38 C0 00 00 */	li r6, 0
/* 804F402C  38 E0 00 00 */	li r7, 0
/* 804F4030  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F4034  FC 40 08 90 */	fmr f2, f1
/* 804F4038  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 804F403C  FC 80 18 90 */	fmr f4, f3
/* 804F4040  39 00 00 00 */	li r8, 0
/* 804F4044  4B DB 79 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F4048  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028A@ha */
/* 804F404C  38 03 02 8A */	addi r0, r3, 0x028A /* 0x0007028A@l */
/* 804F4050  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F4054  38 7C 06 3C */	addi r3, r28, 0x63c
/* 804F4058  38 81 00 28 */	addi r4, r1, 0x28
/* 804F405C  38 A0 00 00 */	li r5, 0
/* 804F4060  38 C0 FF FF */	li r6, -1
/* 804F4064  81 9C 06 3C */	lwz r12, 0x63c(r28)
/* 804F4068  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F406C  7D 89 03 A6 */	mtctr r12
/* 804F4070  4E 80 04 21 */	bctrl 
/* 804F4074  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804F4078  3C 7C 00 02 */	addis r3, r28, 2
/* 804F407C  D0 03 B0 64 */	stfs f0, -0x4f9c(r3)
/* 804F4080  38 7C 05 38 */	addi r3, r28, 0x538
/* 804F4084  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804F4088  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 804F408C  38 80 FF FF */	li r4, -1
/* 804F4090  4B FF B6 25 */	bl hasira_hahen_hit__FP4cXyzffSc
/* 804F4094  88 1C 07 92 */	lbz r0, 0x792(r28)
/* 804F4098  7C 00 07 75 */	extsb. r0, r0
/* 804F409C  41 82 00 28 */	beq lbl_804F40C4
/* 804F40A0  38 00 00 00 */	li r0, 0
/* 804F40A4  98 1C 07 92 */	stb r0, 0x792(r28)
/* 804F40A8  38 00 00 03 */	li r0, 3
/* 804F40AC  90 1C 06 1C */	stw r0, 0x61c(r28)
/* 804F40B0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F40B4  80 7C 06 04 */	lwz r3, 0x604(r28)
/* 804F40B8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F40BC  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 804F40C0  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804F40C4:
/* 804F40C4  88 1C 08 02 */	lbz r0, 0x802(r28)
/* 804F40C8  7C 00 07 74 */	extsb r0, r0
/* 804F40CC  2C 00 00 03 */	cmpwi r0, 3
/* 804F40D0  41 80 00 10 */	blt lbl_804F40E0
/* 804F40D4  A0 1C 05 8E */	lhz r0, 0x58e(r28)
/* 804F40D8  60 00 00 01 */	ori r0, r0, 1
/* 804F40DC  B0 1C 05 8E */	sth r0, 0x58e(r28)
lbl_804F40E0:
/* 804F40E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F40E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F40E8  80 63 00 00 */	lwz r3, 0(r3)
/* 804F40EC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F40F0  38 80 00 01 */	li r4, 1
/* 804F40F4  4B DB BE 99 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_804F40F8:
/* 804F40F8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 804F40FC  38 80 00 01 */	li r4, 1
/* 804F4100  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F4104  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F4108  40 82 00 18 */	bne lbl_804F4120
/* 804F410C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4110  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F4114  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F4118  41 82 00 08 */	beq lbl_804F4120
/* 804F411C  38 80 00 00 */	li r4, 0
lbl_804F4120:
/* 804F4120  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F4124  41 82 03 44 */	beq lbl_804F4468
/* 804F4128  7F 83 E3 78 */	mr r3, r28
/* 804F412C  38 80 00 1C */	li r4, 0x1c
/* 804F4130  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4134  38 A0 00 02 */	li r5, 2
/* 804F4138  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F413C  4B FF B6 CD */	bl anm_init__FP10e_fm_classifUcf
/* 804F4140  38 00 00 02 */	li r0, 2
/* 804F4144  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F4148  38 00 00 21 */	li r0, 0x21
/* 804F414C  B0 1C 07 AC */	sth r0, 0x7ac(r28)
/* 804F4150  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F4154  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F4158  A8 03 00 9C */	lha r0, 0x9c(r3)
/* 804F415C  B0 1C 07 AE */	sth r0, 0x7ae(r28)
/* 804F4160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4168  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F416C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F4170  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F4174  A0 84 02 00 */	lhz r4, 0x200(r4)
/* 804F4178  4B B4 08 15 */	bl onEventBit__11dSv_event_cFUs
/* 804F417C  48 00 02 EC */	b lbl_804F4468
lbl_804F4180:
/* 804F4180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4188  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F418C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F4190  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F4194  A0 84 02 02 */	lhz r4, 0x202(r4)
/* 804F4198  4B B4 07 F5 */	bl onEventBit__11dSv_event_cFUs
/* 804F419C  80 1C 06 20 */	lwz r0, 0x620(r28)
/* 804F41A0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 804F41A4  40 82 00 4C */	bne lbl_804F41F0
/* 804F41A8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 804F41AC  38 80 00 01 */	li r4, 1
/* 804F41B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F41B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F41B8  40 82 00 18 */	bne lbl_804F41D0
/* 804F41BC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F41C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F41C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F41C8  41 82 00 08 */	beq lbl_804F41D0
/* 804F41CC  38 80 00 00 */	li r4, 0
lbl_804F41D0:
/* 804F41D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F41D4  41 82 00 1C */	beq lbl_804F41F0
/* 804F41D8  7F 83 E3 78 */	mr r3, r28
/* 804F41DC  38 80 00 1C */	li r4, 0x1c
/* 804F41E0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804F41E4  38 A0 00 02 */	li r5, 2
/* 804F41E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F41EC  4B FF B6 1D */	bl anm_init__FP10e_fm_classifUcf
lbl_804F41F0:
/* 804F41F0  A8 1C 07 AC */	lha r0, 0x7ac(r28)
/* 804F41F4  2C 00 00 01 */	cmpwi r0, 1
/* 804F41F8  40 82 00 AC */	bne lbl_804F42A4
/* 804F41FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4200  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4204  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 804F4208  38 00 00 64 */	li r0, 0x64
/* 804F420C  3C 7C 00 02 */	addis r3, r28, 2
/* 804F4210  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F4214  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F4218  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F421C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4220  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 804F4224  4B B1 81 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804F4228  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F422C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F4230  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F4234  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F4238  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 804F423C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804F4240  38 61 00 54 */	addi r3, r1, 0x54
/* 804F4244  38 81 00 48 */	addi r4, r1, 0x48
/* 804F4248  4B D7 CC A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F424C  38 61 00 30 */	addi r3, r1, 0x30
/* 804F4250  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804F4254  38 A1 00 48 */	addi r5, r1, 0x48
/* 804F4258  4B D7 28 8D */	bl __pl__4cXyzCFRC3Vec
/* 804F425C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804F4260  3C 7C 00 02 */	addis r3, r28, 2
/* 804F4264  D0 03 AF F8 */	stfs f0, -0x5008(r3)
/* 804F4268  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804F426C  D0 03 AF FC */	stfs f0, -0x5004(r3)
/* 804F4270  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804F4274  D0 03 B0 00 */	stfs f0, -0x5000(r3)
/* 804F4278  C0 1B 05 38 */	lfs f0, 0x538(r27)
/* 804F427C  D0 03 B0 04 */	stfs f0, -0x4ffc(r3)
/* 804F4280  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 804F4284  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F4288  C0 1B 05 40 */	lfs f0, 0x540(r27)
/* 804F428C  D0 03 B0 0C */	stfs f0, -0x4ff4(r3)
/* 804F4290  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 804F4294  38 00 00 02 */	li r0, 2
/* 804F4298  B0 03 06 04 */	sth r0, 0x604(r3)
/* 804F429C  38 00 00 01 */	li r0, 1
/* 804F42A0  90 03 06 14 */	stw r0, 0x614(r3)
lbl_804F42A4:
/* 804F42A4  A8 1C 07 AE */	lha r0, 0x7ae(r28)
/* 804F42A8  2C 00 00 00 */	cmpwi r0, 0
/* 804F42AC  40 82 01 BC */	bne lbl_804F4468
/* 804F42B0  7F 83 E3 78 */	mr r3, r28
/* 804F42B4  38 80 00 20 */	li r4, 0x20
/* 804F42B8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F42BC  38 A0 00 00 */	li r5, 0
/* 804F42C0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F42C4  4B FF B5 45 */	bl anm_init__FP10e_fm_classifUcf
/* 804F42C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028F@ha */
/* 804F42CC  38 03 02 8F */	addi r0, r3, 0x028F /* 0x0007028F@l */
/* 804F42D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F42D4  38 7C 06 3C */	addi r3, r28, 0x63c
/* 804F42D8  38 81 00 24 */	addi r4, r1, 0x24
/* 804F42DC  38 A0 FF FF */	li r5, -1
/* 804F42E0  81 9C 06 3C */	lwz r12, 0x63c(r28)
/* 804F42E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F42E8  7D 89 03 A6 */	mtctr r12
/* 804F42EC  4E 80 04 21 */	bctrl 
/* 804F42F0  38 00 00 03 */	li r0, 3
/* 804F42F4  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F42F8  A0 7C 05 8E */	lhz r3, 0x58e(r28)
/* 804F42FC  38 00 FF E8 */	li r0, -24
/* 804F4300  7C 60 00 38 */	and r0, r3, r0
/* 804F4304  B0 1C 05 8E */	sth r0, 0x58e(r28)
/* 804F4308  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F430C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F4310  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4314  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F4318  38 80 00 02 */	li r4, 2
/* 804F431C  4B DB BC 71 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 804F4320  48 00 01 48 */	b lbl_804F4468
lbl_804F4324:
/* 804F4324  38 60 00 00 */	li r3, 0
/* 804F4328  B0 7C 07 70 */	sth r3, 0x770(r28)
/* 804F432C  38 00 03 E8 */	li r0, 0x3e8
/* 804F4330  B0 1C 07 B4 */	sth r0, 0x7b4(r28)
/* 804F4334  3B C0 00 00 */	li r30, 0
/* 804F4338  80 9C 05 D0 */	lwz r4, 0x5d0(r28)
/* 804F433C  38 A0 00 01 */	li r5, 1
/* 804F4340  88 04 00 11 */	lbz r0, 0x11(r4)
/* 804F4344  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F4348  40 82 00 18 */	bne lbl_804F4360
/* 804F434C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4350  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 804F4354  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F4358  41 82 00 08 */	beq lbl_804F4360
/* 804F435C  7C 65 1B 78 */	mr r5, r3
lbl_804F4360:
/* 804F4360  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804F4364  41 82 01 04 */	beq lbl_804F4468
/* 804F4368  7F 83 E3 78 */	mr r3, r28
/* 804F436C  38 80 00 0A */	li r4, 0xa
/* 804F4370  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F4374  38 A0 00 00 */	li r5, 0
/* 804F4378  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F437C  4B FF B4 8D */	bl anm_init__FP10e_fm_classifUcf
/* 804F4380  38 00 00 04 */	li r0, 4
/* 804F4384  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F4388  90 1C 06 1C */	stw r0, 0x61c(r28)
/* 804F438C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F4390  80 7C 06 08 */	lwz r3, 0x608(r28)
/* 804F4394  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4398  80 7C 05 E4 */	lwz r3, 0x5e4(r28)
/* 804F439C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F43A0  48 00 00 C8 */	b lbl_804F4468
lbl_804F43A4:
/* 804F43A4  3B C0 00 00 */	li r30, 0
/* 804F43A8  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 804F43AC  40 82 00 24 */	bne lbl_804F43D0
/* 804F43B0  38 00 00 01 */	li r0, 1
/* 804F43B4  98 1C 07 92 */	stb r0, 0x792(r28)
/* 804F43B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F43BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F43C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F43C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F43C8  38 80 00 04 */	li r4, 4
/* 804F43CC  4B DB BB C1 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_804F43D0:
/* 804F43D0  2C 1D 00 41 */	cmpwi r29, 0x41
/* 804F43D4  40 82 00 30 */	bne lbl_804F4404
/* 804F43D8  3B 60 00 00 */	li r27, 0
lbl_804F43DC:
/* 804F43DC  7F 83 E3 78 */	mr r3, r28
/* 804F43E0  7F 64 DB 78 */	mr r4, r27
/* 804F43E4  4B FF B3 2D */	bl carry_off__FP10e_fm_classi
/* 804F43E8  3B 7B 00 01 */	addi r27, r27, 1
/* 804F43EC  2C 1B 00 04 */	cmpwi r27, 4
/* 804F43F0  41 80 FF EC */	blt lbl_804F43DC
/* 804F43F4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F43F8  D0 1C 07 9C */	stfs f0, 0x79c(r28)
/* 804F43FC  38 00 00 03 */	li r0, 3
/* 804F4400  98 1C 18 2C */	stb r0, 0x182c(r28)
lbl_804F4404:
/* 804F4404  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 804F4408  38 80 00 01 */	li r4, 1
/* 804F440C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F4410  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F4414  40 82 00 18 */	bne lbl_804F442C
/* 804F4418  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F441C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F4420  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F4424  41 82 00 08 */	beq lbl_804F442C
/* 804F4428  38 80 00 00 */	li r4, 0
lbl_804F442C:
/* 804F442C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F4430  41 82 00 38 */	beq lbl_804F4468
/* 804F4434  38 00 00 00 */	li r0, 0
/* 804F4438  B0 1C 07 A2 */	sth r0, 0x7a2(r28)
/* 804F443C  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F4440  90 1C 06 1C */	stw r0, 0x61c(r28)
/* 804F4444  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F4448  80 7C 05 F8 */	lwz r3, 0x5f8(r28)
/* 804F444C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4450  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 804F4454  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4458  38 00 00 02 */	li r0, 2
/* 804F445C  B0 1C 07 B4 */	sth r0, 0x7b4(r28)
/* 804F4460  38 00 00 01 */	li r0, 1
/* 804F4464  B0 1C 07 70 */	sth r0, 0x770(r28)
lbl_804F4468:
/* 804F4468  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F446C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 804F4470  7F C3 F3 78 */	mr r3, r30
/* 804F4474  39 61 00 80 */	addi r11, r1, 0x80
/* 804F4478  4B E6 DD A9 */	bl _restgpr_27
/* 804F447C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F4480  7C 08 03 A6 */	mtlr r0
/* 804F4484  38 21 00 80 */	addi r1, r1, 0x80
/* 804F4488  4E 80 00 20 */	blr 
