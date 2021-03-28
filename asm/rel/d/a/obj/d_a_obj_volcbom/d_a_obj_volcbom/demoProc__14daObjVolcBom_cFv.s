lbl_80D25EE8:
/* 80D25EE8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D25EEC  7C 08 02 A6 */	mflr r0
/* 80D25EF0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D25EF4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D25EF8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D25EFC  39 61 00 70 */	addi r11, r1, 0x70
/* 80D25F00  4B 63 C2 D4 */	b _savegpr_27
/* 80D25F04  7C 7F 1B 78 */	mr r31, r3
/* 80D25F08  3C 60 80 D2 */	lis r3, l_midna_offset@ha
/* 80D25F0C  3B C3 6B 5C */	addi r30, r3, l_midna_offset@l
/* 80D25F10  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80D25F14  83 63 10 18 */	lwz r27, m_midnaActor__9daPy_py_c@l(r3)
/* 80D25F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D25F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D25F20  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80D25F24  7F A3 EB 78 */	mr r3, r29
/* 80D25F28  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D25F2C  3C A0 80 D2 */	lis r5, action_table@ha
/* 80D25F30  38 A5 6D B4 */	addi r5, r5, action_table@l
/* 80D25F34  38 C0 00 04 */	li r6, 4
/* 80D25F38  38 E0 00 00 */	li r7, 0
/* 80D25F3C  39 00 00 00 */	li r8, 0
/* 80D25F40  4B 32 1E D0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D25F44  7C 7C 1B 78 */	mr r28, r3
/* 80D25F48  7F A3 EB 78 */	mr r3, r29
/* 80D25F4C  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D25F50  4B 32 1D FC */	b getIsAddvance__16dEvent_manager_cFi
/* 80D25F54  2C 03 00 00 */	cmpwi r3, 0
/* 80D25F58  41 82 01 C0 */	beq lbl_80D26118
/* 80D25F5C  2C 1C 00 02 */	cmpwi r28, 2
/* 80D25F60  41 82 00 60 */	beq lbl_80D25FC0
/* 80D25F64  40 80 00 14 */	bge lbl_80D25F78
/* 80D25F68  2C 1C 00 00 */	cmpwi r28, 0
/* 80D25F6C  41 82 00 18 */	beq lbl_80D25F84
/* 80D25F70  40 80 00 60 */	bge lbl_80D25FD0
/* 80D25F74  48 00 01 A4 */	b lbl_80D26118
lbl_80D25F78:
/* 80D25F78  2C 1C 00 04 */	cmpwi r28, 4
/* 80D25F7C  40 80 01 9C */	bge lbl_80D26118
/* 80D25F80  48 00 01 44 */	b lbl_80D260C4
lbl_80D25F84:
/* 80D25F84  7F A3 EB 78 */	mr r3, r29
/* 80D25F88  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D25F8C  3C A0 80 D2 */	lis r5, struct_80D26C0C+0x0@ha
/* 80D25F90  38 A5 6C 0C */	addi r5, r5, struct_80D26C0C+0x0@l
/* 80D25F94  38 A5 00 42 */	addi r5, r5, 0x42
/* 80D25F98  38 C0 00 03 */	li r6, 3
/* 80D25F9C  4B 32 21 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D25FA0  28 03 00 00 */	cmplwi r3, 0
/* 80D25FA4  40 82 00 10 */	bne lbl_80D25FB4
/* 80D25FA8  38 00 00 01 */	li r0, 1
/* 80D25FAC  98 1F 09 5C */	stb r0, 0x95c(r31)
/* 80D25FB0  48 00 01 68 */	b lbl_80D26118
lbl_80D25FB4:
/* 80D25FB4  80 03 00 00 */	lwz r0, 0(r3)
/* 80D25FB8  98 1F 09 5C */	stb r0, 0x95c(r31)
/* 80D25FBC  48 00 01 5C */	b lbl_80D26118
lbl_80D25FC0:
/* 80D25FC0  38 00 00 00 */	li r0, 0
/* 80D25FC4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D25FC8  98 03 00 04 */	stb r0, 4(r3)
/* 80D25FCC  48 00 01 4C */	b lbl_80D26118
lbl_80D25FD0:
/* 80D25FD0  38 00 00 00 */	li r0, 0
/* 80D25FD4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D25FD8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D25FDC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D25FE0  38 00 00 01 */	li r0, 1
/* 80D25FE4  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 80D25FE8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D25FEC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D25FF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D25FF4  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D25FF8  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D25FFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D26000  38 80 00 15 */	li r4, 0x15
/* 80D26004  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D26008  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D2600C  3C A5 00 02 */	addis r5, r5, 2
/* 80D26010  38 C0 00 80 */	li r6, 0x80
/* 80D26014  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D26018  4B 31 62 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2601C  7C 65 1B 78 */	mr r5, r3
/* 80D26020  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D26024  80 83 00 04 */	lwz r4, 4(r3)
/* 80D26028  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2602C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D26030  38 C0 00 00 */	li r6, 0
/* 80D26034  38 E0 00 02 */	li r7, 2
/* 80D26038  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D2603C  39 00 00 00 */	li r8, 0
/* 80D26040  39 20 FF FF */	li r9, -1
/* 80D26044  4B 2E 75 F8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D26048  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80D2604C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D26050  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D26054  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D26058  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2605C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D26060  38 00 00 00 */	li r0, 0
/* 80D26064  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D26068  98 03 00 04 */	stb r0, 4(r3)
/* 80D2606C  7F E3 FB 78 */	mr r3, r31
/* 80D26070  4B FF F3 8D */	bl setSrcEffect__14daObjVolcBom_cFv
/* 80D26074  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D26078  7C 03 07 74 */	extsb r3, r0
/* 80D2607C  4B 30 6F F0 */	b dComIfGp_getReverb__Fi
/* 80D26080  7C 67 1B 78 */	mr r7, r3
/* 80D26084  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024C@ha */
/* 80D26088  38 03 02 4C */	addi r0, r3, 0x024C /* 0x0008024C@l */
/* 80D2608C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D26090  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D26094  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D26098  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2609C  38 81 00 28 */	addi r4, r1, 0x28
/* 80D260A0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D260A4  38 C0 00 00 */	li r6, 0
/* 80D260A8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D260AC  FC 40 08 90 */	fmr f2, f1
/* 80D260B0  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80D260B4  FC 80 18 90 */	fmr f4, f3
/* 80D260B8  39 00 00 00 */	li r8, 0
/* 80D260BC  4B 58 58 C8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D260C0  48 00 00 58 */	b lbl_80D26118
lbl_80D260C4:
/* 80D260C4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D260C8  7C 03 07 74 */	extsb r3, r0
/* 80D260CC  4B 30 6F A0 */	b dComIfGp_getReverb__Fi
/* 80D260D0  7C 67 1B 78 */	mr r7, r3
/* 80D260D4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006009F@ha */
/* 80D260D8  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0006009F@l */
/* 80D260DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D260E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D260E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D260E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D260EC  38 81 00 24 */	addi r4, r1, 0x24
/* 80D260F0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D260F4  38 C0 00 00 */	li r6, 0
/* 80D260F8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D260FC  FC 40 08 90 */	fmr f2, f1
/* 80D26100  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80D26104  FC 80 18 90 */	fmr f4, f3
/* 80D26108  39 00 00 00 */	li r8, 0
/* 80D2610C  4B 58 58 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D26110  7F E3 FB 78 */	mr r3, r31
/* 80D26114  4B FF F4 15 */	bl setBindEffect__14daObjVolcBom_cFv
lbl_80D26118:
/* 80D26118  2C 1C 00 02 */	cmpwi r28, 2
/* 80D2611C  41 82 00 44 */	beq lbl_80D26160
/* 80D26120  40 80 00 14 */	bge lbl_80D26134
/* 80D26124  2C 1C 00 00 */	cmpwi r28, 0
/* 80D26128  41 82 00 18 */	beq lbl_80D26140
/* 80D2612C  40 80 00 74 */	bge lbl_80D261A0
/* 80D26130  48 00 03 0C */	b lbl_80D2643C
lbl_80D26134:
/* 80D26134  2C 1C 00 04 */	cmpwi r28, 4
/* 80D26138  40 80 03 04 */	bge lbl_80D2643C
/* 80D2613C  48 00 00 F4 */	b lbl_80D26230
lbl_80D26140:
/* 80D26140  38 7F 09 5C */	addi r3, r31, 0x95c
/* 80D26144  48 00 09 E5 */	bl func_80D26B28
/* 80D26148  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2614C  40 82 02 FC */	bne lbl_80D26448
/* 80D26150  7F A3 EB 78 */	mr r3, r29
/* 80D26154  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D26158  4B 32 20 24 */	b cutEnd__16dEvent_manager_cFi
/* 80D2615C  48 00 02 EC */	b lbl_80D26448
lbl_80D26160:
/* 80D26160  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D26164  38 80 00 01 */	li r4, 1
/* 80D26168  88 03 00 05 */	lbz r0, 5(r3)
/* 80D2616C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D26170  40 82 00 18 */	bne lbl_80D26188
/* 80D26174  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80D26178  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D2617C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D26180  41 82 00 08 */	beq lbl_80D26188
/* 80D26184  38 80 00 00 */	li r4, 0
lbl_80D26188:
/* 80D26188  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D2618C  41 82 02 BC */	beq lbl_80D26448
/* 80D26190  7F A3 EB 78 */	mr r3, r29
/* 80D26194  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D26198  4B 32 1F E4 */	b cutEnd__16dEvent_manager_cFi
/* 80D2619C  48 00 02 AC */	b lbl_80D26448
lbl_80D261A0:
/* 80D261A0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D261A4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D261A8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D261AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D261B0  40 82 00 58 */	bne lbl_80D26208
/* 80D261B4  7F E3 FB 78 */	mr r3, r31
/* 80D261B8  48 00 02 B1 */	bl calcObjPos__14daObjVolcBom_cFv
/* 80D261BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D261C0  7C 03 07 74 */	extsb r3, r0
/* 80D261C4  4B 30 6E A8 */	b dComIfGp_getReverb__Fi
/* 80D261C8  7C 67 1B 78 */	mr r7, r3
/* 80D261CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024D@ha */
/* 80D261D0  38 03 02 4D */	addi r0, r3, 0x024D /* 0x0008024D@l */
/* 80D261D4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D261D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D261DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D261E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D261E4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D261E8  38 BF 09 80 */	addi r5, r31, 0x980
/* 80D261EC  38 C0 00 00 */	li r6, 0
/* 80D261F0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D261F4  FC 40 08 90 */	fmr f2, f1
/* 80D261F8  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80D261FC  FC 80 18 90 */	fmr f4, f3
/* 80D26200  39 00 00 00 */	li r8, 0
/* 80D26204  4B 58 57 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D26208:
/* 80D26208  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D2620C  4B 2E 72 1C */	b play__14mDoExt_baseAnmFv
/* 80D26210  2C 03 00 00 */	cmpwi r3, 0
/* 80D26214  41 82 00 10 */	beq lbl_80D26224
/* 80D26218  7F A3 EB 78 */	mr r3, r29
/* 80D2621C  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D26220  4B 32 1F 5C */	b cutEnd__16dEvent_manager_cFi
lbl_80D26224:
/* 80D26224  7F E3 FB 78 */	mr r3, r31
/* 80D26228  4B FF F4 91 */	bl followSrcEffect__14daObjVolcBom_cFv
/* 80D2622C  48 00 02 1C */	b lbl_80D26448
lbl_80D26230:
/* 80D26230  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80D26234  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D26238  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2623C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80D26240  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D26244  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D26248  4B 62 02 68 */	b PSMTXCopy
/* 80D2624C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80D26250  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80D26254  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80D26258  4B 2E 6B 44 */	b transM__14mDoMtx_stack_cFfff
/* 80D2625C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D26260  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80D26264  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80D26268  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D2626C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80D26270  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D26274  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80D26278  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D2627C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D26280  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D26284  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D26288  7F 64 DB 78 */	mr r4, r27
/* 80D2628C  4B 62 02 24 */	b PSMTXCopy
/* 80D26290  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80D26294  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D26298  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80D2629C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80D262A0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80D262A4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D262A8  38 61 00 44 */	addi r3, r1, 0x44
/* 80D262AC  38 81 00 38 */	addi r4, r1, 0x38
/* 80D262B0  4B 54 A9 54 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D262B4  B0 61 00 32 */	sth r3, 0x32(r1)
/* 80D262B8  38 61 00 38 */	addi r3, r1, 0x38
/* 80D262BC  38 81 00 44 */	addi r4, r1, 0x44
/* 80D262C0  4B 54 A9 B4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D262C4  B0 61 00 30 */	sth r3, 0x30(r1)
/* 80D262C8  38 00 00 00 */	li r0, 0
/* 80D262CC  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80D262D0  38 61 00 44 */	addi r3, r1, 0x44
/* 80D262D4  38 81 00 38 */	addi r4, r1, 0x38
/* 80D262D8  4B 62 10 C4 */	b PSVECSquareDistance
/* 80D262DC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80D262E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D262E4  40 81 00 58 */	ble lbl_80D2633C
/* 80D262E8  FC 00 08 34 */	frsqrte f0, f1
/* 80D262EC  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80D262F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D262F4  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80D262F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D262FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D26300  FC 03 00 28 */	fsub f0, f3, f0
/* 80D26304  FC 02 00 32 */	fmul f0, f2, f0
/* 80D26308  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2630C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D26310  FC 01 00 32 */	fmul f0, f1, f0
/* 80D26314  FC 03 00 28 */	fsub f0, f3, f0
/* 80D26318  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2631C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D26320  FC 00 00 32 */	fmul f0, f0, f0
/* 80D26324  FC 01 00 32 */	fmul f0, f1, f0
/* 80D26328  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2632C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D26330  FF E1 00 32 */	fmul f31, f1, f0
/* 80D26334  FF E0 F8 18 */	frsp f31, f31
/* 80D26338  48 00 00 90 */	b lbl_80D263C8
lbl_80D2633C:
/* 80D2633C  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80D26340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D26344  40 80 00 10 */	bge lbl_80D26354
/* 80D26348  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D2634C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80D26350  48 00 00 78 */	b lbl_80D263C8
lbl_80D26354:
/* 80D26354  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D26358  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D2635C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D26360  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D26364  7C 03 00 00 */	cmpw r3, r0
/* 80D26368  41 82 00 14 */	beq lbl_80D2637C
/* 80D2636C  40 80 00 40 */	bge lbl_80D263AC
/* 80D26370  2C 03 00 00 */	cmpwi r3, 0
/* 80D26374  41 82 00 20 */	beq lbl_80D26394
/* 80D26378  48 00 00 34 */	b lbl_80D263AC
lbl_80D2637C:
/* 80D2637C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D26380  41 82 00 0C */	beq lbl_80D2638C
/* 80D26384  38 00 00 01 */	li r0, 1
/* 80D26388  48 00 00 28 */	b lbl_80D263B0
lbl_80D2638C:
/* 80D2638C  38 00 00 02 */	li r0, 2
/* 80D26390  48 00 00 20 */	b lbl_80D263B0
lbl_80D26394:
/* 80D26394  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D26398  41 82 00 0C */	beq lbl_80D263A4
/* 80D2639C  38 00 00 05 */	li r0, 5
/* 80D263A0  48 00 00 10 */	b lbl_80D263B0
lbl_80D263A4:
/* 80D263A4  38 00 00 03 */	li r0, 3
/* 80D263A8  48 00 00 08 */	b lbl_80D263B0
lbl_80D263AC:
/* 80D263AC  38 00 00 04 */	li r0, 4
lbl_80D263B0:
/* 80D263B0  2C 00 00 01 */	cmpwi r0, 1
/* 80D263B4  40 82 00 10 */	bne lbl_80D263C4
/* 80D263B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D263BC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80D263C0  48 00 00 08 */	b lbl_80D263C8
lbl_80D263C4:
/* 80D263C4  FF E0 08 90 */	fmr f31, f1
lbl_80D263C8:
/* 80D263C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D263CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D263D0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D263D4  38 80 00 00 */	li r4, 0
/* 80D263D8  90 81 00 08 */	stw r4, 8(r1)
/* 80D263DC  38 00 FF FF */	li r0, -1
/* 80D263E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D263E4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D263E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D263EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D263F0  38 80 00 00 */	li r4, 0
/* 80D263F4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B53@ha */
/* 80D263F8  38 A5 8B 53 */	addi r5, r5, 0x8B53 /* 0x00008B53@l */
/* 80D263FC  38 C1 00 44 */	addi r6, r1, 0x44
/* 80D26400  38 E0 00 00 */	li r7, 0
/* 80D26404  39 01 00 30 */	addi r8, r1, 0x30
/* 80D26408  39 20 00 00 */	li r9, 0
/* 80D2640C  39 40 00 FF */	li r10, 0xff
/* 80D26410  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D26414  4B 32 66 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D26418  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80D2641C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80D26420  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80D26424  7F E3 FB 78 */	mr r3, r31
/* 80D26428  4B FF F1 CD */	bl followBindEffect__14daObjVolcBom_cFv
/* 80D2642C  7F A3 EB 78 */	mr r3, r29
/* 80D26430  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D26434  4B 32 1D 48 */	b cutEnd__16dEvent_manager_cFi
/* 80D26438  48 00 00 10 */	b lbl_80D26448
lbl_80D2643C:
/* 80D2643C  7F A3 EB 78 */	mr r3, r29
/* 80D26440  80 9F 09 F4 */	lwz r4, 0x9f4(r31)
/* 80D26444  4B 32 1D 38 */	b cutEnd__16dEvent_manager_cFi
lbl_80D26448:
/* 80D26448  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D2644C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D26450  39 61 00 70 */	addi r11, r1, 0x70
/* 80D26454  4B 63 BD CC */	b _restgpr_27
/* 80D26458  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D2645C  7C 08 03 A6 */	mtlr r0
/* 80D26460  38 21 00 80 */	addi r1, r1, 0x80
/* 80D26464  4E 80 00 20 */	blr 
