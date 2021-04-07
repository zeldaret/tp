lbl_80ADE5F8:
/* 80ADE5F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ADE5FC  7C 08 02 A6 */	mflr r0
/* 80ADE600  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ADE604  39 61 00 60 */	addi r11, r1, 0x60
/* 80ADE608  4B 88 3B C5 */	bl _savegpr_25
/* 80ADE60C  7C 7A 1B 78 */	mr r26, r3
/* 80ADE610  7C 9B 23 78 */	mr r27, r4
/* 80ADE614  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha /* 0x80AE1FDC@ha */
/* 80ADE618  3B A3 1F DC */	addi r29, r3, m__17daNpcShad_Param_c@l /* 0x80AE1FDC@l */
/* 80ADE61C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADE620  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADE624  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ADE628  7F 83 E3 78 */	mr r3, r28
/* 80ADE62C  4B 56 99 31 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80ADE630  7C 7F 1B 78 */	mr r31, r3
/* 80ADE634  7F 83 E3 78 */	mr r3, r28
/* 80ADE638  7F 64 DB 78 */	mr r4, r27
/* 80ADE63C  4B 56 97 11 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ADE640  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE644  41 82 02 58 */	beq lbl_80ADE89C
/* 80ADE648  80 7F 00 00 */	lwz r3, 0(r31)
/* 80ADE64C  3C 83 CF D0 */	addis r4, r3, 0xcfd0
/* 80ADE650  38 84 CF CF */	addi r4, r4, -12337
/* 80ADE654  28 04 00 07 */	cmplwi r4, 7
/* 80ADE658  41 81 02 44 */	bgt lbl_80ADE89C
/* 80ADE65C  3C 60 80 AE */	lis r3, lit_6550@ha /* 0x80AE2B5C@ha */
/* 80ADE660  38 63 2B 5C */	addi r3, r3, lit_6550@l /* 0x80AE2B5C@l */
/* 80ADE664  54 84 10 3A */	slwi r4, r4, 2
/* 80ADE668  7C 03 20 2E */	lwzx r0, r3, r4
/* 80ADE66C  7C 09 03 A6 */	mtctr r0
/* 80ADE670  4E 80 04 20 */	bctr 
lbl_80ADE674:
/* 80ADE674  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ADE678  7F 44 D3 78 */	mr r4, r26
/* 80ADE67C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80ADE680  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80ADE684  38 C0 00 00 */	li r6, 0
/* 80ADE688  4B 56 42 8D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80ADE68C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80ADE690  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80ADE694  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADE698  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80ADE69C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200007C@ha */
/* 80ADE6A0  38 84 00 7C */	addi r4, r4, 0x007C /* 0x0200007C@l */
/* 80ADE6A4  4B 7D 14 F1 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80ADE6A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80ADE6AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80ADE6B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADE6B4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80ADE6B8  4B 7D 17 61 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80ADE6BC  7F 43 D3 78 */	mr r3, r26
/* 80ADE6C0  38 80 00 0C */	li r4, 0xc
/* 80ADE6C4  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80ADE6C8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE6CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE6D0  7D 89 03 A6 */	mtctr r12
/* 80ADE6D4  4E 80 04 21 */	bctrl 
/* 80ADE6D8  7F 43 D3 78 */	mr r3, r26
/* 80ADE6DC  38 80 00 00 */	li r4, 0
/* 80ADE6E0  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80ADE6E4  38 A0 00 00 */	li r5, 0
/* 80ADE6E8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE6EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE6F0  7D 89 03 A6 */	mtctr r12
/* 80ADE6F4  4E 80 04 21 */	bctrl 
/* 80ADE6F8  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADE6FC  2C 00 00 02 */	cmpwi r0, 2
/* 80ADE700  40 82 00 10 */	bne lbl_80ADE710
/* 80ADE704  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADE708  28 00 00 00 */	cmplwi r0, 0
/* 80ADE70C  41 82 01 90 */	beq lbl_80ADE89C
lbl_80ADE710:
/* 80ADE710  38 00 00 02 */	li r0, 2
/* 80ADE714  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADE718  38 00 00 00 */	li r0, 0
/* 80ADE71C  90 1A 0C A8 */	stw r0, 0xca8(r26)
/* 80ADE720  48 00 01 7C */	b lbl_80ADE89C
lbl_80ADE724:
/* 80ADE724  7F 83 E3 78 */	mr r3, r28
/* 80ADE728  7F 64 DB 78 */	mr r4, r27
/* 80ADE72C  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADE730  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADE734  38 A5 01 52 */	addi r5, r5, 0x152
/* 80ADE738  38 C0 00 01 */	li r6, 1
/* 80ADE73C  4B 56 99 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADE740  7C 79 1B 78 */	mr r25, r3
/* 80ADE744  7F 83 E3 78 */	mr r3, r28
/* 80ADE748  7F 64 DB 78 */	mr r4, r27
/* 80ADE74C  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADE750  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADE754  38 A5 01 56 */	addi r5, r5, 0x156
/* 80ADE758  38 C0 00 03 */	li r6, 3
/* 80ADE75C  4B 56 99 91 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADE760  7C 64 1B 78 */	mr r4, r3
/* 80ADE764  28 19 00 00 */	cmplwi r25, 0
/* 80ADE768  41 82 00 34 */	beq lbl_80ADE79C
/* 80ADE76C  C0 19 00 00 */	lfs f0, 0(r25)
/* 80ADE770  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80ADE774  C0 19 00 04 */	lfs f0, 4(r25)
/* 80ADE778  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80ADE77C  C0 19 00 08 */	lfs f0, 8(r25)
/* 80ADE780  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80ADE784  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80ADE788  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80ADE78C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80ADE790  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80ADE794  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80ADE798  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
lbl_80ADE79C:
/* 80ADE79C  28 04 00 00 */	cmplwi r4, 0
/* 80ADE7A0  41 82 00 14 */	beq lbl_80ADE7B4
/* 80ADE7A4  7F 43 D3 78 */	mr r3, r26
/* 80ADE7A8  80 04 00 00 */	lwz r0, 0(r4)
/* 80ADE7AC  7C 04 07 34 */	extsh r4, r0
/* 80ADE7B0  4B 67 5A A1 */	bl setAngle__8daNpcF_cFs
lbl_80ADE7B4:
/* 80ADE7B4  7F 43 D3 78 */	mr r3, r26
/* 80ADE7B8  38 80 00 0C */	li r4, 0xc
/* 80ADE7BC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE7C0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE7C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE7C8  7D 89 03 A6 */	mtctr r12
/* 80ADE7CC  4E 80 04 21 */	bctrl 
/* 80ADE7D0  7F 43 D3 78 */	mr r3, r26
/* 80ADE7D4  38 80 00 00 */	li r4, 0
/* 80ADE7D8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE7DC  38 A0 00 00 */	li r5, 0
/* 80ADE7E0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE7E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE7E8  7D 89 03 A6 */	mtctr r12
/* 80ADE7EC  4E 80 04 21 */	bctrl 
/* 80ADE7F0  38 00 00 00 */	li r0, 0
/* 80ADE7F4  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADE7F8  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADE7FC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADE800  48 00 00 9C */	b lbl_80ADE89C
lbl_80ADE804:
/* 80ADE804  38 00 00 00 */	li r0, 0
/* 80ADE808  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADE80C  7F 43 D3 78 */	mr r3, r26
/* 80ADE810  38 80 00 06 */	li r4, 6
/* 80ADE814  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE818  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE81C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE820  7D 89 03 A6 */	mtctr r12
/* 80ADE824  4E 80 04 21 */	bctrl 
/* 80ADE828  7F 43 D3 78 */	mr r3, r26
/* 80ADE82C  38 80 00 14 */	li r4, 0x14
/* 80ADE830  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE834  38 A0 00 00 */	li r5, 0
/* 80ADE838  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE83C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE840  7D 89 03 A6 */	mtctr r12
/* 80ADE844  4E 80 04 21 */	bctrl 
/* 80ADE848  C0 1D 04 B4 */	lfs f0, 0x4b4(r29)
/* 80ADE84C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADE850  48 00 00 4C */	b lbl_80ADE89C
lbl_80ADE854:
/* 80ADE854  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADE858  2C 00 00 00 */	cmpwi r0, 0
/* 80ADE85C  40 82 00 10 */	bne lbl_80ADE86C
/* 80ADE860  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADE864  28 00 00 00 */	cmplwi r0, 0
/* 80ADE868  41 82 00 10 */	beq lbl_80ADE878
lbl_80ADE86C:
/* 80ADE86C  38 00 00 00 */	li r0, 0
/* 80ADE870  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADE874  90 1A 0C A8 */	stw r0, 0xca8(r26)
lbl_80ADE878:
/* 80ADE878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADE87C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADE880  38 63 09 58 */	addi r3, r3, 0x958
/* 80ADE884  38 80 00 4F */	li r4, 0x4f
/* 80ADE888  4B 55 5F 89 */	bl onSwitch__12dSv_memBit_cFi
/* 80ADE88C  7F 43 D3 78 */	mr r3, r26
/* 80ADE890  A8 9A 0E 14 */	lha r4, 0xe14(r26)
/* 80ADE894  38 A0 00 00 */	li r5, 0
/* 80ADE898  4B 67 54 85 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80ADE89C:
/* 80ADE89C  A0 1E 4F A2 */	lhz r0, 0x4fa2(r30)
/* 80ADE8A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80ADE8A4  41 82 00 68 */	beq lbl_80ADE90C
/* 80ADE8A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80ADE8AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80ADE8B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADE8B4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80ADE8B8  38 80 00 1E */	li r4, 0x1e
/* 80ADE8BC  4B 7D 16 21 */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 80ADE8C0  4B 67 72 29 */	bl daNpcF_clearMessageTmpBit__Fv
/* 80ADE8C4  38 60 03 12 */	li r3, 0x312
/* 80ADE8C8  4B 67 6D AD */	bl daNpcF_onEvtBit__FUl
/* 80ADE8CC  38 00 00 07 */	li r0, 7
/* 80ADE8D0  B0 1A 09 E6 */	sth r0, 0x9e6(r26)
/* 80ADE8D4  4B 75 90 C1 */	bl onKillMessageFlag__12dMsgObject_cFv
/* 80ADE8D8  A0 1A 09 E6 */	lhz r0, 0x9e6(r26)
/* 80ADE8DC  54 00 10 3A */	slwi r0, r0, 2
/* 80ADE8E0  7F 43 D3 78 */	mr r3, r26
/* 80ADE8E4  3C 80 80 AE */	lis r4, l_evtArcs@ha /* 0x80AE2928@ha */
/* 80ADE8E8  38 84 29 28 */	addi r4, r4, l_evtArcs@l /* 0x80AE2928@l */
/* 80ADE8EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADE8F0  3C A0 80 AE */	lis r5, l_evtNames@ha /* 0x80AE28F0@ha */
/* 80ADE8F4  38 A5 28 F0 */	addi r5, r5, l_evtNames@l /* 0x80AE28F0@l */
/* 80ADE8F8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADE8FC  38 C0 00 01 */	li r6, 1
/* 80ADE900  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADE904  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADE908  4B 67 50 4D */	bl changeEvent__8daNpcF_cFPcPcUsUs
lbl_80ADE90C:
/* 80ADE90C  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80ADE910  7F 43 D3 78 */	mr r3, r26
/* 80ADE914  38 81 00 10 */	addi r4, r1, 0x10
/* 80ADE918  38 A1 00 0C */	addi r5, r1, 0xc
/* 80ADE91C  7F 46 D3 78 */	mr r6, r26
/* 80ADE920  38 E0 00 00 */	li r7, 0
/* 80ADE924  4B 67 4D F5 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADE928  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE92C  41 82 00 44 */	beq lbl_80ADE970
/* 80ADE930  7F 43 D3 78 */	mr r3, r26
/* 80ADE934  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ADE938  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE93C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE940  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE944  7D 89 03 A6 */	mtctr r12
/* 80ADE948  4E 80 04 21 */	bctrl 
/* 80ADE94C  7F 43 D3 78 */	mr r3, r26
/* 80ADE950  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADE954  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE958  38 A0 00 00 */	li r5, 0
/* 80ADE95C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE960  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE964  7D 89 03 A6 */	mtctr r12
/* 80ADE968  4E 80 04 21 */	bctrl 
/* 80ADE96C  48 00 00 E0 */	b lbl_80ADEA4C
lbl_80ADE970:
/* 80ADE970  2C 19 00 00 */	cmpwi r25, 0
/* 80ADE974  41 82 00 D8 */	beq lbl_80ADEA4C
/* 80ADE978  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80ADE97C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADE980  40 82 00 CC */	bne lbl_80ADEA4C
/* 80ADE984  A8 1A 09 DE */	lha r0, 0x9de(r26)
/* 80ADE988  2C 00 00 03 */	cmpwi r0, 3
/* 80ADE98C  41 82 00 64 */	beq lbl_80ADE9F0
/* 80ADE990  40 80 00 14 */	bge lbl_80ADE9A4
/* 80ADE994  2C 00 00 01 */	cmpwi r0, 1
/* 80ADE998  41 82 00 18 */	beq lbl_80ADE9B0
/* 80ADE99C  40 80 00 34 */	bge lbl_80ADE9D0
/* 80ADE9A0  48 00 00 90 */	b lbl_80ADEA30
lbl_80ADE9A4:
/* 80ADE9A4  2C 00 00 05 */	cmpwi r0, 5
/* 80ADE9A8  40 80 00 88 */	bge lbl_80ADEA30
/* 80ADE9AC  48 00 00 64 */	b lbl_80ADEA10
lbl_80ADE9B0:
/* 80ADE9B0  7F 43 D3 78 */	mr r3, r26
/* 80ADE9B4  38 80 00 08 */	li r4, 8
/* 80ADE9B8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE9BC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE9C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE9C4  7D 89 03 A6 */	mtctr r12
/* 80ADE9C8  4E 80 04 21 */	bctrl 
/* 80ADE9CC  48 00 00 80 */	b lbl_80ADEA4C
lbl_80ADE9D0:
/* 80ADE9D0  7F 43 D3 78 */	mr r3, r26
/* 80ADE9D4  38 80 00 09 */	li r4, 9
/* 80ADE9D8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE9DC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADE9E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE9E4  7D 89 03 A6 */	mtctr r12
/* 80ADE9E8  4E 80 04 21 */	bctrl 
/* 80ADE9EC  48 00 00 60 */	b lbl_80ADEA4C
lbl_80ADE9F0:
/* 80ADE9F0  7F 43 D3 78 */	mr r3, r26
/* 80ADE9F4  38 80 00 0A */	li r4, 0xa
/* 80ADE9F8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE9FC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADEA00  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADEA04  7D 89 03 A6 */	mtctr r12
/* 80ADEA08  4E 80 04 21 */	bctrl 
/* 80ADEA0C  48 00 00 40 */	b lbl_80ADEA4C
lbl_80ADEA10:
/* 80ADEA10  7F 43 D3 78 */	mr r3, r26
/* 80ADEA14  38 80 00 07 */	li r4, 7
/* 80ADEA18  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADEA1C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADEA20  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADEA24  7D 89 03 A6 */	mtctr r12
/* 80ADEA28  4E 80 04 21 */	bctrl 
/* 80ADEA2C  48 00 00 20 */	b lbl_80ADEA4C
lbl_80ADEA30:
/* 80ADEA30  7F 43 D3 78 */	mr r3, r26
/* 80ADEA34  38 80 00 0C */	li r4, 0xc
/* 80ADEA38  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADEA3C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADEA40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADEA44  7D 89 03 A6 */	mtctr r12
/* 80ADEA48  4E 80 04 21 */	bctrl 
lbl_80ADEA4C:
/* 80ADEA4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80ADEA50  3C 83 CF D0 */	addis r4, r3, 0xcfd0
/* 80ADEA54  38 84 CF CF */	addi r4, r4, -12337
/* 80ADEA58  28 04 00 07 */	cmplwi r4, 7
/* 80ADEA5C  41 81 02 F0 */	bgt lbl_80ADED4C
/* 80ADEA60  3C 60 80 AE */	lis r3, lit_6551@ha /* 0x80AE2B3C@ha */
/* 80ADEA64  38 63 2B 3C */	addi r3, r3, lit_6551@l /* 0x80AE2B3C@l */
/* 80ADEA68  54 84 10 3A */	slwi r4, r4, 2
/* 80ADEA6C  7C 03 20 2E */	lwzx r0, r3, r4
/* 80ADEA70  7C 09 03 A6 */	mtctr r0
/* 80ADEA74  4E 80 04 20 */	bctr 
lbl_80ADEA78:
/* 80ADEA78  38 60 00 01 */	li r3, 1
/* 80ADEA7C  48 00 02 D4 */	b lbl_80ADED50
lbl_80ADEA80:
/* 80ADEA80  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADEA84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80ADEA88  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80ADEA8C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80ADEA90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80ADEA94  38 7A 08 6C */	addi r3, r26, 0x86c
/* 80ADEA98  4B 52 E2 CD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80ADEA9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ADEAA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ADEAA4  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80ADEAA8  4B 52 D9 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 80ADEAAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80ADEAB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80ADEAB4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80ADEAB8  7C 85 23 78 */	mr r5, r4
/* 80ADEABC  4B 86 82 B1 */	bl PSMTXMultVec
/* 80ADEAC0  38 00 00 05 */	li r0, 5
/* 80ADEAC4  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADEAC8  38 00 00 00 */	li r0, 0
/* 80ADEACC  90 1A 0C A8 */	stw r0, 0xca8(r26)
/* 80ADEAD0  34 01 00 2C */	addic. r0, r1, 0x2c
/* 80ADEAD4  41 82 00 1C */	beq lbl_80ADEAF0
/* 80ADEAD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80ADEADC  D0 1A 08 78 */	stfs f0, 0x878(r26)
/* 80ADEAE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80ADEAE4  D0 1A 08 7C */	stfs f0, 0x87c(r26)
/* 80ADEAE8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80ADEAEC  D0 1A 08 80 */	stfs f0, 0x880(r26)
lbl_80ADEAF0:
/* 80ADEAF0  7F 83 E3 78 */	mr r3, r28
/* 80ADEAF4  7F 64 DB 78 */	mr r4, r27
/* 80ADEAF8  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADEAFC  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADEB00  38 A5 01 52 */	addi r5, r5, 0x152
/* 80ADEB04  38 C0 00 01 */	li r6, 1
/* 80ADEB08  4B 56 95 E5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADEB0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ADEB10  41 82 02 3C */	beq lbl_80ADED4C
/* 80ADEB14  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80ADEB18  7F C4 F3 78 */	mr r4, r30
/* 80ADEB1C  4B 79 20 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADEB20  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80ADEB24  2C 00 00 00 */	cmpwi r0, 0
/* 80ADEB28  40 82 00 4C */	bne lbl_80ADEB74
/* 80ADEB2C  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80ADEB30  38 00 00 00 */	li r0, 0
/* 80ADEB34  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80ADEB38  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80ADEB3C  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80ADEB40  7C 03 00 00 */	cmpw r3, r0
/* 80ADEB44  40 82 00 10 */	bne lbl_80ADEB54
/* 80ADEB48  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADEB4C  38 03 00 01 */	addi r0, r3, 1
/* 80ADEB50  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80ADEB54:
/* 80ADEB54  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80ADEB58  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80ADEB5C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEB60  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADEB64  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADEB68  38 03 00 01 */	addi r0, r3, 1
/* 80ADEB6C  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADEB70  48 00 00 60 */	b lbl_80ADEBD0
lbl_80ADEB74:
/* 80ADEB74  2C 00 00 01 */	cmpwi r0, 1
/* 80ADEB78  40 82 00 58 */	bne lbl_80ADEBD0
/* 80ADEB7C  7F 43 D3 78 */	mr r3, r26
/* 80ADEB80  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80ADEB84  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADEB88  38 A0 00 00 */	li r5, 0
/* 80ADEB8C  4B 67 53 69 */	bl turn__8daNpcF_cFsfi
/* 80ADEB90  2C 03 00 00 */	cmpwi r3, 0
/* 80ADEB94  41 82 00 2C */	beq lbl_80ADEBC0
/* 80ADEB98  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEB9C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADEBA0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEBA4  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80ADEBA8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEBAC  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80ADEBB0  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADEBB4  38 03 00 01 */	addi r0, r3, 1
/* 80ADEBB8  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADEBBC  48 00 00 14 */	b lbl_80ADEBD0
lbl_80ADEBC0:
/* 80ADEBC0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEBC4  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADEBC8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADEBCC  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80ADEBD0:
/* 80ADEBD0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80ADEBD4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80ADEBD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ADEBDC  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 80ADEBE0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80ADEBE4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80ADEBE8  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80ADEBEC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80ADEBF0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80ADEBF4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80ADEBF8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80ADEBFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80ADEC00  38 81 00 20 */	addi r4, r1, 0x20
/* 80ADEC04  4B 86 87 99 */	bl PSVECSquareDistance
/* 80ADEC08  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADEC0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADEC10  40 81 00 58 */	ble lbl_80ADEC68
/* 80ADEC14  FC 00 08 34 */	frsqrte f0, f1
/* 80ADEC18  C8 9D 04 78 */	lfd f4, 0x478(r29)
/* 80ADEC1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADEC20  C8 7D 04 80 */	lfd f3, 0x480(r29)
/* 80ADEC24  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADEC28  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADEC2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADEC30  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADEC34  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADEC38  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADEC3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADEC40  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADEC44  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADEC48  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADEC4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADEC50  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADEC54  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADEC58  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADEC5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80ADEC60  FC 20 08 18 */	frsp f1, f1
/* 80ADEC64  48 00 00 88 */	b lbl_80ADECEC
lbl_80ADEC68:
/* 80ADEC68  C8 1D 04 88 */	lfd f0, 0x488(r29)
/* 80ADEC6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADEC70  40 80 00 10 */	bge lbl_80ADEC80
/* 80ADEC74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ADEC78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80ADEC7C  48 00 00 70 */	b lbl_80ADECEC
lbl_80ADEC80:
/* 80ADEC80  D0 21 00 08 */	stfs f1, 8(r1)
/* 80ADEC84  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADEC88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ADEC8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ADEC90  7C 03 00 00 */	cmpw r3, r0
/* 80ADEC94  41 82 00 14 */	beq lbl_80ADECA8
/* 80ADEC98  40 80 00 40 */	bge lbl_80ADECD8
/* 80ADEC9C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADECA0  41 82 00 20 */	beq lbl_80ADECC0
/* 80ADECA4  48 00 00 34 */	b lbl_80ADECD8
lbl_80ADECA8:
/* 80ADECA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ADECAC  41 82 00 0C */	beq lbl_80ADECB8
/* 80ADECB0  38 00 00 01 */	li r0, 1
/* 80ADECB4  48 00 00 28 */	b lbl_80ADECDC
lbl_80ADECB8:
/* 80ADECB8  38 00 00 02 */	li r0, 2
/* 80ADECBC  48 00 00 20 */	b lbl_80ADECDC
lbl_80ADECC0:
/* 80ADECC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ADECC4  41 82 00 0C */	beq lbl_80ADECD0
/* 80ADECC8  38 00 00 05 */	li r0, 5
/* 80ADECCC  48 00 00 10 */	b lbl_80ADECDC
lbl_80ADECD0:
/* 80ADECD0  38 00 00 03 */	li r0, 3
/* 80ADECD4  48 00 00 08 */	b lbl_80ADECDC
lbl_80ADECD8:
/* 80ADECD8  38 00 00 04 */	li r0, 4
lbl_80ADECDC:
/* 80ADECDC  2C 00 00 01 */	cmpwi r0, 1
/* 80ADECE0  40 82 00 0C */	bne lbl_80ADECEC
/* 80ADECE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80ADECE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80ADECEC:
/* 80ADECEC  C0 1D 04 48 */	lfs f0, 0x448(r29)
/* 80ADECF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADECF4  40 80 00 58 */	bge lbl_80ADED4C
/* 80ADECF8  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADECFC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADED00  7F 43 D3 78 */	mr r3, r26
/* 80ADED04  38 80 00 00 */	li r4, 0
/* 80ADED08  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADED0C  38 A0 00 00 */	li r5, 0
/* 80ADED10  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADED14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADED18  7D 89 03 A6 */	mtctr r12
/* 80ADED1C  4E 80 04 21 */	bctrl 
/* 80ADED20  38 60 00 01 */	li r3, 1
/* 80ADED24  48 00 00 2C */	b lbl_80ADED50
lbl_80ADED28:
/* 80ADED28  7F 43 D3 78 */	mr r3, r26
/* 80ADED2C  38 80 00 00 */	li r4, 0
/* 80ADED30  38 A0 00 01 */	li r5, 1
/* 80ADED34  38 C0 00 00 */	li r6, 0
/* 80ADED38  4B 67 50 4D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADED3C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADED40  41 82 00 0C */	beq lbl_80ADED4C
/* 80ADED44  38 60 00 01 */	li r3, 1
/* 80ADED48  48 00 00 08 */	b lbl_80ADED50
lbl_80ADED4C:
/* 80ADED4C  38 60 00 00 */	li r3, 0
lbl_80ADED50:
/* 80ADED50  39 61 00 60 */	addi r11, r1, 0x60
/* 80ADED54  4B 88 34 C5 */	bl _restgpr_25
/* 80ADED58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ADED5C  7C 08 03 A6 */	mtlr r0
/* 80ADED60  38 21 00 60 */	addi r1, r1, 0x60
/* 80ADED64  4E 80 00 20 */	blr 
