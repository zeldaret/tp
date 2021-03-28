lbl_80C8FEDC:
/* 80C8FEDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C8FEE0  7C 08 02 A6 */	mflr r0
/* 80C8FEE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C8FEE8  39 61 00 70 */	addi r11, r1, 0x70
/* 80C8FEEC  4B 6D 22 D8 */	b _savegpr_23
/* 80C8FEF0  7C 7F 1B 78 */	mr r31, r3
/* 80C8FEF4  3C 60 80 C9 */	lis r3, lit_3928@ha
/* 80C8FEF8  3B C3 09 34 */	addi r30, r3, lit_3928@l
/* 80C8FEFC  38 60 00 00 */	li r3, 0
/* 80C8FF00  38 00 00 02 */	li r0, 2
/* 80C8FF04  7C 09 03 A6 */	mtctr r0
lbl_80C8FF08:
/* 80C8FF08  38 A3 05 80 */	addi r5, r3, 0x580
/* 80C8FF0C  7C 9F 2A AE */	lhax r4, r31, r5
/* 80C8FF10  2C 04 00 00 */	cmpwi r4, 0
/* 80C8FF14  41 82 00 0C */	beq lbl_80C8FF20
/* 80C8FF18  38 04 FF FF */	addi r0, r4, -1
/* 80C8FF1C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80C8FF20:
/* 80C8FF20  38 63 00 02 */	addi r3, r3, 2
/* 80C8FF24  42 00 FF E4 */	bdnz lbl_80C8FF08
/* 80C8FF28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C8FF2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C8FF30  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C8FF34  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C8FF38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C8FF3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C8FF40  A8 1F 05 7E */	lha r0, 0x57e(r31)
/* 80C8FF44  2C 00 00 00 */	cmpwi r0, 0
/* 80C8FF48  40 82 02 F8 */	bne lbl_80C90240
/* 80C8FF4C  83 BF 05 70 */	lwz r29, 0x570(r31)
/* 80C8FF50  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C8FF54  4B 37 D4 D4 */	b play__14mDoExt_baseAnmFv
/* 80C8FF58  3A E0 00 00 */	li r23, 0
/* 80C8FF5C  3B 60 00 00 */	li r27, 0
/* 80C8FF60  3B 40 00 00 */	li r26, 0
/* 80C8FF64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8FF68  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80C8FF6C  3C 60 80 C9 */	lis r3, eff_id_3814@ha
/* 80C8FF70  3B 23 09 74 */	addi r25, r3, eff_id_3814@l
lbl_80C8FF74:
/* 80C8FF74  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C8FF78  38 00 00 FF */	li r0, 0xff
/* 80C8FF7C  90 01 00 08 */	stw r0, 8(r1)
/* 80C8FF80  38 80 00 00 */	li r4, 0
/* 80C8FF84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C8FF88  38 00 FF FF */	li r0, -1
/* 80C8FF8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C8FF90  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C8FF94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C8FF98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C8FF9C  3B 1A 06 F8 */	addi r24, r26, 0x6f8
/* 80C8FFA0  7C 9F C0 2E */	lwzx r4, r31, r24
/* 80C8FFA4  38 A0 00 00 */	li r5, 0
/* 80C8FFA8  7C D9 DA 2E */	lhzx r6, r25, r27
/* 80C8FFAC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C8FFB0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C8FFB4  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C8FFB8  39 40 00 00 */	li r10, 0
/* 80C8FFBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C8FFC0  4B 3B D5 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C8FFC4  7C 7F C1 2E */	stwx r3, r31, r24
/* 80C8FFC8  3A F7 00 01 */	addi r23, r23, 1
/* 80C8FFCC  2C 17 00 05 */	cmpwi r23, 5
/* 80C8FFD0  3B 7B 00 02 */	addi r27, r27, 2
/* 80C8FFD4  3B 5A 00 04 */	addi r26, r26, 4
/* 80C8FFD8  41 80 FF 9C */	blt lbl_80C8FF74
/* 80C8FFDC  3A E0 00 00 */	li r23, 0
/* 80C8FFE0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C8FFE4  4B 3F 44 7C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C8FFE8  28 03 00 00 */	cmplwi r3, 0
/* 80C8FFEC  41 82 00 08 */	beq lbl_80C8FFF4
/* 80C8FFF0  3A E0 00 01 */	li r23, 1
lbl_80C8FFF4:
/* 80C8FFF4  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C8FFF8  4B 3F 46 60 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C8FFFC  28 03 00 00 */	cmplwi r3, 0
/* 80C90000  41 82 00 20 */	beq lbl_80C90020
/* 80C90004  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C90008  4B 3F 46 E8 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80C9000C  4B 5D 3A 3C */	b GetAc__8cCcD_ObjFv
/* 80C90010  A8 03 00 08 */	lha r0, 8(r3)
/* 80C90014  2C 00 00 EF */	cmpwi r0, 0xef
/* 80C90018  40 82 00 08 */	bne lbl_80C90020
/* 80C9001C  3A E0 00 01 */	li r23, 1
lbl_80C90020:
/* 80C90020  A8 1F 05 80 */	lha r0, 0x580(r31)
/* 80C90024  2C 00 00 00 */	cmpwi r0, 0
/* 80C90028  40 82 00 68 */	bne lbl_80C90090
/* 80C9002C  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C90030  4B 3F 42 90 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80C90034  28 03 00 00 */	cmplwi r3, 0
/* 80C90038  41 82 00 58 */	beq lbl_80C90090
/* 80C9003C  38 00 00 0A */	li r0, 0xa
/* 80C90040  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80C90044  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C90048  7C 03 07 74 */	extsb r3, r0
/* 80C9004C  4B 39 D0 20 */	b dComIfGp_getReverb__Fi
/* 80C90050  7C 67 1B 78 */	mr r7, r3
/* 80C90054  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A4@ha */
/* 80C90058  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000800A4@l */
/* 80C9005C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C90060  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C90064  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C90068  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9006C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C90070  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C90074  38 C0 00 00 */	li r6, 0
/* 80C90078  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C9007C  FC 40 08 90 */	fmr f2, f1
/* 80C90080  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80C90084  FC 80 18 90 */	fmr f4, f3
/* 80C90088  39 00 00 00 */	li r8, 0
/* 80C9008C  4B 61 B8 F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C90090:
/* 80C90090  7E E0 07 75 */	extsb. r0, r23
/* 80C90094  41 82 00 E4 */	beq lbl_80C90178
/* 80C90098  38 00 00 01 */	li r0, 1
/* 80C9009C  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80C900A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C900A4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C900A8  28 04 00 FF */	cmplwi r4, 0xff
/* 80C900AC  41 82 00 18 */	beq lbl_80C900C4
/* 80C900B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C900B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C900B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C900BC  7C 05 07 74 */	extsb r5, r0
/* 80C900C0  4B 3A 51 40 */	b onSwitch__10dSv_info_cFii
lbl_80C900C4:
/* 80C900C4  3A E0 00 00 */	li r23, 0
/* 80C900C8  3B A0 00 00 */	li r29, 0
/* 80C900CC  3C 60 80 C9 */	lis r3, eff_id_3833@ha
/* 80C900D0  3B 43 09 80 */	addi r26, r3, eff_id_3833@l
lbl_80C900D4:
/* 80C900D4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C900D8  38 80 00 00 */	li r4, 0
/* 80C900DC  90 81 00 08 */	stw r4, 8(r1)
/* 80C900E0  38 00 FF FF */	li r0, -1
/* 80C900E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C900E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C900EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C900F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C900F4  38 80 00 00 */	li r4, 0
/* 80C900F8  7C BA EA 2E */	lhzx r5, r26, r29
/* 80C900FC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80C90100  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80C90104  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C90108  39 20 00 00 */	li r9, 0
/* 80C9010C  39 40 00 FF */	li r10, 0xff
/* 80C90110  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C90114  4B 3B C9 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C90118  3A F7 00 01 */	addi r23, r23, 1
/* 80C9011C  2C 17 00 02 */	cmpwi r23, 2
/* 80C90120  3B BD 00 02 */	addi r29, r29, 2
/* 80C90124  41 80 FF B0 */	blt lbl_80C900D4
/* 80C90128  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9012C  7C 03 07 74 */	extsb r3, r0
/* 80C90130  4B 39 CF 3C */	b dComIfGp_getReverb__Fi
/* 80C90134  7C 67 1B 78 */	mr r7, r3
/* 80C90138  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A5@ha */
/* 80C9013C  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000800A5@l */
/* 80C90140  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C90144  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C90148  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9014C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C90150  38 81 00 28 */	addi r4, r1, 0x28
/* 80C90154  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C90158  38 C0 00 00 */	li r6, 0
/* 80C9015C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C90160  FC 40 08 90 */	fmr f2, f1
/* 80C90164  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80C90168  FC 80 18 90 */	fmr f4, f3
/* 80C9016C  39 00 00 00 */	li r8, 0
/* 80C90170  4B 61 B8 14 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C90174  83 BF 05 78 */	lwz r29, 0x578(r31)
lbl_80C90178:
/* 80C90178  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9017C  7C 03 07 74 */	extsb r3, r0
/* 80C90180  4B 39 CE EC */	b dComIfGp_getReverb__Fi
/* 80C90184  7C 67 1B 78 */	mr r7, r3
/* 80C90188  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A3@ha */
/* 80C9018C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000800A3@l */
/* 80C90190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C90194  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C90198  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C9019C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C901A0  38 81 00 24 */	addi r4, r1, 0x24
/* 80C901A4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C901A8  38 C0 00 00 */	li r6, 0
/* 80C901AC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C901B0  FC 40 08 90 */	fmr f2, f1
/* 80C901B4  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80C901B8  FC 80 18 90 */	fmr f4, f3
/* 80C901BC  39 00 00 00 */	li r8, 0
/* 80C901C0  4B 61 C3 4C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C901C4  88 1F 05 7C */	lbz r0, 0x57c(r31)
/* 80C901C8  28 00 00 01 */	cmplwi r0, 1
/* 80C901CC  41 82 00 24 */	beq lbl_80C901F0
/* 80C901D0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C901D4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C901D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C901DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C901E0  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 80C901E4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C901E8  4B 5D F5 20 */	b SetR__8cM3dGSphFf
/* 80C901EC  48 00 00 10 */	b lbl_80C901FC
lbl_80C901F0:
/* 80C901F0  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 80C901F4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80C901F8  4B 5D F5 10 */	b SetR__8cM3dGSphFf
lbl_80C901FC:
/* 80C901FC  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 80C90200  38 81 00 30 */	addi r4, r1, 0x30
/* 80C90204  4B 5D F4 44 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C90208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9020C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C90210  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C90214  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 80C90218  4B 5D 49 90 */	b Set__4cCcSFP8cCcD_Obj
/* 80C9021C  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80C90220  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80C90224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C90228  40 81 00 DC */	ble lbl_80C90304
/* 80C9022C  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80C90230  4B 51 76 FC */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 80C90234  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C90238  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 80C9023C  48 00 00 C8 */	b lbl_80C90304
lbl_80C90240:
/* 80C90240  83 BF 05 78 */	lwz r29, 0x578(r31)
/* 80C90244  88 1F 05 7C */	lbz r0, 0x57c(r31)
/* 80C90248  28 00 00 01 */	cmplwi r0, 1
/* 80C9024C  41 82 00 B8 */	beq lbl_80C90304
/* 80C90250  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C90254  EC 01 00 2A */	fadds f0, f1, f0
/* 80C90258  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9025C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C90260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C90264  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C90268  38 00 00 FF */	li r0, 0xff
/* 80C9026C  90 01 00 08 */	stw r0, 8(r1)
/* 80C90270  38 80 00 00 */	li r4, 0
/* 80C90274  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C90278  38 00 FF FF */	li r0, -1
/* 80C9027C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C90280  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C90284  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C90288  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C9028C  80 9F 06 F8 */	lwz r4, 0x6f8(r31)
/* 80C90290  38 A0 00 00 */	li r5, 0
/* 80C90294  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000820B@ha */
/* 80C90298  38 C6 82 0B */	addi r6, r6, 0x820B /* 0x0000820B@l */
/* 80C9029C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C902A0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C902A4  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C902A8  39 40 00 00 */	li r10, 0
/* 80C902AC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C902B0  4B 3B D2 1C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C902B4  90 7F 06 F8 */	stw r3, 0x6f8(r31)
/* 80C902B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C902BC  7C 03 07 74 */	extsb r3, r0
/* 80C902C0  4B 39 CD AC */	b dComIfGp_getReverb__Fi
/* 80C902C4  7C 67 1B 78 */	mr r7, r3
/* 80C902C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A6@ha */
/* 80C902CC  38 03 00 A6 */	addi r0, r3, 0x00A6 /* 0x000800A6@l */
/* 80C902D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C902D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C902D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C902DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C902E0  38 81 00 20 */	addi r4, r1, 0x20
/* 80C902E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C902E8  38 C0 00 00 */	li r6, 0
/* 80C902EC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C902F0  FC 40 08 90 */	fmr f2, f1
/* 80C902F4  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80C902F8  FC 80 18 90 */	fmr f4, f3
/* 80C902FC  39 00 00 00 */	li r8, 0
/* 80C90300  4B 61 C2 0C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C90304:
/* 80C90304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C90308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9030C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C90310  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C90314  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C90318  4B 6B 65 D0 */	b PSMTXTrans
/* 80C9031C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C90320  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C90324  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C90328  4B 37 C1 0C */	b mDoMtx_YrotM__FPA4_fs
/* 80C9032C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C90330  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C90334  38 9D 00 24 */	addi r4, r29, 0x24
/* 80C90338  4B 6B 61 78 */	b PSMTXCopy
/* 80C9033C  38 1D 00 24 */	addi r0, r29, 0x24
/* 80C90340  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C90344  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C90348  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C9034C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C90350  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C90354  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C90358  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C9035C  38 60 00 01 */	li r3, 1
/* 80C90360  39 61 00 70 */	addi r11, r1, 0x70
/* 80C90364  4B 6D 1E AC */	b _restgpr_23
/* 80C90368  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C9036C  7C 08 03 A6 */	mtlr r0
/* 80C90370  38 21 00 70 */	addi r1, r1, 0x70
/* 80C90374  4E 80 00 20 */	blr 
