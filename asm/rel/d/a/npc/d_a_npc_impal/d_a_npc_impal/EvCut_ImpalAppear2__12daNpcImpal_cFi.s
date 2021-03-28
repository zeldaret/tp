lbl_80A0A680:
/* 80A0A680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0A684  7C 08 02 A6 */	mflr r0
/* 80A0A688  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0A68C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0A690  4B 95 7B 48 */	b _savegpr_28
/* 80A0A694  7C 7E 1B 78 */	mr r30, r3
/* 80A0A698  7C 9C 23 78 */	mr r28, r4
/* 80A0A69C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0A6A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0A6A4  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80A0A6A8  7F A3 EB 78 */	mr r3, r29
/* 80A0A6AC  4B 63 D8 B0 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80A0A6B0  7C 7F 1B 78 */	mr r31, r3
/* 80A0A6B4  7F A3 EB 78 */	mr r3, r29
/* 80A0A6B8  7F 84 E3 78 */	mr r4, r28
/* 80A0A6BC  4B 63 D6 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A0A6C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A6C4  41 82 00 B4 */	beq lbl_80A0A778
/* 80A0A6C8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A0A6CC  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80A0A6D0  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80A0A6D4  7C 04 00 00 */	cmpw r4, r0
/* 80A0A6D8  41 82 00 50 */	beq lbl_80A0A728
/* 80A0A6DC  40 80 00 14 */	bge lbl_80A0A6F0
/* 80A0A6E0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A0A6E4  7C 04 00 00 */	cmpw r4, r0
/* 80A0A6E8  40 80 00 18 */	bge lbl_80A0A700
/* 80A0A6EC  48 00 00 8C */	b lbl_80A0A778
lbl_80A0A6F0:
/* 80A0A6F0  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A0A6F4  7C 04 00 00 */	cmpw r4, r0
/* 80A0A6F8  40 80 00 80 */	bge lbl_80A0A778
/* 80A0A6FC  48 00 00 48 */	b lbl_80A0A744
lbl_80A0A700:
/* 80A0A700  7F C3 F3 78 */	mr r3, r30
/* 80A0A704  A8 9E 0D E0 */	lha r4, 0xde0(r30)
/* 80A0A708  38 A0 00 00 */	li r5, 0
/* 80A0A70C  4B 74 96 10 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A0A710  A8 1E 0D E4 */	lha r0, 0xde4(r30)
/* 80A0A714  2C 00 00 02 */	cmpwi r0, 2
/* 80A0A718  41 82 00 60 */	beq lbl_80A0A778
/* 80A0A71C  38 00 00 02 */	li r0, 2
/* 80A0A720  B0 1E 0D E4 */	sth r0, 0xde4(r30)
/* 80A0A724  48 00 00 54 */	b lbl_80A0A778
lbl_80A0A728:
/* 80A0A728  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A0A72C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A0A730  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0A734  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A0A738  38 80 00 64 */	li r4, 0x64
/* 80A0A73C  4B 8A 57 A0 */	b bgmStreamStop__8Z2SeqMgrFUl
/* 80A0A740  48 00 00 38 */	b lbl_80A0A778
lbl_80A0A744:
/* 80A0A744  3C 60 80 A1 */	lis r3, l_resetPos@ha
/* 80A0A748  C4 03 C6 D8 */	lfsu f0, l_resetPos@l(r3)
/* 80A0A74C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A0A750  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A0A754  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A0A758  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A0A75C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A0A760  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A0A764  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A0A768  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A0A76C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A0A770  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A0A774  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
lbl_80A0A778:
/* 80A0A778  83 BE 09 50 */	lwz r29, 0x950(r30)
/* 80A0A77C  7F C3 F3 78 */	mr r3, r30
/* 80A0A780  38 81 00 0C */	addi r4, r1, 0xc
/* 80A0A784  38 A1 00 08 */	addi r5, r1, 8
/* 80A0A788  7F C6 F3 78 */	mr r6, r30
/* 80A0A78C  38 E0 00 00 */	li r7, 0
/* 80A0A790  4B 74 8F 88 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A0A794  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A798  41 82 00 4C */	beq lbl_80A0A7E4
/* 80A0A79C  7F C3 F3 78 */	mr r3, r30
/* 80A0A7A0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A0A7A4  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A7A8  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A7AC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A7B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A7B4  7D 89 03 A6 */	mtctr r12
/* 80A0A7B8  4E 80 04 21 */	bctrl 
/* 80A0A7BC  7F C3 F3 78 */	mr r3, r30
/* 80A0A7C0  80 81 00 08 */	lwz r4, 8(r1)
/* 80A0A7C4  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A7C8  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A7CC  38 A0 00 00 */	li r5, 0
/* 80A0A7D0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A7D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0A7D8  7D 89 03 A6 */	mtctr r12
/* 80A0A7DC  4E 80 04 21 */	bctrl 
/* 80A0A7E0  48 00 00 F4 */	b lbl_80A0A8D4
lbl_80A0A7E4:
/* 80A0A7E4  2C 1D 00 00 */	cmpwi r29, 0
/* 80A0A7E8  41 82 00 EC */	beq lbl_80A0A8D4
/* 80A0A7EC  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80A0A7F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A7F4  40 82 00 E0 */	bne lbl_80A0A8D4
/* 80A0A7F8  A8 1E 09 DE */	lha r0, 0x9de(r30)
/* 80A0A7FC  2C 00 00 02 */	cmpwi r0, 2
/* 80A0A800  41 82 00 6C */	beq lbl_80A0A86C
/* 80A0A804  40 80 00 14 */	bge lbl_80A0A818
/* 80A0A808  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A80C  41 82 00 18 */	beq lbl_80A0A824
/* 80A0A810  40 80 00 38 */	bge lbl_80A0A848
/* 80A0A814  48 00 00 A0 */	b lbl_80A0A8B4
lbl_80A0A818:
/* 80A0A818  2C 00 00 04 */	cmpwi r0, 4
/* 80A0A81C  40 80 00 98 */	bge lbl_80A0A8B4
/* 80A0A820  48 00 00 70 */	b lbl_80A0A890
lbl_80A0A824:
/* 80A0A824  7F C3 F3 78 */	mr r3, r30
/* 80A0A828  38 80 00 07 */	li r4, 7
/* 80A0A82C  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A830  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A834  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A838  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A83C  7D 89 03 A6 */	mtctr r12
/* 80A0A840  4E 80 04 21 */	bctrl 
/* 80A0A844  48 00 00 90 */	b lbl_80A0A8D4
lbl_80A0A848:
/* 80A0A848  7F C3 F3 78 */	mr r3, r30
/* 80A0A84C  38 80 00 04 */	li r4, 4
/* 80A0A850  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A854  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A858  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A85C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A860  7D 89 03 A6 */	mtctr r12
/* 80A0A864  4E 80 04 21 */	bctrl 
/* 80A0A868  48 00 00 6C */	b lbl_80A0A8D4
lbl_80A0A86C:
/* 80A0A86C  7F C3 F3 78 */	mr r3, r30
/* 80A0A870  38 80 00 05 */	li r4, 5
/* 80A0A874  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A878  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A87C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A880  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A884  7D 89 03 A6 */	mtctr r12
/* 80A0A888  4E 80 04 21 */	bctrl 
/* 80A0A88C  48 00 00 48 */	b lbl_80A0A8D4
lbl_80A0A890:
/* 80A0A890  7F C3 F3 78 */	mr r3, r30
/* 80A0A894  38 80 00 06 */	li r4, 6
/* 80A0A898  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A89C  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A8A0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A8A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A8A8  7D 89 03 A6 */	mtctr r12
/* 80A0A8AC  4E 80 04 21 */	bctrl 
/* 80A0A8B0  48 00 00 24 */	b lbl_80A0A8D4
lbl_80A0A8B4:
/* 80A0A8B4  7F C3 F3 78 */	mr r3, r30
/* 80A0A8B8  38 80 00 07 */	li r4, 7
/* 80A0A8BC  3C A0 80 A1 */	lis r5, lit_4889@ha
/* 80A0A8C0  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)
/* 80A0A8C4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0A8C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A8CC  7D 89 03 A6 */	mtctr r12
/* 80A0A8D0  4E 80 04 21 */	bctrl 
lbl_80A0A8D4:
/* 80A0A8D4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A0A8D8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80A0A8DC  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80A0A8E0  7C 04 00 00 */	cmpw r4, r0
/* 80A0A8E4  40 80 00 14 */	bge lbl_80A0A8F8
/* 80A0A8E8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A0A8EC  7C 04 00 00 */	cmpw r4, r0
/* 80A0A8F0  40 80 00 18 */	bge lbl_80A0A908
/* 80A0A8F4  48 00 00 40 */	b lbl_80A0A934
lbl_80A0A8F8:
/* 80A0A8F8  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A0A8FC  7C 04 00 00 */	cmpw r4, r0
/* 80A0A900  40 80 00 34 */	bge lbl_80A0A934
/* 80A0A904  48 00 00 28 */	b lbl_80A0A92C
lbl_80A0A908:
/* 80A0A908  7F C3 F3 78 */	mr r3, r30
/* 80A0A90C  38 80 00 00 */	li r4, 0
/* 80A0A910  38 A0 00 01 */	li r5, 1
/* 80A0A914  38 C0 00 00 */	li r6, 0
/* 80A0A918  4B 74 94 6C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A0A91C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A920  41 82 00 14 */	beq lbl_80A0A934
/* 80A0A924  38 60 00 01 */	li r3, 1
/* 80A0A928  48 00 00 10 */	b lbl_80A0A938
lbl_80A0A92C:
/* 80A0A92C  38 60 00 01 */	li r3, 1
/* 80A0A930  48 00 00 08 */	b lbl_80A0A938
lbl_80A0A934:
/* 80A0A934  38 60 00 00 */	li r3, 0
lbl_80A0A938:
/* 80A0A938  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0A93C  4B 95 78 E8 */	b _restgpr_28
/* 80A0A940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0A944  7C 08 03 A6 */	mtlr r0
/* 80A0A948  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0A94C  4E 80 00 20 */	blr 
