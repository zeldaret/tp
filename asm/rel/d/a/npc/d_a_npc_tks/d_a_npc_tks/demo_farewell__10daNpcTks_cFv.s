lbl_80B1946C:
/* 80B1946C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B19470  7C 08 02 A6 */	mflr r0
/* 80B19474  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B19478  39 61 00 50 */	addi r11, r1, 0x50
/* 80B1947C  4B 84 8D 50 */	b _savegpr_25
/* 80B19480  7C 7A 1B 78 */	mr r26, r3
/* 80B19484  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha
/* 80B19488  3B A3 DD 58 */	addi r29, r3, m__16daNpcTks_Param_c@l
/* 80B1948C  A0 1A 13 88 */	lhz r0, 0x1388(r26)
/* 80B19490  2C 00 00 02 */	cmpwi r0, 2
/* 80B19494  41 82 00 FC */	beq lbl_80B19590
/* 80B19498  40 80 08 FC */	bge lbl_80B19D94
/* 80B1949C  2C 00 00 00 */	cmpwi r0, 0
/* 80B194A0  41 82 00 0C */	beq lbl_80B194AC
/* 80B194A4  48 00 08 F0 */	b lbl_80B19D94
/* 80B194A8  48 00 08 EC */	b lbl_80B19D94
lbl_80B194AC:
/* 80B194AC  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B194B0  48 00 3E B9 */	bl func_80B1D368
/* 80B194B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B194B8  41 81 08 DC */	bgt lbl_80B19D94
/* 80B194BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B194C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80B194C4  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80B194C8  28 00 00 00 */	cmplwi r0, 0
/* 80B194CC  41 82 00 08 */	beq lbl_80B194D4
/* 80B194D0  48 00 08 C4 */	b lbl_80B19D94
lbl_80B194D4:
/* 80B194D4  3C 60 80 B2 */	lis r3, l_arcName@ha
/* 80B194D8  80 03 E2 08 */	lwz r0, l_arcName@l(r3)
/* 80B194DC  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80B194E0  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80B194E4  7F 44 D3 78 */	mr r4, r26
/* 80B194E8  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B194EC  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B194F0  38 A5 00 54 */	addi r5, r5, 0x54
/* 80B194F4  38 C0 00 FF */	li r6, 0xff
/* 80B194F8  4B 52 E2 60 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B194FC  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80B19500  7F 43 D3 78 */	mr r3, r26
/* 80B19504  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B19508  38 A0 00 FF */	li r5, 0xff
/* 80B1950C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B19510  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B19514  38 E0 00 04 */	li r7, 4
/* 80B19518  39 00 00 01 */	li r8, 1
/* 80B1951C  4B 50 21 60 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80B19520  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B19524  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B19528  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B1952C  7F 43 D3 78 */	mr r3, r26
/* 80B19530  38 80 00 01 */	li r4, 1
/* 80B19534  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19538  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1953C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B19540  7D 89 03 A6 */	mtctr r12
/* 80B19544  4E 80 04 21 */	bctrl 
/* 80B19548  7F 43 D3 78 */	mr r3, r26
/* 80B1954C  38 80 00 02 */	li r4, 2
/* 80B19550  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B19554  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19558  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B1955C  7D 89 03 A6 */	mtctr r12
/* 80B19560  4E 80 04 21 */	bctrl 
/* 80B19564  38 60 02 21 */	li r3, 0x221
/* 80B19568  4B 63 C1 0C */	b daNpcF_onEvtBit__FUl
/* 80B1956C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B19570  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B19574  80 63 00 00 */	lwz r3, 0(r3)
/* 80B19578  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B1957C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 80B19580  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 80B19584  4B 79 5F 18 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B19588  38 00 00 02 */	li r0, 2
/* 80B1958C  B0 1A 13 88 */	sth r0, 0x1388(r26)
lbl_80B19590:
/* 80B19590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B19594  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B19598  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B1959C  28 00 00 00 */	cmplwi r0, 0
/* 80B195A0  41 82 07 F4 */	beq lbl_80B19D94
/* 80B195A4  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B195A8  28 00 00 01 */	cmplwi r0, 1
/* 80B195AC  41 82 07 E8 */	beq lbl_80B19D94
/* 80B195B0  3B 7E 4F F8 */	addi r27, r30, 0x4ff8
/* 80B195B4  7F 63 DB 78 */	mr r3, r27
/* 80B195B8  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B195BC  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B195C0  80 84 00 00 */	lwz r4, 0(r4)
/* 80B195C4  38 A0 00 00 */	li r5, 0
/* 80B195C8  38 C0 00 00 */	li r6, 0
/* 80B195CC  4B 52 E5 50 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B195D0  7C 7C 1B 78 */	mr r28, r3
/* 80B195D4  2C 1C FF FF */	cmpwi r28, -1
/* 80B195D8  41 82 07 BC */	beq lbl_80B19D94
/* 80B195DC  7F 63 DB 78 */	mr r3, r27
/* 80B195E0  7F 84 E3 78 */	mr r4, r28
/* 80B195E4  4B 52 E9 78 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B195E8  7C 7F 1B 78 */	mr r31, r3
/* 80B195EC  7F 63 DB 78 */	mr r3, r27
/* 80B195F0  7F 84 E3 78 */	mr r4, r28
/* 80B195F4  4B 52 E7 58 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B195F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B195FC  41 82 01 BC */	beq lbl_80B197B8
/* 80B19600  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B19604  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303035@ha */
/* 80B19608  38 03 30 35 */	addi r0, r3, 0x3035 /* 0x30303035@l */
/* 80B1960C  7C 04 00 00 */	cmpw r4, r0
/* 80B19610  41 82 01 A8 */	beq lbl_80B197B8
/* 80B19614  40 80 00 34 */	bge lbl_80B19648
/* 80B19618  38 03 30 32 */	addi r0, r3, 0x3032
/* 80B1961C  7C 04 00 00 */	cmpw r4, r0
/* 80B19620  41 82 00 D4 */	beq lbl_80B196F4
/* 80B19624  40 80 00 14 */	bge lbl_80B19638
/* 80B19628  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1962C  7C 04 00 00 */	cmpw r4, r0
/* 80B19630  40 80 00 48 */	bge lbl_80B19678
/* 80B19634  48 00 01 84 */	b lbl_80B197B8
lbl_80B19638:
/* 80B19638  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1963C  7C 04 00 00 */	cmpw r4, r0
/* 80B19640  40 80 01 2C */	bge lbl_80B1976C
/* 80B19644  48 00 00 D8 */	b lbl_80B1971C
lbl_80B19648:
/* 80B19648  38 03 31 30 */	addi r0, r3, 0x3130
/* 80B1964C  7C 04 00 00 */	cmpw r4, r0
/* 80B19650  41 82 01 68 */	beq lbl_80B197B8
/* 80B19654  40 80 00 14 */	bge lbl_80B19668
/* 80B19658  38 03 30 3A */	addi r0, r3, 0x303a
/* 80B1965C  7C 04 00 00 */	cmpw r4, r0
/* 80B19660  40 80 01 58 */	bge lbl_80B197B8
/* 80B19664  48 00 00 2C */	b lbl_80B19690
lbl_80B19668:
/* 80B19668  38 03 31 32 */	addi r0, r3, 0x3132
/* 80B1966C  7C 04 00 00 */	cmpw r4, r0
/* 80B19670  40 80 01 48 */	bge lbl_80B197B8
/* 80B19674  48 00 01 28 */	b lbl_80B1979C
lbl_80B19678:
/* 80B19678  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1967C  7F 44 D3 78 */	mr r4, r26
/* 80B19680  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B19684  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B19688  38 A5 00 61 */	addi r5, r5, 0x61
/* 80B1968C  4B 52 92 CC */	b setSkipZev__14dEvt_control_cFPvPc
lbl_80B19690:
/* 80B19690  7F 43 D3 78 */	mr r3, r26
/* 80B19694  A8 9A 13 84 */	lha r4, 0x1384(r26)
/* 80B19698  38 A0 00 00 */	li r5, 0
/* 80B1969C  4B 63 A6 80 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B196A0  38 00 00 00 */	li r0, 0
/* 80B196A4  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B196A8  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B196AC  2C 00 00 03 */	cmpwi r0, 3
/* 80B196B0  40 82 00 10 */	bne lbl_80B196C0
/* 80B196B4  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B196B8  28 00 00 00 */	cmplwi r0, 0
/* 80B196BC  41 82 00 14 */	beq lbl_80B196D0
lbl_80B196C0:
/* 80B196C0  38 00 00 03 */	li r0, 3
/* 80B196C4  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B196C8  38 00 00 00 */	li r0, 0
/* 80B196CC  90 1A 12 08 */	stw r0, 0x1208(r26)
lbl_80B196D0:
/* 80B196D0  7F 43 D3 78 */	mr r3, r26
/* 80B196D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B196D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B196DC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B196E0  4B 50 10 30 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B196E4  7C 64 1B 78 */	mr r4, r3
/* 80B196E8  7F 43 D3 78 */	mr r3, r26
/* 80B196EC  4B 63 AB 64 */	b setAngle__8daNpcF_cFs
/* 80B196F0  48 00 00 C8 */	b lbl_80B197B8
lbl_80B196F4:
/* 80B196F4  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B196F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B196FC  40 82 00 10 */	bne lbl_80B1970C
/* 80B19700  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B19704  28 00 00 00 */	cmplwi r0, 0
/* 80B19708  41 82 00 B0 */	beq lbl_80B197B8
lbl_80B1970C:
/* 80B1970C  38 00 00 00 */	li r0, 0
/* 80B19710  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B19714  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B19718  48 00 00 A0 */	b lbl_80B197B8
lbl_80B1971C:
/* 80B1971C  38 00 00 00 */	li r0, 0
/* 80B19720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B19724  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B19728  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B1972C  4B 50 02 90 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B19730  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B19734  28 03 00 00 */	cmplwi r3, 0
/* 80B19738  41 82 00 08 */	beq lbl_80B19740
/* 80B1973C  4B FF 3C 40 */	b setActionFollow__10daNpcTkc_cFv
lbl_80B19740:
/* 80B19740  7F 43 D3 78 */	mr r3, r26
/* 80B19744  38 80 00 02 */	li r4, 2
/* 80B19748  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1974C  38 A0 00 00 */	li r5, 0
/* 80B19750  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19754  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B19758  7D 89 03 A6 */	mtctr r12
/* 80B1975C  4E 80 04 21 */	bctrl 
/* 80B19760  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80B19764  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B19768  48 00 00 50 */	b lbl_80B197B8
lbl_80B1976C:
/* 80B1976C  7F 43 D3 78 */	mr r3, r26
/* 80B19770  38 80 00 04 */	li r4, 4
/* 80B19774  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19778  38 A0 00 00 */	li r5, 0
/* 80B1977C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19780  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B19784  7D 89 03 A6 */	mtctr r12
/* 80B19788  4E 80 04 21 */	bctrl 
/* 80B1978C  7F 43 D3 78 */	mr r3, r26
/* 80B19790  38 80 16 EA */	li r4, 0x16ea
/* 80B19794  4B 63 AA BC */	b setAngle__8daNpcF_cFs
/* 80B19798  48 00 00 20 */	b lbl_80B197B8
lbl_80B1979C:
/* 80B1979C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B197A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B197A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B197A8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B197AC  4B 79 60 D8 */	b subBgmStop__8Z2SeqMgrFv
/* 80B197B0  7F 43 D3 78 */	mr r3, r26
/* 80B197B4  4B 50 04 C8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B197B8:
/* 80B197B8  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80B197BC  7F 43 D3 78 */	mr r3, r26
/* 80B197C0  38 81 00 18 */	addi r4, r1, 0x18
/* 80B197C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B197C8  7F 46 D3 78 */	mr r6, r26
/* 80B197CC  38 E0 00 01 */	li r7, 1
/* 80B197D0  4B 63 9F 48 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B197D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B197D8  41 82 00 44 */	beq lbl_80B1981C
/* 80B197DC  7F 43 D3 78 */	mr r3, r26
/* 80B197E0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B197E4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B197E8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B197EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B197F0  7D 89 03 A6 */	mtctr r12
/* 80B197F4  4E 80 04 21 */	bctrl 
/* 80B197F8  7F 43 D3 78 */	mr r3, r26
/* 80B197FC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B19800  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19804  38 A0 00 00 */	li r5, 0
/* 80B19808  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1980C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B19810  7D 89 03 A6 */	mtctr r12
/* 80B19814  4E 80 04 21 */	bctrl 
/* 80B19818  48 00 00 34 */	b lbl_80B1984C
lbl_80B1981C:
/* 80B1981C  2C 19 00 00 */	cmpwi r25, 0
/* 80B19820  41 82 00 2C */	beq lbl_80B1984C
/* 80B19824  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B19828  2C 00 00 00 */	cmpwi r0, 0
/* 80B1982C  40 82 00 20 */	bne lbl_80B1984C
/* 80B19830  7F 43 D3 78 */	mr r3, r26
/* 80B19834  38 80 00 01 */	li r4, 1
/* 80B19838  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1983C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19840  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B19844  7D 89 03 A6 */	mtctr r12
/* 80B19848  4E 80 04 21 */	bctrl 
lbl_80B1984C:
/* 80B1984C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B19850  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303035@ha */
/* 80B19854  38 03 30 35 */	addi r0, r3, 0x3035 /* 0x30303035@l */
/* 80B19858  7C 04 00 00 */	cmpw r4, r0
/* 80B1985C  41 82 04 F8 */	beq lbl_80B19D54
/* 80B19860  40 80 00 34 */	bge lbl_80B19894
/* 80B19864  38 03 30 32 */	addi r0, r3, 0x3032
/* 80B19868  7C 04 00 00 */	cmpw r4, r0
/* 80B1986C  41 82 00 80 */	beq lbl_80B198EC
/* 80B19870  40 80 00 14 */	bge lbl_80B19884
/* 80B19874  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B19878  7C 04 00 00 */	cmpw r4, r0
/* 80B1987C  40 80 00 44 */	bge lbl_80B198C0
/* 80B19880  48 00 04 D4 */	b lbl_80B19D54
lbl_80B19884:
/* 80B19884  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B19888  7C 04 00 00 */	cmpw r4, r0
/* 80B1988C  40 80 03 88 */	bge lbl_80B19C14
/* 80B19890  48 00 01 E8 */	b lbl_80B19A78
lbl_80B19894:
/* 80B19894  38 03 31 30 */	addi r0, r3, 0x3130
/* 80B19898  7C 04 00 00 */	cmpw r4, r0
/* 80B1989C  40 80 00 14 */	bge lbl_80B198B0
/* 80B198A0  38 03 30 3A */	addi r0, r3, 0x303a
/* 80B198A4  7C 04 00 00 */	cmpw r4, r0
/* 80B198A8  40 80 04 AC */	bge lbl_80B19D54
/* 80B198AC  48 00 00 14 */	b lbl_80B198C0
lbl_80B198B0:
/* 80B198B0  38 03 31 32 */	addi r0, r3, 0x3132
/* 80B198B4  7C 04 00 00 */	cmpw r4, r0
/* 80B198B8  40 80 04 9C */	bge lbl_80B19D54
/* 80B198BC  48 00 04 8C */	b lbl_80B19D48
lbl_80B198C0:
/* 80B198C0  7F 43 D3 78 */	mr r3, r26
/* 80B198C4  38 80 00 00 */	li r4, 0
/* 80B198C8  38 A0 00 01 */	li r5, 1
/* 80B198CC  38 C0 00 00 */	li r6, 0
/* 80B198D0  4B 63 A4 B4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B198D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B198D8  41 82 04 7C */	beq lbl_80B19D54
/* 80B198DC  7F 63 DB 78 */	mr r3, r27
/* 80B198E0  7F 84 E3 78 */	mr r4, r28
/* 80B198E4  4B 52 E8 98 */	b cutEnd__16dEvent_manager_cFi
/* 80B198E8  48 00 04 6C */	b lbl_80B19D54
lbl_80B198EC:
/* 80B198EC  7F 63 DB 78 */	mr r3, r27
/* 80B198F0  7F 84 E3 78 */	mr r4, r28
/* 80B198F4  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B198F8  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B198FC  38 A5 00 73 */	addi r5, r5, 0x73
/* 80B19900  38 C0 00 01 */	li r6, 1
/* 80B19904  4B 52 E7 E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B19908  7C 64 1B 79 */	or. r4, r3, r3
/* 80B1990C  41 82 04 48 */	beq lbl_80B19D54
/* 80B19910  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B19914  4B 75 72 F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B19918  7C 7F 1B 78 */	mr r31, r3
/* 80B1991C  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B19920  2C 00 00 00 */	cmpwi r0, 0
/* 80B19924  40 82 00 D4 */	bne lbl_80B199F8
/* 80B19928  C0 5D 01 E0 */	lfs f2, 0x1e0(r29)
/* 80B1992C  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B19930  7C 00 F8 50 */	subf r0, r0, r31
/* 80B19934  7C 00 07 34 */	extsh r0, r0
/* 80B19938  C8 3D 01 E8 */	lfd f1, 0x1e8(r29)
/* 80B1993C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B19940  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B19944  3C 00 43 30 */	lis r0, 0x4330
/* 80B19948  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1994C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B19950  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B19954  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B19958  FC 00 02 10 */	fabs f0, f0
/* 80B1995C  FC 00 00 18 */	frsp f0, f0
/* 80B19960  FC 00 00 1E */	fctiwz f0, f0
/* 80B19964  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B19968  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B1996C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B19970  40 81 00 40 */	ble lbl_80B199B0
/* 80B19974  7F 43 D3 78 */	mr r3, r26
/* 80B19978  38 80 00 01 */	li r4, 1
/* 80B1997C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19980  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19984  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B19988  7D 89 03 A6 */	mtctr r12
/* 80B1998C  4E 80 04 21 */	bctrl 
/* 80B19990  7F 43 D3 78 */	mr r3, r26
/* 80B19994  38 80 00 07 */	li r4, 7
/* 80B19998  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1999C  38 A0 00 00 */	li r5, 0
/* 80B199A0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B199A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B199A8  7D 89 03 A6 */	mtctr r12
/* 80B199AC  4E 80 04 21 */	bctrl 
lbl_80B199B0:
/* 80B199B0  B3 FA 09 96 */	sth r31, 0x996(r26)
/* 80B199B4  38 00 00 00 */	li r0, 0
/* 80B199B8  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B199BC  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B199C0  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B199C4  7C 03 00 00 */	cmpw r3, r0
/* 80B199C8  40 82 00 10 */	bne lbl_80B199D8
/* 80B199CC  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B199D0  38 03 00 01 */	addi r0, r3, 1
/* 80B199D4  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B199D8:
/* 80B199D8  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B199DC  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B199E0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B199E4  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B199E8  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B199EC  38 03 00 01 */	addi r0, r3, 1
/* 80B199F0  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B199F4  48 00 00 60 */	b lbl_80B19A54
lbl_80B199F8:
/* 80B199F8  2C 00 00 01 */	cmpwi r0, 1
/* 80B199FC  40 82 00 58 */	bne lbl_80B19A54
/* 80B19A00  7F 43 D3 78 */	mr r3, r26
/* 80B19A04  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B19A08  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B19A0C  38 A0 00 00 */	li r5, 0
/* 80B19A10  4B 63 A4 E4 */	b turn__8daNpcF_cFsfi
/* 80B19A14  2C 03 00 00 */	cmpwi r3, 0
/* 80B19A18  41 82 00 2C */	beq lbl_80B19A44
/* 80B19A1C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B19A20  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B19A24  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B19A28  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B19A2C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B19A30  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B19A34  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B19A38  38 03 00 01 */	addi r0, r3, 1
/* 80B19A3C  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B19A40  48 00 00 14 */	b lbl_80B19A54
lbl_80B19A44:
/* 80B19A44  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B19A48  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B19A4C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B19A50  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B19A54:
/* 80B19A54  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B19A58  2C 00 00 01 */	cmpwi r0, 1
/* 80B19A5C  40 81 02 F8 */	ble lbl_80B19D54
/* 80B19A60  38 00 00 00 */	li r0, 0
/* 80B19A64  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B19A68  7F 63 DB 78 */	mr r3, r27
/* 80B19A6C  7F 84 E3 78 */	mr r4, r28
/* 80B19A70  4B 52 E7 0C */	b cutEnd__16dEvent_manager_cFi
/* 80B19A74  48 00 02 E0 */	b lbl_80B19D54
lbl_80B19A78:
/* 80B19A78  7F 63 DB 78 */	mr r3, r27
/* 80B19A7C  7F 84 E3 78 */	mr r4, r28
/* 80B19A80  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B19A84  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B19A88  38 A5 00 73 */	addi r5, r5, 0x73
/* 80B19A8C  38 C0 00 01 */	li r6, 1
/* 80B19A90  4B 52 E6 5C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B19A94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B19A98  41 82 01 50 */	beq lbl_80B19BE8
/* 80B19A9C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B19AA0  7F E4 FB 78 */	mr r4, r31
/* 80B19AA4  4B 82 D8 F8 */	b PSVECSquareDistance
/* 80B19AA8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B19AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19AB0  40 81 00 58 */	ble lbl_80B19B08
/* 80B19AB4  FC 00 08 34 */	frsqrte f0, f1
/* 80B19AB8  C8 9D 02 18 */	lfd f4, 0x218(r29)
/* 80B19ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B19AC0  C8 7D 02 20 */	lfd f3, 0x220(r29)
/* 80B19AC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B19AC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B19ACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B19AD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B19AD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B19AD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B19ADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B19AE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B19AE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B19AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B19AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B19AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B19AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B19AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B19AFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B19B00  FC 20 08 18 */	frsp f1, f1
/* 80B19B04  48 00 00 88 */	b lbl_80B19B8C
lbl_80B19B08:
/* 80B19B08  C8 1D 02 28 */	lfd f0, 0x228(r29)
/* 80B19B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19B10  40 80 00 10 */	bge lbl_80B19B20
/* 80B19B14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B19B18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B19B1C  48 00 00 70 */	b lbl_80B19B8C
lbl_80B19B20:
/* 80B19B20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B19B24  80 81 00 08 */	lwz r4, 8(r1)
/* 80B19B28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B19B2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B19B30  7C 03 00 00 */	cmpw r3, r0
/* 80B19B34  41 82 00 14 */	beq lbl_80B19B48
/* 80B19B38  40 80 00 40 */	bge lbl_80B19B78
/* 80B19B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B19B40  41 82 00 20 */	beq lbl_80B19B60
/* 80B19B44  48 00 00 34 */	b lbl_80B19B78
lbl_80B19B48:
/* 80B19B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B19B4C  41 82 00 0C */	beq lbl_80B19B58
/* 80B19B50  38 00 00 01 */	li r0, 1
/* 80B19B54  48 00 00 28 */	b lbl_80B19B7C
lbl_80B19B58:
/* 80B19B58  38 00 00 02 */	li r0, 2
/* 80B19B5C  48 00 00 20 */	b lbl_80B19B7C
lbl_80B19B60:
/* 80B19B60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B19B64  41 82 00 0C */	beq lbl_80B19B70
/* 80B19B68  38 00 00 05 */	li r0, 5
/* 80B19B6C  48 00 00 10 */	b lbl_80B19B7C
lbl_80B19B70:
/* 80B19B70  38 00 00 03 */	li r0, 3
/* 80B19B74  48 00 00 08 */	b lbl_80B19B7C
lbl_80B19B78:
/* 80B19B78  38 00 00 04 */	li r0, 4
lbl_80B19B7C:
/* 80B19B7C  2C 00 00 01 */	cmpwi r0, 1
/* 80B19B80  40 82 00 0C */	bne lbl_80B19B8C
/* 80B19B84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B19B88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B19B8C:
/* 80B19B8C  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80B19B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19B94  4C 40 13 82 */	cror 2, 0, 2
/* 80B19B98  40 82 00 50 */	bne lbl_80B19BE8
/* 80B19B9C  7F 43 D3 78 */	mr r3, r26
/* 80B19BA0  38 80 00 00 */	li r4, 0
/* 80B19BA4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19BA8  38 A0 00 00 */	li r5, 0
/* 80B19BAC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19BB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B19BB4  7D 89 03 A6 */	mtctr r12
/* 80B19BB8  4E 80 04 21 */	bctrl 
/* 80B19BBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B19BC0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B19BC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B19BC8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B19BCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B19BD0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B19BD4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B19BD8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B19BDC  7F 63 DB 78 */	mr r3, r27
/* 80B19BE0  7F 84 E3 78 */	mr r4, r28
/* 80B19BE4  4B 52 E5 98 */	b cutEnd__16dEvent_manager_cFi
lbl_80B19BE8:
/* 80B19BE8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050030@ha */
/* 80B19BEC  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00050030@l */
/* 80B19BF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B19BF4  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B19BF8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B19BFC  38 A0 FF FF */	li r5, -1
/* 80B19C00  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B19C04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B19C08  7D 89 03 A6 */	mtctr r12
/* 80B19C0C  4E 80 04 21 */	bctrl 
/* 80B19C10  48 00 01 44 */	b lbl_80B19D54
lbl_80B19C14:
/* 80B19C14  7F 63 DB 78 */	mr r3, r27
/* 80B19C18  7F 84 E3 78 */	mr r4, r28
/* 80B19C1C  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B19C20  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B19C24  38 A5 00 73 */	addi r5, r5, 0x73
/* 80B19C28  38 C0 00 01 */	li r6, 1
/* 80B19C2C  4B 52 E4 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B19C30  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 80B19C34  2C 00 00 04 */	cmpwi r0, 4
/* 80B19C38  40 82 00 B4 */	bne lbl_80B19CEC
/* 80B19C3C  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B19C40  2C 00 00 00 */	cmpwi r0, 0
/* 80B19C44  40 82 00 5C */	bne lbl_80B19CA0
/* 80B19C48  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B19C4C  38 63 00 0C */	addi r3, r3, 0xc
/* 80B19C50  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B19C54  4B 80 E7 D8 */	b checkPass__12J3DFrameCtrlFf
/* 80B19C58  2C 03 00 00 */	cmpwi r3, 0
/* 80B19C5C  41 82 00 44 */	beq lbl_80B19CA0
/* 80B19C60  C0 1D 01 E4 */	lfs f0, 0x1e4(r29)
/* 80B19C64  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B19C68  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80B19C6C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B19C70  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B19C74  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B19C78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B19C7C  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B19C80  38 81 00 0C */	addi r4, r1, 0xc
/* 80B19C84  38 A0 00 00 */	li r5, 0
/* 80B19C88  38 C0 FF FF */	li r6, -1
/* 80B19C8C  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B19C90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B19C94  7D 89 03 A6 */	mtctr r12
/* 80B19C98  4E 80 04 21 */	bctrl 
/* 80B19C9C  48 00 00 B8 */	b lbl_80B19D54
lbl_80B19CA0:
/* 80B19CA0  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80B19CA4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B19CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B19CAC  40 81 00 A8 */	ble lbl_80B19D54
/* 80B19CB0  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B19CB4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80B19CB8  41 82 00 9C */	beq lbl_80B19D54
/* 80B19CBC  7F 43 D3 78 */	mr r3, r26
/* 80B19CC0  38 80 00 05 */	li r4, 5
/* 80B19CC4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19CC8  38 A0 00 00 */	li r5, 0
/* 80B19CCC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19CD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B19CD4  7D 89 03 A6 */	mtctr r12
/* 80B19CD8  4E 80 04 21 */	bctrl 
/* 80B19CDC  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B19CE0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B19CE4  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B19CE8  48 00 00 6C */	b lbl_80B19D54
lbl_80B19CEC:
/* 80B19CEC  2C 00 00 05 */	cmpwi r0, 5
/* 80B19CF0  40 82 00 64 */	bne lbl_80B19D54
/* 80B19CF4  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B19CF8  38 80 00 01 */	li r4, 1
/* 80B19CFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B19D00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B19D04  40 82 00 18 */	bne lbl_80B19D1C
/* 80B19D08  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B19D0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B19D10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B19D14  41 82 00 08 */	beq lbl_80B19D1C
/* 80B19D18  38 80 00 00 */	li r4, 0
lbl_80B19D1C:
/* 80B19D1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B19D20  41 82 00 34 */	beq lbl_80B19D54
/* 80B19D24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B19D28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B19D2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B19D30  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B19D34  4B 79 5B 50 */	b subBgmStop__8Z2SeqMgrFv
/* 80B19D38  7F 63 DB 78 */	mr r3, r27
/* 80B19D3C  7F 84 E3 78 */	mr r4, r28
/* 80B19D40  4B 52 E4 3C */	b cutEnd__16dEvent_manager_cFi
/* 80B19D44  48 00 00 10 */	b lbl_80B19D54
lbl_80B19D48:
/* 80B19D48  7F 63 DB 78 */	mr r3, r27
/* 80B19D4C  7F 84 E3 78 */	mr r4, r28
/* 80B19D50  4B 52 E4 2C */	b cutEnd__16dEvent_manager_cFi
lbl_80B19D54:
/* 80B19D54  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B19D58  28 00 00 02 */	cmplwi r0, 2
/* 80B19D5C  40 82 00 38 */	bne lbl_80B19D94
/* 80B19D60  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B19D64  2C 04 FF FF */	cmpwi r4, -1
/* 80B19D68  41 82 00 2C */	beq lbl_80B19D94
/* 80B19D6C  7F 63 DB 78 */	mr r3, r27
/* 80B19D70  4B 52 DD 08 */	b endCheck__16dEvent_manager_cFs
/* 80B19D74  2C 03 00 00 */	cmpwi r3, 0
/* 80B19D78  41 82 00 1C */	beq lbl_80B19D94
/* 80B19D7C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B19D80  4B 52 86 E8 */	b reset__14dEvt_control_cFv
/* 80B19D84  7F 43 D3 78 */	mr r3, r26
/* 80B19D88  4B 4F FE F4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B19D8C  38 00 FF FF */	li r0, -1
/* 80B19D90  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
lbl_80B19D94:
/* 80B19D94  39 61 00 50 */	addi r11, r1, 0x50
/* 80B19D98  4B 84 84 80 */	b _restgpr_25
/* 80B19D9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B19DA0  7C 08 03 A6 */	mtlr r0
/* 80B19DA4  38 21 00 50 */	addi r1, r1, 0x50
/* 80B19DA8  4E 80 00 20 */	blr 
