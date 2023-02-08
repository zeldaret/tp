lbl_80D4FEDC:
/* 80D4FEDC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80D4FEE0  7C 08 02 A6 */	mflr r0
/* 80D4FEE4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D4FEE8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D4FEEC  4B 61 22 DD */	bl _savegpr_24
/* 80D4FEF0  7C 7F 1B 78 */	mr r31, r3
/* 80D4FEF4  3C 60 80 D5 */	lis r3, l_minRelative@ha /* 0x80D50908@ha */
/* 80D4FEF8  3B C3 09 08 */	addi r30, r3, l_minRelative@l /* 0x80D50908@l */
/* 80D4FEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4FF00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4FF04  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80D4FF08  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D4FF0C  28 00 00 00 */	cmplwi r0, 0
/* 80D4FF10  41 82 03 C0 */	beq lbl_80D502D0
/* 80D4FF14  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D4FF18  28 00 00 01 */	cmplwi r0, 1
/* 80D4FF1C  41 82 03 B4 */	beq lbl_80D502D0
/* 80D4FF20  3B 5D 40 C0 */	addi r26, r29, 0x40c0
/* 80D4FF24  7F 43 D3 78 */	mr r3, r26
/* 80D4FF28  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FF2C  38 84 09 C8 */	addi r4, r4, l_arcName@l /* 0x80D509C8@l */
/* 80D4FF30  80 84 00 00 */	lwz r4, 0(r4)
/* 80D4FF34  38 A0 00 00 */	li r5, 0
/* 80D4FF38  38 C0 00 00 */	li r6, 0
/* 80D4FF3C  4B 2F 7B E1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D4FF40  7C 78 1B 78 */	mr r24, r3
/* 80D4FF44  2C 18 FF FF */	cmpwi r24, -1
/* 80D4FF48  41 82 04 38 */	beq lbl_80D50380
/* 80D4FF4C  7F 43 D3 78 */	mr r3, r26
/* 80D4FF50  7F 19 C3 78 */	mr r25, r24
/* 80D4FF54  7F 04 C3 78 */	mr r4, r24
/* 80D4FF58  4B 2F 80 05 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D4FF5C  7C 7B 1B 78 */	mr r27, r3
/* 80D4FF60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4FF64  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4FF68  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80D4FF6C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D4FF70  64 00 80 00 */	oris r0, r0, 0x8000
/* 80D4FF74  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80D4FF78  7F 43 D3 78 */	mr r3, r26
/* 80D4FF7C  7F 04 C3 78 */	mr r4, r24
/* 80D4FF80  4B 2F 7D CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D4FF84  2C 03 00 00 */	cmpwi r3, 0
/* 80D4FF88  41 82 02 DC */	beq lbl_80D50264
/* 80D4FF8C  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D4FF90  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80D4FF94  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80D4FF98  7C 04 00 00 */	cmpw r4, r0
/* 80D4FF9C  41 82 01 B0 */	beq lbl_80D5014C
/* 80D4FFA0  40 80 00 24 */	bge lbl_80D4FFC4
/* 80D4FFA4  38 03 30 32 */	addi r0, r3, 0x3032
/* 80D4FFA8  7C 04 00 00 */	cmpw r4, r0
/* 80D4FFAC  41 82 00 B0 */	beq lbl_80D5005C
/* 80D4FFB0  40 80 01 24 */	bge lbl_80D500D4
/* 80D4FFB4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D4FFB8  7C 04 00 00 */	cmpw r4, r0
/* 80D4FFBC  40 80 00 18 */	bge lbl_80D4FFD4
/* 80D4FFC0  48 00 02 A4 */	b lbl_80D50264
lbl_80D4FFC4:
/* 80D4FFC4  38 03 30 36 */	addi r0, r3, 0x3036
/* 80D4FFC8  7C 04 00 00 */	cmpw r4, r0
/* 80D4FFCC  41 82 02 2C */	beq lbl_80D501F8
/* 80D4FFD0  48 00 02 94 */	b lbl_80D50264
lbl_80D4FFD4:
/* 80D4FFD4  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 80D4FFD8  7F E4 FB 78 */	mr r4, r31
/* 80D4FFDC  3C A0 80 D5 */	lis r5, d_a_tag_Lv6Gate__stringBase0@ha /* 0x80D50998@ha */
/* 80D4FFE0  38 A5 09 98 */	addi r5, r5, d_a_tag_Lv6Gate__stringBase0@l /* 0x80D50998@l */
/* 80D4FFE4  38 A5 00 08 */	addi r5, r5, 8
/* 80D4FFE8  4B 2F 29 71 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80D4FFEC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D4FFF0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80D4FFF4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80D4FFF8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80D4FFFC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80D50000  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D50004  4B 2B CD 61 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D50008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D5000C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D50010  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D50014  4B 2B C4 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D50018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D5001C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D50020  38 81 00 88 */	addi r4, r1, 0x88
/* 80D50024  7C 85 23 78 */	mr r5, r4
/* 80D50028  4B 5F 6D 45 */	bl PSMTXMultVec
/* 80D5002C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80D50030  38 81 00 88 */	addi r4, r1, 0x88
/* 80D50034  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D50038  3C A5 00 01 */	addis r5, r5, 1
/* 80D5003C  38 05 80 00 */	addi r0, r5, -32768
/* 80D50040  7C 05 07 34 */	extsh r5, r0
/* 80D50044  38 C0 00 00 */	li r6, 0
/* 80D50048  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D5004C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80D50050  7D 89 03 A6 */	mtctr r12
/* 80D50054  4E 80 04 21 */	bctrl 
/* 80D50058  48 00 02 0C */	b lbl_80D50264
lbl_80D5005C:
/* 80D5005C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D50060  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80D50064  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80D50068  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80D5006C  38 61 00 38 */	addi r3, r1, 0x38
/* 80D50070  38 80 00 00 */	li r4, 0
/* 80D50074  38 A0 00 00 */	li r5, 0
/* 80D50078  38 C0 00 00 */	li r6, 0
/* 80D5007C  4B 51 73 79 */	bl __ct__5csXyzFsss
/* 80D50080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50088  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D5008C  38 80 00 00 */	li r4, 0
/* 80D50090  90 81 00 08 */	stw r4, 8(r1)
/* 80D50094  38 00 FF FF */	li r0, -1
/* 80D50098  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D5009C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D500A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D500A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D500A8  38 80 00 00 */	li r4, 0
/* 80D500AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B89@ha */
/* 80D500B0  38 A5 8B 89 */	addi r5, r5, 0x8B89 /* 0x00008B89@l */
/* 80D500B4  38 C1 00 7C */	addi r6, r1, 0x7c
/* 80D500B8  38 E0 00 00 */	li r7, 0
/* 80D500BC  39 01 00 38 */	addi r8, r1, 0x38
/* 80D500C0  39 20 00 00 */	li r9, 0
/* 80D500C4  39 40 00 FF */	li r10, 0xff
/* 80D500C8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D500CC  4B 2F C9 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D500D0  48 00 01 94 */	b lbl_80D50264
lbl_80D500D4:
/* 80D500D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D500D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D500DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D500E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D500E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D500E8  7C 05 07 74 */	extsb r5, r0
/* 80D500EC  4B 2E 51 15 */	bl onSwitch__10dSv_info_cFii
/* 80D500F0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80D500F4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80D500F8  90 61 00 70 */	stw r3, 0x70(r1)
/* 80D500FC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D50100  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80D50104  90 01 00 78 */	stw r0, 0x78(r1)
/* 80D50108  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080295@ha */
/* 80D5010C  38 03 02 95 */	addi r0, r3, 0x0295 /* 0x00080295@l */
/* 80D50110  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D50114  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D50118  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D5011C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D50120  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D50124  38 A1 00 70 */	addi r5, r1, 0x70
/* 80D50128  38 C0 00 00 */	li r6, 0
/* 80D5012C  38 E0 00 00 */	li r7, 0
/* 80D50130  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D50134  FC 40 08 90 */	fmr f2, f1
/* 80D50138  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80D5013C  FC 80 18 90 */	fmr f4, f3
/* 80D50140  39 00 00 00 */	li r8, 0
/* 80D50144  4B 55 B8 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D50148  48 00 01 1C */	b lbl_80D50264
lbl_80D5014C:
/* 80D5014C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80D50150  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80D50154  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D50158  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D5015C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80D50160  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D50164  38 00 00 00 */	li r0, 0
/* 80D50168  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5016C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80D50170  38 81 00 34 */	addi r4, r1, 0x34
/* 80D50174  4B 2C 98 49 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80D50178  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80D5017C  28 03 00 00 */	cmplwi r3, 0
/* 80D50180  41 82 00 E4 */	beq lbl_80D50264
/* 80D50184  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80D50188  D0 43 04 BC */	stfs f2, 0x4bc(r3)
/* 80D5018C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80D50190  D0 23 04 C0 */	stfs f1, 0x4c0(r3)
/* 80D50194  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D50198  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80D5019C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80D501A0  D0 43 04 D0 */	stfs f2, 0x4d0(r3)
/* 80D501A4  D0 23 04 D4 */	stfs f1, 0x4d4(r3)
/* 80D501A8  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80D501AC  38 00 00 00 */	li r0, 0
/* 80D501B0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D501B4  38 60 02 76 */	li r3, 0x276
/* 80D501B8  38 81 00 30 */	addi r4, r1, 0x30
/* 80D501BC  4B 2C 98 71 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80D501C0  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80D501C4  28 03 00 00 */	cmplwi r3, 0
/* 80D501C8  41 82 00 9C */	beq lbl_80D50264
/* 80D501CC  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80D501D0  D0 43 04 BC */	stfs f2, 0x4bc(r3)
/* 80D501D4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80D501D8  D0 23 04 C0 */	stfs f1, 0x4c0(r3)
/* 80D501DC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D501E0  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80D501E4  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80D501E8  D0 43 04 D0 */	stfs f2, 0x4d0(r3)
/* 80D501EC  D0 23 04 D4 */	stfs f1, 0x4d4(r3)
/* 80D501F0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80D501F4  48 00 00 70 */	b lbl_80D50264
lbl_80D501F8:
/* 80D501F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D501FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50200  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D50204  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D50208  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5020C  7C 05 07 74 */	extsb r5, r0
/* 80D50210  4B 2E 4F F1 */	bl onSwitch__10dSv_info_cFii
/* 80D50214  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D50218  A8 03 00 08 */	lha r0, 8(r3)
/* 80D5021C  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 80D50220  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D50224  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80D50228  3C 00 43 30 */	lis r0, 0x4330
/* 80D5022C  90 01 00 98 */	stw r0, 0x98(r1)
/* 80D50230  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80D50234  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D50238  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D5023C  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D50240  4B 51 7F 95 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D50244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D50248  40 82 00 14 */	bne lbl_80D5025C
/* 80D5024C  7F A3 EB 78 */	mr r3, r29
/* 80D50250  38 9F 05 78 */	addi r4, r31, 0x578
/* 80D50254  7F E5 FB 78 */	mr r5, r31
/* 80D50258  4B 32 47 B1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D5025C:
/* 80D5025C  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80D50260  4B 2C 9A 59 */	bl fopAcM_delete__FUi
lbl_80D50264:
/* 80D50264  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D50268  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80D5026C  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80D50270  7C 04 00 00 */	cmpw r4, r0
/* 80D50274  40 80 00 20 */	bge lbl_80D50294
/* 80D50278  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D5027C  7C 04 00 00 */	cmpw r4, r0
/* 80D50280  40 80 00 08 */	bge lbl_80D50288
/* 80D50284  48 00 00 10 */	b lbl_80D50294
lbl_80D50288:
/* 80D50288  7F 43 D3 78 */	mr r3, r26
/* 80D5028C  7F 24 CB 78 */	mr r4, r25
/* 80D50290  4B 2F 7E ED */	bl cutEnd__16dEvent_manager_cFi
lbl_80D50294:
/* 80D50294  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D50298  28 00 00 02 */	cmplwi r0, 2
/* 80D5029C  40 82 00 E4 */	bne lbl_80D50380
/* 80D502A0  A8 9F 07 68 */	lha r4, 0x768(r31)
/* 80D502A4  2C 04 FF FF */	cmpwi r4, -1
/* 80D502A8  41 82 00 D8 */	beq lbl_80D50380
/* 80D502AC  7F 43 D3 78 */	mr r3, r26
/* 80D502B0  4B 2F 77 C9 */	bl endCheck__16dEvent_manager_cFs
/* 80D502B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D502B8  41 82 00 C8 */	beq lbl_80D50380
/* 80D502BC  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 80D502C0  4B 2F 21 A9 */	bl reset__14dEvt_control_cFv
/* 80D502C4  38 00 FF FF */	li r0, -1
/* 80D502C8  B0 1F 07 68 */	sth r0, 0x768(r31)
/* 80D502CC  48 00 00 B4 */	b lbl_80D50380
lbl_80D502D0:
/* 80D502D0  88 1F 07 6A */	lbz r0, 0x76a(r31)
/* 80D502D4  28 00 00 00 */	cmplwi r0, 0
/* 80D502D8  41 82 00 A8 */	beq lbl_80D50380
/* 80D502DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D502E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D502E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D502E8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D502EC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D502F0  7C 05 07 74 */	extsb r5, r0
/* 80D502F4  4B 2E 50 6D */	bl isSwitch__10dSv_info_cCFii
/* 80D502F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D502FC  40 82 00 84 */	bne lbl_80D50380
/* 80D50300  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D50304  80 03 09 C8 */	lwz r0, l_arcName@l(r3)  /* 0x80D509C8@l */
/* 80D50308  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D5030C  3B 1D 40 C0 */	addi r24, r29, 0x40c0
/* 80D50310  7F 03 C3 78 */	mr r3, r24
/* 80D50314  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D50318  4B 2F 64 E9 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D5031C  7F 03 C3 78 */	mr r3, r24
/* 80D50320  7F E4 FB 78 */	mr r4, r31
/* 80D50324  3C A0 80 D5 */	lis r5, d_a_tag_Lv6Gate__stringBase0@ha /* 0x80D50998@ha */
/* 80D50328  38 A5 09 98 */	addi r5, r5, d_a_tag_Lv6Gate__stringBase0@l /* 0x80D50998@l */
/* 80D5032C  38 A5 00 1D */	addi r5, r5, 0x1d
/* 80D50330  38 C0 00 FF */	li r6, 0xff
/* 80D50334  4B 2F 74 25 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D50338  B0 7F 07 68 */	sth r3, 0x768(r31)
/* 80D5033C  7F E3 FB 78 */	mr r3, r31
/* 80D50340  A8 9F 07 68 */	lha r4, 0x768(r31)
/* 80D50344  38 A0 00 FF */	li r5, 0xff
/* 80D50348  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D5034C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D50350  38 E0 00 00 */	li r7, 0
/* 80D50354  39 00 00 01 */	li r8, 1
/* 80D50358  4B 2C B3 25 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D5035C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50364  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D50368  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D5036C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D50370  7C 05 07 74 */	extsb r5, r0
/* 80D50374  4B 2E 4E 8D */	bl onSwitch__10dSv_info_cFii
/* 80D50378  38 00 00 00 */	li r0, 0
/* 80D5037C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D50380:
/* 80D50380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50388  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5038C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D50390  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D50394  7C 05 07 74 */	extsb r5, r0
/* 80D50398  4B 2E 4F C9 */	bl isSwitch__10dSv_info_cCFii
/* 80D5039C  2C 03 00 00 */	cmpwi r3, 0
/* 80D503A0  41 82 00 34 */	beq lbl_80D503D4
/* 80D503A4  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D503A8  4B 51 7E 2D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D503AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D503B0  40 82 00 14 */	bne lbl_80D503C4
/* 80D503B4  7F A3 EB 78 */	mr r3, r29
/* 80D503B8  38 9F 05 78 */	addi r4, r31, 0x578
/* 80D503BC  7F E5 FB 78 */	mr r5, r31
/* 80D503C0  4B 32 46 49 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D503C4:
/* 80D503C4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D503C8  4B 2B D0 61 */	bl play__14mDoExt_baseAnmFv
/* 80D503CC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D503D0  4B 2B D0 59 */	bl play__14mDoExt_baseAnmFv
lbl_80D503D4:
/* 80D503D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D503D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D503DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D503E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D503E4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D503E8  7C 05 07 74 */	extsb r5, r0
/* 80D503EC  4B 2E 4F 75 */	bl isSwitch__10dSv_info_cCFii
/* 80D503F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D503F4  40 82 00 0C */	bne lbl_80D50400
/* 80D503F8  38 00 00 00 */	li r0, 0
/* 80D503FC  48 00 00 EC */	b lbl_80D504E8
lbl_80D50400:
/* 80D50400  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D50404  38 63 00 24 */	addi r3, r3, 0x24
/* 80D50408  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D5040C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D50410  4B 5F 60 A1 */	bl PSMTXCopy
/* 80D50414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D50418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D5041C  7C 64 1B 78 */	mr r4, r3
/* 80D50420  4B 5F 61 91 */	bl PSMTXInverse
/* 80D50424  3B 40 00 00 */	li r26, 0
/* 80D50428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5042C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50430  3B 9E 00 00 */	addi r28, r30, 0
/* 80D50434  3B 1E 00 0C */	addi r24, r30, 0xc
lbl_80D50438:
/* 80D50438  2C 1A 00 00 */	cmpwi r26, 0
/* 80D5043C  40 82 00 0C */	bne lbl_80D50448
/* 80D50440  83 79 5D AC */	lwz r27, 0x5dac(r25)
/* 80D50444  48 00 00 20 */	b lbl_80D50464
lbl_80D50448:
/* 80D50448  38 00 02 75 */	li r0, 0x275
/* 80D5044C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80D50450  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80D50454  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80D50458  38 81 00 20 */	addi r4, r1, 0x20
/* 80D5045C  4B 2C 93 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D50460  7C 7B 1B 78 */	mr r27, r3
lbl_80D50464:
/* 80D50464  28 1B 00 00 */	cmplwi r27, 0
/* 80D50468  41 82 00 70 */	beq lbl_80D504D8
/* 80D5046C  4B 2B C8 5D */	bl push__14mDoMtx_stack_cFv
/* 80D50470  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80D50474  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D50478  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D5047C  38 A1 00 40 */	addi r5, r1, 0x40
/* 80D50480  4B 5F 68 ED */	bl PSMTXMultVec
/* 80D50484  4B 2B C8 91 */	bl pop__14mDoMtx_stack_cFv
/* 80D50488  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80D5048C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D50490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50494  4C 41 13 82 */	cror 2, 1, 2
/* 80D50498  40 82 00 40 */	bne lbl_80D504D8
/* 80D5049C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80D504A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D504A4  4C 40 13 82 */	cror 2, 0, 2
/* 80D504A8  40 82 00 30 */	bne lbl_80D504D8
/* 80D504AC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80D504B0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D504B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D504B8  4C 41 13 82 */	cror 2, 1, 2
/* 80D504BC  40 82 00 1C */	bne lbl_80D504D8
/* 80D504C0  C0 18 00 08 */	lfs f0, 8(r24)
/* 80D504C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D504C8  4C 40 13 82 */	cror 2, 0, 2
/* 80D504CC  40 82 00 0C */	bne lbl_80D504D8
/* 80D504D0  38 00 00 01 */	li r0, 1
/* 80D504D4  48 00 00 14 */	b lbl_80D504E8
lbl_80D504D8:
/* 80D504D8  3B 5A 00 01 */	addi r26, r26, 1
/* 80D504DC  2C 1A 00 02 */	cmpwi r26, 2
/* 80D504E0  41 80 FF 58 */	blt lbl_80D50438
/* 80D504E4  38 00 00 00 */	li r0, 0
lbl_80D504E8:
/* 80D504E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D504EC  41 82 00 C4 */	beq lbl_80D505B0
/* 80D504F0  38 7F 06 38 */	addi r3, r31, 0x638
/* 80D504F4  4B 51 7C E1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D504F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D504FC  41 82 00 68 */	beq lbl_80D50564
/* 80D50500  7F A3 EB 78 */	mr r3, r29
/* 80D50504  38 9F 06 38 */	addi r4, r31, 0x638
/* 80D50508  4B 32 3D 49 */	bl Release__4cBgSFP9dBgW_Base
/* 80D5050C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80D50510  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80D50514  90 61 00 58 */	stw r3, 0x58(r1)
/* 80D50518  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80D5051C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80D50520  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D50524  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080297@ha */
/* 80D50528  38 03 02 97 */	addi r0, r3, 0x0297 /* 0x00080297@l */
/* 80D5052C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D50530  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D50534  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D50538  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5053C  38 81 00 28 */	addi r4, r1, 0x28
/* 80D50540  38 A1 00 58 */	addi r5, r1, 0x58
/* 80D50544  38 C0 00 00 */	li r6, 0
/* 80D50548  38 E0 00 00 */	li r7, 0
/* 80D5054C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D50550  FC 40 08 90 */	fmr f2, f1
/* 80D50554  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80D50558  FC 80 18 90 */	fmr f4, f3
/* 80D5055C  39 00 00 00 */	li r8, 0
/* 80D50560  4B 55 B4 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D50564:
/* 80D50564  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D50568  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80D5056C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D50570  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80D50574  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80D50578  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80D5057C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D50580  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 80D50584  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D50588  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D5058C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50590  40 80 00 08 */	bge lbl_80D50598
/* 80D50594  D0 1F 07 60 */	stfs f0, 0x760(r31)
lbl_80D50598:
/* 80D50598  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80D5059C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D505A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D505A4  40 80 00 CC */	bge lbl_80D50670
/* 80D505A8  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 80D505AC  48 00 00 C4 */	b lbl_80D50670
lbl_80D505B0:
/* 80D505B0  38 7F 06 38 */	addi r3, r31, 0x638
/* 80D505B4  4B 51 7C 21 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D505B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D505BC  40 82 00 6C */	bne lbl_80D50628
/* 80D505C0  7F A3 EB 78 */	mr r3, r29
/* 80D505C4  38 9F 06 38 */	addi r4, r31, 0x638
/* 80D505C8  7F E5 FB 78 */	mr r5, r31
/* 80D505CC  4B 32 44 3D */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D505D0  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80D505D4  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80D505D8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80D505DC  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D505E0  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80D505E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D505E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080296@ha */
/* 80D505EC  38 03 02 96 */	addi r0, r3, 0x0296 /* 0x00080296@l */
/* 80D505F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D505F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D505F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D505FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D50600  38 81 00 24 */	addi r4, r1, 0x24
/* 80D50604  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80D50608  38 C0 00 00 */	li r6, 0
/* 80D5060C  38 E0 00 00 */	li r7, 0
/* 80D50610  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D50614  FC 40 08 90 */	fmr f2, f1
/* 80D50618  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80D5061C  FC 80 18 90 */	fmr f4, f3
/* 80D50620  39 00 00 00 */	li r8, 0
/* 80D50624  4B 55 B3 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D50628:
/* 80D50628  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D5062C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80D50630  EC 01 00 2A */	fadds f0, f1, f0
/* 80D50634  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80D50638  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80D5063C  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80D50640  EC 01 00 2A */	fadds f0, f1, f0
/* 80D50644  D0 1F 07 64 */	stfs f0, 0x764(r31)
/* 80D50648  C0 3F 07 60 */	lfs f1, 0x760(r31)
/* 80D5064C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80D50650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50654  40 81 00 08 */	ble lbl_80D5065C
/* 80D50658  D0 1F 07 60 */	stfs f0, 0x760(r31)
lbl_80D5065C:
/* 80D5065C  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 80D50660  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80D50664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50668  40 81 00 08 */	ble lbl_80D50670
/* 80D5066C  D0 1F 07 64 */	stfs f0, 0x764(r31)
lbl_80D50670:
/* 80D50670  38 60 00 01 */	li r3, 1
/* 80D50674  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D50678  4B 61 1B 9D */	bl _restgpr_24
/* 80D5067C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D50680  7C 08 03 A6 */	mtlr r0
/* 80D50684  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80D50688  4E 80 00 20 */	blr 
