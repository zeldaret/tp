lbl_8045F568:
/* 8045F568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045F56C  7C 08 02 A6 */	mflr r0
/* 8045F570  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045F574  39 61 00 30 */	addi r11, r1, 0x30
/* 8045F578  4B F0 2C 59 */	bl _savegpr_26
/* 8045F57C  7C 7A 1B 78 */	mr r26, r3
/* 8045F580  3C 80 80 46 */	lis r4, lit_3876@ha /* 0x80460668@ha */
/* 8045F584  3B C4 06 68 */	addi r30, r4, lit_3876@l /* 0x80460668@l */
/* 8045F588  3B 60 00 00 */	li r27, 0
/* 8045F58C  4B FF FF 95 */	bl getDemoAction__10daKnob20_cFv
/* 8045F590  7C 7C 1B 78 */	mr r28, r3
/* 8045F594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045F598  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045F59C  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 8045F5A0  7F A3 EB 78 */	mr r3, r29
/* 8045F5A4  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F5A8  4B BE 87 A5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8045F5AC  2C 03 00 00 */	cmpwi r3, 0
/* 8045F5B0  41 82 01 64 */	beq lbl_8045F714
/* 8045F5B4  28 1C 00 0F */	cmplwi r28, 0xf
/* 8045F5B8  41 81 01 5C */	bgt lbl_8045F714
/* 8045F5BC  3C 60 80 46 */	lis r3, lit_4274@ha /* 0x80460928@ha */
/* 8045F5C0  38 63 09 28 */	addi r3, r3, lit_4274@l /* 0x80460928@l */
/* 8045F5C4  57 80 10 3A */	slwi r0, r28, 2
/* 8045F5C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8045F5CC  7C 09 03 A6 */	mtctr r0
/* 8045F5D0  4E 80 04 20 */	bctr 
lbl_8045F5D4:
/* 8045F5D4  7F 43 D3 78 */	mr r3, r26
/* 8045F5D8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8045F5DC  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8045F5E0  48 00 02 C5 */	bl setStart__10daKnob20_cFff
/* 8045F5E4  48 00 01 30 */	b lbl_8045F714
lbl_8045F5E8:
/* 8045F5E8  7F 43 D3 78 */	mr r3, r26
/* 8045F5EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8045F5F0  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8045F5F4  48 00 02 B1 */	bl setStart__10daKnob20_cFff
/* 8045F5F8  7F 43 D3 78 */	mr r3, r26
/* 8045F5FC  4B FF FE 2D */	bl releaseBG__10daKnob20_cFv
/* 8045F600  48 00 01 14 */	b lbl_8045F714
lbl_8045F604:
/* 8045F604  7F 43 D3 78 */	mr r3, r26
/* 8045F608  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8045F60C  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8045F610  48 00 02 95 */	bl setStart__10daKnob20_cFff
/* 8045F614  7F 43 D3 78 */	mr r3, r26
/* 8045F618  4B FF FE 11 */	bl releaseBG__10daKnob20_cFv
/* 8045F61C  48 00 00 F8 */	b lbl_8045F714
lbl_8045F620:
/* 8045F620  7F 43 D3 78 */	mr r3, r26
/* 8045F624  38 80 00 00 */	li r4, 0
/* 8045F628  48 00 04 71 */	bl openInit__10daKnob20_cFi
/* 8045F62C  48 00 00 E8 */	b lbl_8045F714
lbl_8045F630:
/* 8045F630  7F 43 D3 78 */	mr r3, r26
/* 8045F634  38 80 00 01 */	li r4, 1
/* 8045F638  48 00 04 61 */	bl openInit__10daKnob20_cFi
/* 8045F63C  48 00 00 D8 */	b lbl_8045F714
lbl_8045F640:
/* 8045F640  7F 43 D3 78 */	mr r3, r26
/* 8045F644  38 80 00 02 */	li r4, 2
/* 8045F648  48 00 04 51 */	bl openInit__10daKnob20_cFi
/* 8045F64C  48 00 00 C8 */	b lbl_8045F714
lbl_8045F650:
/* 8045F650  7F 43 D3 78 */	mr r3, r26
/* 8045F654  38 80 00 03 */	li r4, 3
/* 8045F658  48 00 04 41 */	bl openInit__10daKnob20_cFi
/* 8045F65C  48 00 00 B8 */	b lbl_8045F714
lbl_8045F660:
/* 8045F660  7F 43 D3 78 */	mr r3, r26
/* 8045F664  48 00 02 E9 */	bl setAngle__10daKnob20_cFv
/* 8045F668  48 00 00 AC */	b lbl_8045F714
lbl_8045F66C:
/* 8045F66C  38 00 00 0A */	li r0, 0xa
/* 8045F670  B0 1A 06 10 */	sth r0, 0x610(r26)
/* 8045F674  48 00 00 A0 */	b lbl_8045F714
lbl_8045F678:
/* 8045F678  7F 43 D3 78 */	mr r3, r26
/* 8045F67C  4B FF F1 F5 */	bl getMsgNo__12knob_param_cFP10fopAc_ac_c
/* 8045F680  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8045F684  3C 05 00 00 */	addis r0, r5, 0
/* 8045F688  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045F68C  41 82 00 88 */	beq lbl_8045F714
/* 8045F690  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8045F694  7F 44 D3 78 */	mr r4, r26
/* 8045F698  38 C0 00 00 */	li r6, 0
/* 8045F69C  38 E0 00 00 */	li r7, 0
/* 8045F6A0  4B DE A8 F1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8045F6A4  48 00 00 70 */	b lbl_8045F714
lbl_8045F6A8:
/* 8045F6A8  38 00 00 00 */	li r0, 0
/* 8045F6AC  B0 1A 06 12 */	sth r0, 0x612(r26)
/* 8045F6B0  38 00 03 E8 */	li r0, 0x3e8
/* 8045F6B4  B0 1A 06 14 */	sth r0, 0x614(r26)
/* 8045F6B8  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8045F6BC  7C 03 07 74 */	extsb r3, r0
/* 8045F6C0  4B BC D9 AD */	bl dComIfGp_getReverb__Fi
/* 8045F6C4  7C 67 1B 78 */	mr r7, r3
/* 8045F6C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080238@ha */
/* 8045F6CC  38 03 02 38 */	addi r0, r3, 0x0238 /* 0x00080238@l */
/* 8045F6D0  90 01 00 08 */	stw r0, 8(r1)
/* 8045F6D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8045F6D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8045F6DC  80 63 00 00 */	lwz r3, 0(r3)
/* 8045F6E0  38 81 00 08 */	addi r4, r1, 8
/* 8045F6E4  38 BA 05 38 */	addi r5, r26, 0x538
/* 8045F6E8  38 C0 00 00 */	li r6, 0
/* 8045F6EC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8045F6F0  FC 40 08 90 */	fmr f2, f1
/* 8045F6F4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8045F6F8  FC 80 18 90 */	fmr f4, f3
/* 8045F6FC  39 00 00 00 */	li r8, 0
/* 8045F700  4B E4 C2 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8045F704  48 00 00 10 */	b lbl_8045F714
lbl_8045F708:
/* 8045F708  38 00 00 00 */	li r0, 0
/* 8045F70C  B0 1A 06 12 */	sth r0, 0x612(r26)
/* 8045F710  B0 1A 06 14 */	sth r0, 0x614(r26)
lbl_8045F714:
/* 8045F714  38 1C FF FD */	addi r0, r28, -3
/* 8045F718  28 00 00 0C */	cmplwi r0, 0xc
/* 8045F71C  41 81 01 60 */	bgt lbl_8045F87C
/* 8045F720  3C 60 80 46 */	lis r3, lit_4275@ha /* 0x804608F4@ha */
/* 8045F724  38 63 08 F4 */	addi r3, r3, lit_4275@l /* 0x804608F4@l */
/* 8045F728  54 00 10 3A */	slwi r0, r0, 2
/* 8045F72C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8045F730  7C 09 03 A6 */	mtctr r0
/* 8045F734  4E 80 04 20 */	bctr 
lbl_8045F738:
/* 8045F738  A0 1A 06 0C */	lhz r0, 0x60c(r26)
/* 8045F73C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045F740  41 82 00 34 */	beq lbl_8045F774
/* 8045F744  7F 43 D3 78 */	mr r3, r26
/* 8045F748  7F 84 E3 78 */	mr r4, r28
/* 8045F74C  48 00 04 AD */	bl openProc__10daKnob20_cFi
/* 8045F750  2C 03 00 00 */	cmpwi r3, 0
/* 8045F754  41 82 01 34 */	beq lbl_8045F888
/* 8045F758  7F 43 D3 78 */	mr r3, r26
/* 8045F75C  38 80 00 00 */	li r4, 0
/* 8045F760  48 00 05 45 */	bl openEnd__10daKnob20_cFi
/* 8045F764  7F A3 EB 78 */	mr r3, r29
/* 8045F768  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F76C  4B BE 8A 11 */	bl cutEnd__16dEvent_manager_cFi
/* 8045F770  48 00 01 18 */	b lbl_8045F888
lbl_8045F774:
/* 8045F774  7F A3 EB 78 */	mr r3, r29
/* 8045F778  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F77C  4B BE 8A 01 */	bl cutEnd__16dEvent_manager_cFi
/* 8045F780  48 00 01 08 */	b lbl_8045F888
lbl_8045F784:
/* 8045F784  7F 43 D3 78 */	mr r3, r26
/* 8045F788  48 00 01 E1 */	bl adjustmentProc__10daKnob20_cFv
/* 8045F78C  2C 03 00 00 */	cmpwi r3, 0
/* 8045F790  41 82 00 F8 */	beq lbl_8045F888
/* 8045F794  7F A3 EB 78 */	mr r3, r29
/* 8045F798  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F79C  4B BE 89 E1 */	bl cutEnd__16dEvent_manager_cFi
/* 8045F7A0  48 00 00 E8 */	b lbl_8045F888
lbl_8045F7A4:
/* 8045F7A4  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 8045F7A8  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8045F7AC  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 8045F7B0  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8045F7B4  7F 44 D3 78 */	mr r4, r26
/* 8045F7B8  38 A0 00 00 */	li r5, 0
/* 8045F7BC  38 C0 00 00 */	li r6, 0
/* 8045F7C0  4B DE AB 19 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8045F7C4  2C 03 00 00 */	cmpwi r3, 0
/* 8045F7C8  41 82 00 C0 */	beq lbl_8045F888
/* 8045F7CC  7F 43 D3 78 */	mr r3, r26
/* 8045F7D0  4B FF F0 A1 */	bl getMsgNo__12knob_param_cFP10fopAc_ac_c
/* 8045F7D4  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8045F7D8  3C 05 00 00 */	addis r0, r5, 0
/* 8045F7DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8045F7E0  41 82 00 18 */	beq lbl_8045F7F8
/* 8045F7E4  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8045F7E8  7F 44 D3 78 */	mr r4, r26
/* 8045F7EC  38 C0 00 00 */	li r6, 0
/* 8045F7F0  38 E0 00 00 */	li r7, 0
/* 8045F7F4  4B DE A7 9D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8045F7F8:
/* 8045F7F8  7F A3 EB 78 */	mr r3, r29
/* 8045F7FC  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F800  4B BE 89 7D */	bl cutEnd__16dEvent_manager_cFi
/* 8045F804  48 00 00 84 */	b lbl_8045F888
lbl_8045F808:
/* 8045F808  7F A3 EB 78 */	mr r3, r29
/* 8045F80C  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F810  4B BE 89 6D */	bl cutEnd__16dEvent_manager_cFi
/* 8045F814  3B 60 00 01 */	li r27, 1
/* 8045F818  48 00 00 70 */	b lbl_8045F888
lbl_8045F81C:
/* 8045F81C  7F A3 EB 78 */	mr r3, r29
/* 8045F820  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F824  4B BE 89 59 */	bl cutEnd__16dEvent_manager_cFi
/* 8045F828  48 00 00 60 */	b lbl_8045F888
lbl_8045F82C:
/* 8045F82C  38 7A 06 12 */	addi r3, r26, 0x612
/* 8045F830  38 80 D8 00 */	li r4, -10240
/* 8045F834  38 A0 00 14 */	li r5, 0x14
/* 8045F838  38 C0 01 F4 */	li r6, 0x1f4
/* 8045F83C  38 E0 00 0A */	li r7, 0xa
/* 8045F840  4B E1 0D 01 */	bl cLib_addCalcAngleS__FPsssss
/* 8045F844  7C 60 07 35 */	extsh. r0, r3
/* 8045F848  40 82 00 10 */	bne lbl_8045F858
/* 8045F84C  7F A3 EB 78 */	mr r3, r29
/* 8045F850  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F854  4B BE 89 29 */	bl cutEnd__16dEvent_manager_cFi
lbl_8045F858:
/* 8045F858  7F 43 D3 78 */	mr r3, r26
/* 8045F85C  4B FF F3 45 */	bl calcMtx__10daKnob20_cFv
/* 8045F860  48 00 00 28 */	b lbl_8045F888
lbl_8045F864:
/* 8045F864  7F A3 EB 78 */	mr r3, r29
/* 8045F868  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F86C  4B BE 89 11 */	bl cutEnd__16dEvent_manager_cFi
/* 8045F870  7F 43 D3 78 */	mr r3, r26
/* 8045F874  4B FF F3 2D */	bl calcMtx__10daKnob20_cFv
/* 8045F878  48 00 00 10 */	b lbl_8045F888
lbl_8045F87C:
/* 8045F87C  7F A3 EB 78 */	mr r3, r29
/* 8045F880  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 8045F884  4B BE 88 F9 */	bl cutEnd__16dEvent_manager_cFi
lbl_8045F888:
/* 8045F888  7F 63 DB 78 */	mr r3, r27
/* 8045F88C  39 61 00 30 */	addi r11, r1, 0x30
/* 8045F890  4B F0 29 8D */	bl _restgpr_26
/* 8045F894  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045F898  7C 08 03 A6 */	mtlr r0
/* 8045F89C  38 21 00 30 */	addi r1, r1, 0x30
/* 8045F8A0  4E 80 00 20 */	blr 
