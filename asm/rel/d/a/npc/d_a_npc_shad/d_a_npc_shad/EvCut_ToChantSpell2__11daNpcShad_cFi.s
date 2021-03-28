lbl_80ADD720:
/* 80ADD720  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80ADD724  7C 08 02 A6 */	mflr r0
/* 80ADD728  90 01 00 54 */	stw r0, 0x54(r1)
/* 80ADD72C  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADD730  4B 88 4A A0 */	b _savegpr_26
/* 80ADD734  7C 7C 1B 78 */	mr r28, r3
/* 80ADD738  7C 9A 23 78 */	mr r26, r4
/* 80ADD73C  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80ADD740  3B A3 1F DC */	addi r29, r3, m__17daNpcShad_Param_c@l
/* 80ADD744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADD748  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ADD74C  3B 7E 4F F8 */	addi r27, r30, 0x4ff8
/* 80ADD750  7F 63 DB 78 */	mr r3, r27
/* 80ADD754  4B 56 A8 08 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADD758  7C 7F 1B 78 */	mr r31, r3
/* 80ADD75C  7F 63 DB 78 */	mr r3, r27
/* 80ADD760  7F 44 D3 78 */	mr r4, r26
/* 80ADD764  4B 56 A5 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADD768  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD76C  41 82 03 60 */	beq lbl_80ADDACC
/* 80ADD770  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADD774  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80ADD778  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80ADD77C  7C 04 00 00 */	cmpw r4, r0
/* 80ADD780  41 82 01 F0 */	beq lbl_80ADD970
/* 80ADD784  40 80 00 38 */	bge lbl_80ADD7BC
/* 80ADD788  38 03 30 34 */	addi r0, r3, 0x3034
/* 80ADD78C  7C 04 00 00 */	cmpw r4, r0
/* 80ADD790  41 82 03 3C */	beq lbl_80ADDACC
/* 80ADD794  40 80 00 18 */	bge lbl_80ADD7AC
/* 80ADD798  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ADD79C  7C 04 00 00 */	cmpw r4, r0
/* 80ADD7A0  41 82 00 40 */	beq lbl_80ADD7E0
/* 80ADD7A4  40 80 00 A8 */	bge lbl_80ADD84C
/* 80ADD7A8  48 00 03 24 */	b lbl_80ADDACC
lbl_80ADD7AC:
/* 80ADD7AC  38 03 30 36 */	addi r0, r3, 0x3036
/* 80ADD7B0  7C 04 00 00 */	cmpw r4, r0
/* 80ADD7B4  40 80 01 0C */	bge lbl_80ADD8C0
/* 80ADD7B8  48 00 00 B8 */	b lbl_80ADD870
lbl_80ADD7BC:
/* 80ADD7BC  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ADD7C0  7C 04 00 00 */	cmpw r4, r0
/* 80ADD7C4  41 82 02 E0 */	beq lbl_80ADDAA4
/* 80ADD7C8  40 80 03 04 */	bge lbl_80ADDACC
/* 80ADD7CC  38 03 30 39 */	addi r0, r3, 0x3039
/* 80ADD7D0  7C 04 00 00 */	cmpw r4, r0
/* 80ADD7D4  41 82 02 A8 */	beq lbl_80ADDA7C
/* 80ADD7D8  40 80 02 F4 */	bge lbl_80ADDACC
/* 80ADD7DC  48 00 01 C0 */	b lbl_80ADD99C
lbl_80ADD7E0:
/* 80ADD7E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADD7E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADD7E8  38 63 00 9C */	addi r3, r3, 0x9c
/* 80ADD7EC  38 80 00 16 */	li r4, 0x16
/* 80ADD7F0  38 A0 00 FF */	li r5, 0xff
/* 80ADD7F4  4B 55 57 C4 */	b setItem__17dSv_player_item_cFiUc
/* 80ADD7F8  38 00 00 00 */	li r0, 0
/* 80ADD7FC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADD800  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADD804  38 60 00 BB */	li r3, 0xbb
/* 80ADD808  38 81 00 18 */	addi r4, r1, 0x18
/* 80ADD80C  4B 53 C2 20 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80ADD810  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80ADD814  28 03 00 00 */	cmplwi r3, 0
/* 80ADD818  41 82 00 10 */	beq lbl_80ADD828
/* 80ADD81C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80ADD820  60 00 08 00 */	ori r0, r0, 0x800
/* 80ADD824  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80ADD828:
/* 80ADD828  3B 7E 4E C8 */	addi r27, r30, 0x4ec8
/* 80ADD82C  7F 63 DB 78 */	mr r3, r27
/* 80ADD830  7F 84 E3 78 */	mr r4, r28
/* 80ADD834  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80ADD838  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80ADD83C  38 C0 00 00 */	li r6, 0
/* 80ADD840  4B 56 50 D4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80ADD844  7F 63 DB 78 */	mr r3, r27
/* 80ADD848  4B 56 51 60 */	b onSkipFade__14dEvt_control_cFv
lbl_80ADD84C:
/* 80ADD84C  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80ADD850  2C 00 00 00 */	cmpwi r0, 0
/* 80ADD854  40 82 00 10 */	bne lbl_80ADD864
/* 80ADD858  80 1C 0C A8 */	lwz r0, 0xca8(r28)
/* 80ADD85C  28 00 00 00 */	cmplwi r0, 0
/* 80ADD860  41 82 00 10 */	beq lbl_80ADD870
lbl_80ADD864:
/* 80ADD864  38 00 00 00 */	li r0, 0
/* 80ADD868  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80ADD86C  90 1C 0C A8 */	stw r0, 0xca8(r28)
lbl_80ADD870:
/* 80ADD870  7F 83 E3 78 */	mr r3, r28
/* 80ADD874  A8 9C 0E 14 */	lha r4, 0xe14(r28)
/* 80ADD878  38 A0 00 00 */	li r5, 0
/* 80ADD87C  4B 67 64 A0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADD880  7F 83 E3 78 */	mr r3, r28
/* 80ADD884  38 80 00 0C */	li r4, 0xc
/* 80ADD888  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADD88C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADD890  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD894  7D 89 03 A6 */	mtctr r12
/* 80ADD898  4E 80 04 21 */	bctrl 
/* 80ADD89C  7F 83 E3 78 */	mr r3, r28
/* 80ADD8A0  38 80 00 00 */	li r4, 0
/* 80ADD8A4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADD8A8  38 A0 00 00 */	li r5, 0
/* 80ADD8AC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADD8B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD8B4  7D 89 03 A6 */	mtctr r12
/* 80ADD8B8  4E 80 04 21 */	bctrl 
/* 80ADD8BC  48 00 02 10 */	b lbl_80ADDACC
lbl_80ADD8C0:
/* 80ADD8C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADD8C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADD8C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADD8CC  C0 7D 00 8C */	lfs f3, 0x8c(r29)
/* 80ADD8D0  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 80ADD8D4  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADD8D8  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 80ADD8DC  38 00 00 00 */	li r0, 0
/* 80ADD8E0  90 03 04 10 */	stw r0, 0x410(r3)
/* 80ADD8E4  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 80ADD8E8  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80ADD8EC  38 00 00 46 */	li r0, 0x46
/* 80ADD8F0  90 03 04 20 */	stw r0, 0x420(r3)
/* 80ADD8F4  EC 43 00 28 */	fsubs f2, f3, f0
/* 80ADD8F8  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80ADD8FC  C8 3D 04 A8 */	lfd f1, 0x4a8(r29)
/* 80ADD900  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80ADD904  3C 00 43 30 */	lis r0, 0x4330
/* 80ADD908  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADD90C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80ADD910  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADD914  EC 02 00 24 */	fdivs f0, f2, f0
/* 80ADD918  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80ADD91C  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80ADD920  7F 83 E3 78 */	mr r3, r28
/* 80ADD924  A8 9C 0E 14 */	lha r4, 0xe14(r28)
/* 80ADD928  38 A0 00 00 */	li r5, 0
/* 80ADD92C  4B 67 63 F0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADD930  7F 83 E3 78 */	mr r3, r28
/* 80ADD934  38 80 00 0C */	li r4, 0xc
/* 80ADD938  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADD93C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADD940  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD944  7D 89 03 A6 */	mtctr r12
/* 80ADD948  4E 80 04 21 */	bctrl 
/* 80ADD94C  7F 83 E3 78 */	mr r3, r28
/* 80ADD950  38 80 00 00 */	li r4, 0
/* 80ADD954  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADD958  38 A0 00 00 */	li r5, 0
/* 80ADD95C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADD960  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD964  7D 89 03 A6 */	mtctr r12
/* 80ADD968  4E 80 04 21 */	bctrl 
/* 80ADD96C  48 00 01 60 */	b lbl_80ADDACC
lbl_80ADD970:
/* 80ADD970  38 00 00 00 */	li r0, 0
/* 80ADD974  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADD978  7F 83 E3 78 */	mr r3, r28
/* 80ADD97C  38 80 00 11 */	li r4, 0x11
/* 80ADD980  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADD984  38 A0 00 00 */	li r5, 0
/* 80ADD988  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADD98C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD990  7D 89 03 A6 */	mtctr r12
/* 80ADD994  4E 80 04 21 */	bctrl 
/* 80ADD998  48 00 01 34 */	b lbl_80ADDACC
lbl_80ADD99C:
/* 80ADD99C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80ADD9A0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80ADD9A4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80ADD9A8  7C 04 07 74 */	extsb r4, r0
/* 80ADD9AC  4B 57 3E 40 */	b dPath_GetRoomPath__Fii
/* 80ADD9B0  28 03 00 00 */	cmplwi r3, 0
/* 80ADD9B4  40 82 00 0C */	bne lbl_80ADD9C0
/* 80ADD9B8  38 00 00 00 */	li r0, 0
/* 80ADD9BC  48 00 00 38 */	b lbl_80ADD9F4
lbl_80ADD9C0:
/* 80ADD9C0  38 80 00 01 */	li r4, 1
/* 80ADD9C4  4B 57 3D EC */	b dPath_GetPnt__FPC5dPathi
/* 80ADD9C8  28 03 00 00 */	cmplwi r3, 0
/* 80ADD9CC  40 82 00 0C */	bne lbl_80ADD9D8
/* 80ADD9D0  38 00 00 00 */	li r0, 0
/* 80ADD9D4  48 00 00 20 */	b lbl_80ADD9F4
lbl_80ADD9D8:
/* 80ADD9D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80ADD9DC  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80ADD9E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80ADD9E4  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80ADD9E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80ADD9EC  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80ADD9F0  38 00 00 01 */	li r0, 1
lbl_80ADD9F4:
/* 80ADD9F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADD9F8  41 82 00 D4 */	beq lbl_80ADDACC
/* 80ADD9FC  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80ADDA00  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80ADDA04  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80ADDA08  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80ADDA0C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80ADDA10  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80ADDA14  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80ADDA18  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80ADDA1C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80ADDA20  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80ADDA24  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80ADDA28  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80ADDA2C  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADDA30  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80ADDA34  38 00 00 42 */	li r0, 0x42
/* 80ADDA38  B0 1C 0E 14 */	sth r0, 0xe14(r28)
/* 80ADDA3C  7F 83 E3 78 */	mr r3, r28
/* 80ADDA40  38 80 00 0A */	li r4, 0xa
/* 80ADDA44  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDA48  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDA4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDA50  7D 89 03 A6 */	mtctr r12
/* 80ADDA54  4E 80 04 21 */	bctrl 
/* 80ADDA58  7F 83 E3 78 */	mr r3, r28
/* 80ADDA5C  38 80 00 07 */	li r4, 7
/* 80ADDA60  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDA64  38 A0 00 00 */	li r5, 0
/* 80ADDA68  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDA6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADDA70  7D 89 03 A6 */	mtctr r12
/* 80ADDA74  4E 80 04 21 */	bctrl 
/* 80ADDA78  48 00 00 54 */	b lbl_80ADDACC
lbl_80ADDA7C:
/* 80ADDA7C  7F 83 E3 78 */	mr r3, r28
/* 80ADDA80  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80ADDA84  38 04 E0 00 */	addi r0, r4, -8192
/* 80ADDA88  7C 04 07 34 */	extsh r4, r0
/* 80ADDA8C  4B 67 67 C4 */	b setAngle__8daNpcF_cFs
/* 80ADDA90  7F 83 E3 78 */	mr r3, r28
/* 80ADDA94  A8 9C 0E 14 */	lha r4, 0xe14(r28)
/* 80ADDA98  38 A0 00 00 */	li r5, 0
/* 80ADDA9C  4B 67 62 80 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADDAA0  48 00 00 2C */	b lbl_80ADDACC
lbl_80ADDAA4:
/* 80ADDAA4  38 00 00 00 */	li r0, 0
/* 80ADDAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ADDAAC  38 60 00 BB */	li r3, 0xbb
/* 80ADDAB0  38 81 00 14 */	addi r4, r1, 0x14
/* 80ADDAB4  4B 53 BF 78 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80ADDAB8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ADDABC  28 03 00 00 */	cmplwi r3, 0
/* 80ADDAC0  41 82 00 0C */	beq lbl_80ADDACC
/* 80ADDAC4  38 00 00 01 */	li r0, 1
/* 80ADDAC8  98 03 0B 10 */	stb r0, 0xb10(r3)
lbl_80ADDACC:
/* 80ADDACC  A0 1E 4F A2 */	lhz r0, 0x4fa2(r30)
/* 80ADDAD0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80ADDAD4  41 82 00 B8 */	beq lbl_80ADDB8C
/* 80ADDAD8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADDADC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADDAE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADDAE4  C0 7D 00 8C */	lfs f3, 0x8c(r29)
/* 80ADDAE8  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 80ADDAEC  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADDAF0  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 80ADDAF4  38 00 00 00 */	li r0, 0
/* 80ADDAF8  90 03 04 10 */	stw r0, 0x410(r3)
/* 80ADDAFC  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 80ADDB00  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80ADDB04  38 00 00 46 */	li r0, 0x46
/* 80ADDB08  90 03 04 20 */	stw r0, 0x420(r3)
/* 80ADDB0C  EC 43 00 28 */	fsubs f2, f3, f0
/* 80ADDB10  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80ADDB14  C8 3D 04 A8 */	lfd f1, 0x4a8(r29)
/* 80ADDB18  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80ADDB1C  3C 00 43 30 */	lis r0, 0x4330
/* 80ADDB20  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADDB24  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80ADDB28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADDB2C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80ADDB30  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80ADDB34  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80ADDB38  4B 67 7F B0 */	b daNpcF_clearMessageTmpBit__Fv
/* 80ADDB3C  38 60 01 2F */	li r3, 0x12f
/* 80ADDB40  4B 67 7B 34 */	b daNpcF_onEvtBit__FUl
/* 80ADDB44  38 00 00 42 */	li r0, 0x42
/* 80ADDB48  B0 1C 0E 14 */	sth r0, 0xe14(r28)
/* 80ADDB4C  38 00 00 05 */	li r0, 5
/* 80ADDB50  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80ADDB54  4B 75 9E 40 */	b onKillMessageFlag__12dMsgObject_cFv
/* 80ADDB58  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80ADDB5C  54 00 10 3A */	slwi r0, r0, 2
/* 80ADDB60  7F 83 E3 78 */	mr r3, r28
/* 80ADDB64  3C 80 80 AE */	lis r4, l_evtArcs@ha
/* 80ADDB68  38 84 29 28 */	addi r4, r4, l_evtArcs@l
/* 80ADDB6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADDB70  3C A0 80 AE */	lis r5, l_evtNames@ha
/* 80ADDB74  38 A5 28 F0 */	addi r5, r5, l_evtNames@l
/* 80ADDB78  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADDB7C  38 C0 00 01 */	li r6, 1
/* 80ADDB80  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADDB84  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADDB88  4B 67 5D CC */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_80ADDB8C:
/* 80ADDB8C  83 7C 09 50 */	lwz r27, 0x950(r28)
/* 80ADDB90  7F 83 E3 78 */	mr r3, r28
/* 80ADDB94  38 81 00 10 */	addi r4, r1, 0x10
/* 80ADDB98  38 A1 00 0C */	addi r5, r1, 0xc
/* 80ADDB9C  7F 86 E3 78 */	mr r6, r28
/* 80ADDBA0  38 E0 00 00 */	li r7, 0
/* 80ADDBA4  4B 67 5B 74 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADDBA8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADDBAC  41 82 00 44 */	beq lbl_80ADDBF0
/* 80ADDBB0  7F 83 E3 78 */	mr r3, r28
/* 80ADDBB4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ADDBB8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDBBC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDBC0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDBC4  7D 89 03 A6 */	mtctr r12
/* 80ADDBC8  4E 80 04 21 */	bctrl 
/* 80ADDBCC  7F 83 E3 78 */	mr r3, r28
/* 80ADDBD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADDBD4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDBD8  38 A0 00 00 */	li r5, 0
/* 80ADDBDC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDBE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADDBE4  7D 89 03 A6 */	mtctr r12
/* 80ADDBE8  4E 80 04 21 */	bctrl 
/* 80ADDBEC  48 00 00 E0 */	b lbl_80ADDCCC
lbl_80ADDBF0:
/* 80ADDBF0  2C 1B 00 00 */	cmpwi r27, 0
/* 80ADDBF4  41 82 00 D8 */	beq lbl_80ADDCCC
/* 80ADDBF8  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 80ADDBFC  2C 00 00 00 */	cmpwi r0, 0
/* 80ADDC00  40 82 00 CC */	bne lbl_80ADDCCC
/* 80ADDC04  A8 1C 09 DE */	lha r0, 0x9de(r28)
/* 80ADDC08  2C 00 00 03 */	cmpwi r0, 3
/* 80ADDC0C  41 82 00 64 */	beq lbl_80ADDC70
/* 80ADDC10  40 80 00 14 */	bge lbl_80ADDC24
/* 80ADDC14  2C 00 00 01 */	cmpwi r0, 1
/* 80ADDC18  41 82 00 18 */	beq lbl_80ADDC30
/* 80ADDC1C  40 80 00 34 */	bge lbl_80ADDC50
/* 80ADDC20  48 00 00 90 */	b lbl_80ADDCB0
lbl_80ADDC24:
/* 80ADDC24  2C 00 00 05 */	cmpwi r0, 5
/* 80ADDC28  40 80 00 88 */	bge lbl_80ADDCB0
/* 80ADDC2C  48 00 00 64 */	b lbl_80ADDC90
lbl_80ADDC30:
/* 80ADDC30  7F 83 E3 78 */	mr r3, r28
/* 80ADDC34  38 80 00 08 */	li r4, 8
/* 80ADDC38  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDC3C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDC40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDC44  7D 89 03 A6 */	mtctr r12
/* 80ADDC48  4E 80 04 21 */	bctrl 
/* 80ADDC4C  48 00 00 80 */	b lbl_80ADDCCC
lbl_80ADDC50:
/* 80ADDC50  7F 83 E3 78 */	mr r3, r28
/* 80ADDC54  38 80 00 09 */	li r4, 9
/* 80ADDC58  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDC5C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDC60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDC64  7D 89 03 A6 */	mtctr r12
/* 80ADDC68  4E 80 04 21 */	bctrl 
/* 80ADDC6C  48 00 00 60 */	b lbl_80ADDCCC
lbl_80ADDC70:
/* 80ADDC70  7F 83 E3 78 */	mr r3, r28
/* 80ADDC74  38 80 00 0A */	li r4, 0xa
/* 80ADDC78  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDC7C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDC80  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDC84  7D 89 03 A6 */	mtctr r12
/* 80ADDC88  4E 80 04 21 */	bctrl 
/* 80ADDC8C  48 00 00 40 */	b lbl_80ADDCCC
lbl_80ADDC90:
/* 80ADDC90  7F 83 E3 78 */	mr r3, r28
/* 80ADDC94  38 80 00 07 */	li r4, 7
/* 80ADDC98  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDC9C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDCA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDCA4  7D 89 03 A6 */	mtctr r12
/* 80ADDCA8  4E 80 04 21 */	bctrl 
/* 80ADDCAC  48 00 00 20 */	b lbl_80ADDCCC
lbl_80ADDCB0:
/* 80ADDCB0  7F 83 E3 78 */	mr r3, r28
/* 80ADDCB4  38 80 00 0C */	li r4, 0xc
/* 80ADDCB8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDCBC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDCC0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDCC4  7D 89 03 A6 */	mtctr r12
/* 80ADDCC8  4E 80 04 21 */	bctrl 
lbl_80ADDCCC:
/* 80ADDCCC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADDCD0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80ADDCD4  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80ADDCD8  7C 04 00 00 */	cmpw r4, r0
/* 80ADDCDC  41 82 03 F0 */	beq lbl_80ADE0CC
/* 80ADDCE0  40 80 00 34 */	bge lbl_80ADDD14
/* 80ADDCE4  38 03 30 33 */	addi r0, r3, 0x3033
/* 80ADDCE8  7C 04 00 00 */	cmpw r4, r0
/* 80ADDCEC  41 82 01 F4 */	beq lbl_80ADDEE0
/* 80ADDCF0  40 80 00 14 */	bge lbl_80ADDD04
/* 80ADDCF4  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ADDCF8  7C 04 00 00 */	cmpw r4, r0
/* 80ADDCFC  40 80 00 3C */	bge lbl_80ADDD38
/* 80ADDD00  48 00 07 60 */	b lbl_80ADE460
lbl_80ADDD04:
/* 80ADDD04  38 03 30 35 */	addi r0, r3, 0x3035
/* 80ADDD08  7C 04 00 00 */	cmpw r4, r0
/* 80ADDD0C  40 80 03 9C */	bge lbl_80ADE0A8
/* 80ADDD10  48 00 07 50 */	b lbl_80ADE460
lbl_80ADDD14:
/* 80ADDD14  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ADDD18  7C 04 00 00 */	cmpw r4, r0
/* 80ADDD1C  41 82 07 3C */	beq lbl_80ADE458
/* 80ADDD20  40 80 07 40 */	bge lbl_80ADE460
/* 80ADDD24  38 03 30 39 */	addi r0, r3, 0x3039
/* 80ADDD28  7C 04 00 00 */	cmpw r4, r0
/* 80ADDD2C  41 82 04 D4 */	beq lbl_80ADE200
/* 80ADDD30  40 80 07 30 */	bge lbl_80ADE460
/* 80ADDD34  48 00 04 C4 */	b lbl_80ADE1F8
lbl_80ADDD38:
/* 80ADDD38  7F 83 E3 78 */	mr r3, r28
/* 80ADDD3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADDD40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADDD44  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADDD48  4B 53 C9 C8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADDD4C  7C 7E 1B 78 */	mr r30, r3
/* 80ADDD50  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADDD54  2C 00 00 00 */	cmpwi r0, 0
/* 80ADDD58  40 82 00 D4 */	bne lbl_80ADDE2C
/* 80ADDD5C  C0 5D 04 44 */	lfs f2, 0x444(r29)
/* 80ADDD60  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADDD64  7C 00 F0 50 */	subf r0, r0, r30
/* 80ADDD68  7C 00 07 34 */	extsh r0, r0
/* 80ADDD6C  C8 3D 04 50 */	lfd f1, 0x450(r29)
/* 80ADDD70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADDD74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80ADDD78  3C 00 43 30 */	lis r0, 0x4330
/* 80ADDD7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADDD80  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80ADDD84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADDD88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADDD8C  FC 00 02 10 */	fabs f0, f0
/* 80ADDD90  FC 00 00 18 */	frsp f0, f0
/* 80ADDD94  FC 00 00 1E */	fctiwz f0, f0
/* 80ADDD98  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ADDD9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADDDA0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADDDA4  40 81 00 40 */	ble lbl_80ADDDE4
/* 80ADDDA8  7F 83 E3 78 */	mr r3, r28
/* 80ADDDAC  38 80 00 0C */	li r4, 0xc
/* 80ADDDB0  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDDB4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDDB8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDDBC  7D 89 03 A6 */	mtctr r12
/* 80ADDDC0  4E 80 04 21 */	bctrl 
/* 80ADDDC4  7F 83 E3 78 */	mr r3, r28
/* 80ADDDC8  38 80 00 15 */	li r4, 0x15
/* 80ADDDCC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDDD0  38 A0 00 00 */	li r5, 0
/* 80ADDDD4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDDD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADDDDC  7D 89 03 A6 */	mtctr r12
/* 80ADDDE0  4E 80 04 21 */	bctrl 
lbl_80ADDDE4:
/* 80ADDDE4  B3 DC 09 96 */	sth r30, 0x996(r28)
/* 80ADDDE8  38 00 00 00 */	li r0, 0
/* 80ADDDEC  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ADDDF0  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ADDDF4  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ADDDF8  7C 03 00 00 */	cmpw r3, r0
/* 80ADDDFC  40 82 00 10 */	bne lbl_80ADDE0C
/* 80ADDE00  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADDE04  38 03 00 01 */	addi r0, r3, 1
/* 80ADDE08  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ADDE0C:
/* 80ADDE0C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADDE10  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ADDE14  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE18  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADDE1C  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADDE20  38 03 00 01 */	addi r0, r3, 1
/* 80ADDE24  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADDE28  48 00 00 60 */	b lbl_80ADDE88
lbl_80ADDE2C:
/* 80ADDE2C  2C 00 00 01 */	cmpwi r0, 1
/* 80ADDE30  40 82 00 58 */	bne lbl_80ADDE88
/* 80ADDE34  7F 83 E3 78 */	mr r3, r28
/* 80ADDE38  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ADDE3C  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADDE40  38 A0 00 00 */	li r5, 0
/* 80ADDE44  4B 67 60 B0 */	b turn__8daNpcF_cFsfi
/* 80ADDE48  2C 03 00 00 */	cmpwi r3, 0
/* 80ADDE4C  41 82 00 2C */	beq lbl_80ADDE78
/* 80ADDE50  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE54  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADDE58  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE5C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ADDE60  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE64  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ADDE68  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADDE6C  38 03 00 01 */	addi r0, r3, 1
/* 80ADDE70  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADDE74  48 00 00 14 */	b lbl_80ADDE88
lbl_80ADDE78:
/* 80ADDE78  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE7C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADDE80  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADDE84  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ADDE88:
/* 80ADDE88  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADDE8C  2C 00 00 01 */	cmpwi r0, 1
/* 80ADDE90  40 81 05 D0 */	ble lbl_80ADE460
/* 80ADDE94  7F 83 E3 78 */	mr r3, r28
/* 80ADDE98  38 80 00 0C */	li r4, 0xc
/* 80ADDE9C  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDEA0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDEA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDEA8  7D 89 03 A6 */	mtctr r12
/* 80ADDEAC  4E 80 04 21 */	bctrl 
/* 80ADDEB0  7F 83 E3 78 */	mr r3, r28
/* 80ADDEB4  38 80 00 00 */	li r4, 0
/* 80ADDEB8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDEBC  38 A0 00 00 */	li r5, 0
/* 80ADDEC0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDEC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADDEC8  7D 89 03 A6 */	mtctr r12
/* 80ADDECC  4E 80 04 21 */	bctrl 
/* 80ADDED0  38 00 00 00 */	li r0, 0
/* 80ADDED4  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADDED8  38 60 00 01 */	li r3, 1
/* 80ADDEDC  48 00 05 88 */	b lbl_80ADE464
lbl_80ADDEE0:
/* 80ADDEE0  7F 83 E3 78 */	mr r3, r28
/* 80ADDEE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADDEE8  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80ADDEEC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80ADDEF0  4B 53 C8 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADDEF4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80ADDEF8  7C 60 07 34 */	extsh r0, r3
/* 80ADDEFC  7C 04 00 00 */	cmpw r4, r0
/* 80ADDF00  40 82 00 28 */	bne lbl_80ADDF28
/* 80ADDF04  7F 83 E3 78 */	mr r3, r28
/* 80ADDF08  38 80 00 00 */	li r4, 0
/* 80ADDF0C  38 A0 00 01 */	li r5, 1
/* 80ADDF10  38 C0 00 00 */	li r6, 0
/* 80ADDF14  4B 67 5E 70 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADDF18  2C 03 00 00 */	cmpwi r3, 0
/* 80ADDF1C  41 82 05 44 */	beq lbl_80ADE460
/* 80ADDF20  38 60 00 01 */	li r3, 1
/* 80ADDF24  48 00 05 40 */	b lbl_80ADE464
lbl_80ADDF28:
/* 80ADDF28  7F 83 E3 78 */	mr r3, r28
/* 80ADDF2C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80ADDF30  4B 53 C7 E0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADDF34  7C 7E 1B 78 */	mr r30, r3
/* 80ADDF38  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADDF3C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADDF40  40 82 00 D4 */	bne lbl_80ADE014
/* 80ADDF44  C0 5D 04 44 */	lfs f2, 0x444(r29)
/* 80ADDF48  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADDF4C  7C 00 F0 50 */	subf r0, r0, r30
/* 80ADDF50  7C 00 07 34 */	extsh r0, r0
/* 80ADDF54  C8 3D 04 50 */	lfd f1, 0x450(r29)
/* 80ADDF58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADDF5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADDF60  3C 00 43 30 */	lis r0, 0x4330
/* 80ADDF64  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADDF68  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADDF6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADDF70  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADDF74  FC 00 02 10 */	fabs f0, f0
/* 80ADDF78  FC 00 00 18 */	frsp f0, f0
/* 80ADDF7C  FC 00 00 1E */	fctiwz f0, f0
/* 80ADDF80  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80ADDF84  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80ADDF88  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADDF8C  40 81 00 40 */	ble lbl_80ADDFCC
/* 80ADDF90  7F 83 E3 78 */	mr r3, r28
/* 80ADDF94  38 80 00 0C */	li r4, 0xc
/* 80ADDF98  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDF9C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDFA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADDFA4  7D 89 03 A6 */	mtctr r12
/* 80ADDFA8  4E 80 04 21 */	bctrl 
/* 80ADDFAC  7F 83 E3 78 */	mr r3, r28
/* 80ADDFB0  38 80 00 15 */	li r4, 0x15
/* 80ADDFB4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADDFB8  38 A0 00 00 */	li r5, 0
/* 80ADDFBC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADDFC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADDFC4  7D 89 03 A6 */	mtctr r12
/* 80ADDFC8  4E 80 04 21 */	bctrl 
lbl_80ADDFCC:
/* 80ADDFCC  B3 DC 09 96 */	sth r30, 0x996(r28)
/* 80ADDFD0  38 00 00 00 */	li r0, 0
/* 80ADDFD4  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ADDFD8  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ADDFDC  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ADDFE0  7C 03 00 00 */	cmpw r3, r0
/* 80ADDFE4  40 82 00 10 */	bne lbl_80ADDFF4
/* 80ADDFE8  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADDFEC  38 03 00 01 */	addi r0, r3, 1
/* 80ADDFF0  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ADDFF4:
/* 80ADDFF4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADDFF8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ADDFFC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE000  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE004  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE008  38 03 00 01 */	addi r0, r3, 1
/* 80ADE00C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE010  48 00 00 60 */	b lbl_80ADE070
lbl_80ADE014:
/* 80ADE014  2C 00 00 01 */	cmpwi r0, 1
/* 80ADE018  40 82 00 58 */	bne lbl_80ADE070
/* 80ADE01C  7F 83 E3 78 */	mr r3, r28
/* 80ADE020  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ADE024  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADE028  38 A0 00 00 */	li r5, 0
/* 80ADE02C  4B 67 5E C8 */	b turn__8daNpcF_cFsfi
/* 80ADE030  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE034  41 82 00 2C */	beq lbl_80ADE060
/* 80ADE038  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE03C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE040  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE044  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ADE048  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE04C  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ADE050  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE054  38 03 00 01 */	addi r0, r3, 1
/* 80ADE058  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE05C  48 00 00 14 */	b lbl_80ADE070
lbl_80ADE060:
/* 80ADE060  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE064  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE068  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE06C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ADE070:
/* 80ADE070  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADE074  2C 00 00 01 */	cmpwi r0, 1
/* 80ADE078  40 81 03 E8 */	ble lbl_80ADE460
/* 80ADE07C  7F 83 E3 78 */	mr r3, r28
/* 80ADE080  38 80 00 00 */	li r4, 0
/* 80ADE084  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE088  38 A0 00 00 */	li r5, 0
/* 80ADE08C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE090  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE094  7D 89 03 A6 */	mtctr r12
/* 80ADE098  4E 80 04 21 */	bctrl 
/* 80ADE09C  38 00 00 00 */	li r0, 0
/* 80ADE0A0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE0A4  48 00 03 BC */	b lbl_80ADE460
lbl_80ADE0A8:
/* 80ADE0A8  7F 83 E3 78 */	mr r3, r28
/* 80ADE0AC  38 80 00 00 */	li r4, 0
/* 80ADE0B0  38 A0 00 01 */	li r5, 1
/* 80ADE0B4  38 C0 00 00 */	li r6, 0
/* 80ADE0B8  4B 67 5C CC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADE0BC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE0C0  41 82 03 A0 */	beq lbl_80ADE460
/* 80ADE0C4  38 60 00 01 */	li r3, 1
/* 80ADE0C8  48 00 03 9C */	b lbl_80ADE464
lbl_80ADE0CC:
/* 80ADE0CC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80ADE0D0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80ADE0D4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80ADE0D8  7C 04 07 74 */	extsb r4, r0
/* 80ADE0DC  4B 57 37 10 */	b dPath_GetRoomPath__Fii
/* 80ADE0E0  28 03 00 00 */	cmplwi r3, 0
/* 80ADE0E4  40 82 00 0C */	bne lbl_80ADE0F0
/* 80ADE0E8  38 00 00 00 */	li r0, 0
/* 80ADE0EC  48 00 00 38 */	b lbl_80ADE124
lbl_80ADE0F0:
/* 80ADE0F0  38 80 00 01 */	li r4, 1
/* 80ADE0F4  4B 57 36 BC */	b dPath_GetPnt__FPC5dPathi
/* 80ADE0F8  28 03 00 00 */	cmplwi r3, 0
/* 80ADE0FC  40 82 00 0C */	bne lbl_80ADE108
/* 80ADE100  38 00 00 00 */	li r0, 0
/* 80ADE104  48 00 00 20 */	b lbl_80ADE124
lbl_80ADE108:
/* 80ADE108  C0 03 00 04 */	lfs f0, 4(r3)
/* 80ADE10C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80ADE110  C0 03 00 08 */	lfs f0, 8(r3)
/* 80ADE114  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80ADE118  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80ADE11C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ADE120  38 00 00 01 */	li r0, 1
lbl_80ADE124:
/* 80ADE124  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADE128  41 82 00 C8 */	beq lbl_80ADE1F0
/* 80ADE12C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80ADE130  38 81 00 1C */	addi r4, r1, 0x1c
/* 80ADE134  4B 79 2A D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADE138  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADE13C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADE140  40 82 00 4C */	bne lbl_80ADE18C
/* 80ADE144  B0 7C 09 96 */	sth r3, 0x996(r28)
/* 80ADE148  38 00 00 00 */	li r0, 0
/* 80ADE14C  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ADE150  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ADE154  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ADE158  7C 03 00 00 */	cmpw r3, r0
/* 80ADE15C  40 82 00 10 */	bne lbl_80ADE16C
/* 80ADE160  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE164  38 03 00 01 */	addi r0, r3, 1
/* 80ADE168  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ADE16C:
/* 80ADE16C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADE170  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ADE174  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE178  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE17C  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE180  38 03 00 01 */	addi r0, r3, 1
/* 80ADE184  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE188  48 00 00 60 */	b lbl_80ADE1E8
lbl_80ADE18C:
/* 80ADE18C  2C 00 00 01 */	cmpwi r0, 1
/* 80ADE190  40 82 00 58 */	bne lbl_80ADE1E8
/* 80ADE194  7F 83 E3 78 */	mr r3, r28
/* 80ADE198  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ADE19C  C0 3D 04 9C */	lfs f1, 0x49c(r29)
/* 80ADE1A0  38 A0 00 00 */	li r5, 0
/* 80ADE1A4  4B 67 5D 50 */	b turn__8daNpcF_cFsfi
/* 80ADE1A8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE1AC  41 82 00 2C */	beq lbl_80ADE1D8
/* 80ADE1B0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE1B4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE1B8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE1BC  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ADE1C0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE1C4  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ADE1C8  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE1CC  38 03 00 01 */	addi r0, r3, 1
/* 80ADE1D0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE1D4  48 00 00 14 */	b lbl_80ADE1E8
lbl_80ADE1D8:
/* 80ADE1D8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE1DC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE1E0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE1E4  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ADE1E8:
/* 80ADE1E8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80ADE1EC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80ADE1F0:
/* 80ADE1F0  38 60 00 01 */	li r3, 1
/* 80ADE1F4  48 00 02 70 */	b lbl_80ADE464
lbl_80ADE1F8:
/* 80ADE1F8  38 60 00 01 */	li r3, 1
/* 80ADE1FC  48 00 02 68 */	b lbl_80ADE464
lbl_80ADE200:
/* 80ADE200  AB 7C 04 B6 */	lha r27, 0x4b6(r28)
/* 80ADE204  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADE208  7C 1B 00 00 */	cmpw r27, r0
/* 80ADE20C  40 82 00 E0 */	bne lbl_80ADE2EC
/* 80ADE210  7F 83 E3 78 */	mr r3, r28
/* 80ADE214  38 80 00 00 */	li r4, 0
/* 80ADE218  38 A0 00 01 */	li r5, 1
/* 80ADE21C  38 C0 00 00 */	li r6, 0
/* 80ADE220  4B 67 5B 64 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADE224  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE228  41 82 02 38 */	beq lbl_80ADE460
/* 80ADE22C  A8 1C 09 E0 */	lha r0, 0x9e0(r28)
/* 80ADE230  2C 00 00 12 */	cmpwi r0, 0x12
/* 80ADE234  41 82 00 4C */	beq lbl_80ADE280
/* 80ADE238  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADE23C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADE240  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADE244  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80ADE248  38 00 00 BE */	li r0, 0xbe
/* 80ADE24C  90 03 04 20 */	stw r0, 0x420(r3)
/* 80ADE250  C0 7D 00 90 */	lfs f3, 0x90(r29)
/* 80ADE254  EC 43 00 28 */	fsubs f2, f3, f0
/* 80ADE258  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80ADE25C  C8 3D 04 A8 */	lfd f1, 0x4a8(r29)
/* 80ADE260  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADE264  3C 00 43 30 */	lis r0, 0x4330
/* 80ADE268  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADE26C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADE270  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADE274  EC 02 00 24 */	fdivs f0, f2, f0
/* 80ADE278  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80ADE27C  D0 63 04 1C */	stfs f3, 0x41c(r3)
lbl_80ADE280:
/* 80ADE280  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050070@ha */
/* 80ADE284  38 03 00 70 */	addi r0, r3, 0x0070 /* 0x00050070@l */
/* 80ADE288  90 01 00 08 */	stw r0, 8(r1)
/* 80ADE28C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80ADE290  38 81 00 08 */	addi r4, r1, 8
/* 80ADE294  38 A0 FF FF */	li r5, -1
/* 80ADE298  81 9C 0B 50 */	lwz r12, 0xb50(r28)
/* 80ADE29C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80ADE2A0  7D 89 03 A6 */	mtctr r12
/* 80ADE2A4  4E 80 04 21 */	bctrl 
/* 80ADE2A8  7F 83 E3 78 */	mr r3, r28
/* 80ADE2AC  38 80 00 0B */	li r4, 0xb
/* 80ADE2B0  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE2B4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE2B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE2BC  7D 89 03 A6 */	mtctr r12
/* 80ADE2C0  4E 80 04 21 */	bctrl 
/* 80ADE2C4  7F 83 E3 78 */	mr r3, r28
/* 80ADE2C8  38 80 00 12 */	li r4, 0x12
/* 80ADE2CC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE2D0  38 A0 00 00 */	li r5, 0
/* 80ADE2D4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE2D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE2DC  7D 89 03 A6 */	mtctr r12
/* 80ADE2E0  4E 80 04 21 */	bctrl 
/* 80ADE2E4  38 60 00 01 */	li r3, 1
/* 80ADE2E8  48 00 01 7C */	b lbl_80ADE464
lbl_80ADE2EC:
/* 80ADE2EC  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE2F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE2F4  40 82 00 D0 */	bne lbl_80ADE3C4
/* 80ADE2F8  C0 5D 04 44 */	lfs f2, 0x444(r29)
/* 80ADE2FC  7C 00 D8 50 */	subf r0, r0, r27
/* 80ADE300  7C 00 07 34 */	extsh r0, r0
/* 80ADE304  C8 3D 04 50 */	lfd f1, 0x450(r29)
/* 80ADE308  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADE30C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADE310  3C 00 43 30 */	lis r0, 0x4330
/* 80ADE314  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADE318  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADE31C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADE320  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADE324  FC 00 02 10 */	fabs f0, f0
/* 80ADE328  FC 00 00 18 */	frsp f0, f0
/* 80ADE32C  FC 00 00 1E */	fctiwz f0, f0
/* 80ADE330  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80ADE334  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80ADE338  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADE33C  40 81 00 40 */	ble lbl_80ADE37C
/* 80ADE340  7F 83 E3 78 */	mr r3, r28
/* 80ADE344  38 80 00 0C */	li r4, 0xc
/* 80ADE348  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE34C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE350  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE354  7D 89 03 A6 */	mtctr r12
/* 80ADE358  4E 80 04 21 */	bctrl 
/* 80ADE35C  7F 83 E3 78 */	mr r3, r28
/* 80ADE360  38 80 00 15 */	li r4, 0x15
/* 80ADE364  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE368  38 A0 00 00 */	li r5, 0
/* 80ADE36C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE370  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE374  7D 89 03 A6 */	mtctr r12
/* 80ADE378  4E 80 04 21 */	bctrl 
lbl_80ADE37C:
/* 80ADE37C  B3 7C 09 96 */	sth r27, 0x996(r28)
/* 80ADE380  38 00 00 00 */	li r0, 0
/* 80ADE384  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ADE388  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ADE38C  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ADE390  7C 03 00 00 */	cmpw r3, r0
/* 80ADE394  40 82 00 10 */	bne lbl_80ADE3A4
/* 80ADE398  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE39C  38 03 00 01 */	addi r0, r3, 1
/* 80ADE3A0  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ADE3A4:
/* 80ADE3A4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ADE3A8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ADE3AC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE3B0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE3B4  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE3B8  38 03 00 01 */	addi r0, r3, 1
/* 80ADE3BC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE3C0  48 00 00 60 */	b lbl_80ADE420
lbl_80ADE3C4:
/* 80ADE3C4  2C 03 00 01 */	cmpwi r3, 1
/* 80ADE3C8  40 82 00 58 */	bne lbl_80ADE420
/* 80ADE3CC  7F 83 E3 78 */	mr r3, r28
/* 80ADE3D0  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ADE3D4  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADE3D8  38 A0 00 00 */	li r5, 0
/* 80ADE3DC  4B 67 5B 18 */	b turn__8daNpcF_cFsfi
/* 80ADE3E0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE3E4  41 82 00 2C */	beq lbl_80ADE410
/* 80ADE3E8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE3EC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE3F0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE3F4  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ADE3F8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE3FC  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ADE400  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ADE404  38 03 00 01 */	addi r0, r3, 1
/* 80ADE408  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE40C  48 00 00 14 */	b lbl_80ADE420
lbl_80ADE410:
/* 80ADE410  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE414  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ADE418  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ADE41C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ADE420:
/* 80ADE420  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ADE424  2C 00 00 01 */	cmpwi r0, 1
/* 80ADE428  40 81 00 38 */	ble lbl_80ADE460
/* 80ADE42C  7F 83 E3 78 */	mr r3, r28
/* 80ADE430  38 80 00 00 */	li r4, 0
/* 80ADE434  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADE438  38 A0 00 00 */	li r5, 0
/* 80ADE43C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ADE440  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE444  7D 89 03 A6 */	mtctr r12
/* 80ADE448  4E 80 04 21 */	bctrl 
/* 80ADE44C  38 00 00 00 */	li r0, 0
/* 80ADE450  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ADE454  48 00 00 0C */	b lbl_80ADE460
lbl_80ADE458:
/* 80ADE458  38 60 00 01 */	li r3, 1
/* 80ADE45C  48 00 00 08 */	b lbl_80ADE464
lbl_80ADE460:
/* 80ADE460  38 60 00 00 */	li r3, 0
lbl_80ADE464:
/* 80ADE464  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADE468  4B 88 3D B4 */	b _restgpr_26
/* 80ADE46C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80ADE470  7C 08 03 A6 */	mtlr r0
/* 80ADE474  38 21 00 50 */	addi r1, r1, 0x50
/* 80ADE478  4E 80 00 20 */	blr 
