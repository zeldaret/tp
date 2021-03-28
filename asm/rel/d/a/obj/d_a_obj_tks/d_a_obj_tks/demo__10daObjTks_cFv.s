lbl_80D10A80:
/* 80D10A80  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D10A84  7C 08 02 A6 */	mflr r0
/* 80D10A88  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D10A8C  39 61 00 70 */	addi r11, r1, 0x70
/* 80D10A90  4B 65 17 40 */	b _savegpr_26
/* 80D10A94  7C 7A 1B 78 */	mr r26, r3
/* 80D10A98  3C 60 80 D1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80D10A9C  3B A3 28 F0 */	addi r29, r3, cNullVec__6Z2Calc@l
/* 80D10AA0  3C 60 80 D1 */	lis r3, m__16daObjTks_Param_c@ha
/* 80D10AA4  3B C3 27 3C */	addi r30, r3, m__16daObjTks_Param_c@l
/* 80D10AA8  A0 1A 0D DE */	lhz r0, 0xdde(r26)
/* 80D10AAC  2C 00 00 02 */	cmpwi r0, 2
/* 80D10AB0  41 82 00 FC */	beq lbl_80D10BAC
/* 80D10AB4  40 80 00 10 */	bge lbl_80D10AC4
/* 80D10AB8  2C 00 00 00 */	cmpwi r0, 0
/* 80D10ABC  41 82 00 14 */	beq lbl_80D10AD0
/* 80D10AC0  48 00 06 2C */	b lbl_80D110EC
lbl_80D10AC4:
/* 80D10AC4  2C 00 00 04 */	cmpwi r0, 4
/* 80D10AC8  40 80 06 24 */	bge lbl_80D110EC
/* 80D10ACC  48 00 05 F4 */	b lbl_80D110C0
lbl_80D10AD0:
/* 80D10AD0  28 1A 00 00 */	cmplwi r26, 0
/* 80D10AD4  41 82 00 0C */	beq lbl_80D10AE0
/* 80D10AD8  83 7A 00 04 */	lwz r27, 4(r26)
/* 80D10ADC  48 00 00 08 */	b lbl_80D10AE4
lbl_80D10AE0:
/* 80D10AE0  3B 60 FF FF */	li r27, -1
lbl_80D10AE4:
/* 80D10AE4  4B 47 0B 5C */	b dCam_getBody__Fv
/* 80D10AE8  7F 64 DB 78 */	mr r4, r27
/* 80D10AEC  4B 37 80 D0 */	b EndEventCamera__9dCamera_cFi
/* 80D10AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D10AF4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80D10AF8  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D10AFC  7F 44 D3 78 */	mr r4, r26
/* 80D10B00  4B 33 1A 18 */	b reset__14dEvt_control_cFPv
/* 80D10B04  80 1D 00 64 */	lwz r0, 0x64(r29)
/* 80D10B08  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80D10B0C  3B 7B 4F F8 */	addi r27, r27, 0x4ff8
/* 80D10B10  7F 63 DB 78 */	mr r3, r27
/* 80D10B14  80 9A 01 00 */	lwz r4, 0x100(r26)
/* 80D10B18  4B 33 5C E8 */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D10B1C  7F 63 DB 78 */	mr r3, r27
/* 80D10B20  7F 44 D3 78 */	mr r4, r26
/* 80D10B24  3C A0 80 D1 */	lis r5, struct_80D128C8+0x0@ha
/* 80D10B28  38 A5 28 C8 */	addi r5, r5, struct_80D128C8+0x0@l
/* 80D10B2C  38 A5 00 11 */	addi r5, r5, 0x11
/* 80D10B30  38 C0 00 FF */	li r6, 0xff
/* 80D10B34  4B 33 6C 24 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D10B38  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80D10B3C  7F 43 D3 78 */	mr r3, r26
/* 80D10B40  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80D10B44  38 A0 00 01 */	li r5, 1
/* 80D10B48  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D10B4C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D10B50  4B 30 AA 94 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D10B54  7F 43 D3 78 */	mr r3, r26
/* 80D10B58  38 80 00 01 */	li r4, 1
/* 80D10B5C  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10B60  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10B64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10B68  7D 89 03 A6 */	mtctr r12
/* 80D10B6C  4E 80 04 21 */	bctrl 
/* 80D10B70  7F 43 D3 78 */	mr r3, r26
/* 80D10B74  38 80 00 02 */	li r4, 2
/* 80D10B78  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80D10B7C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10B80  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80D10B84  7D 89 03 A6 */	mtctr r12
/* 80D10B88  4E 80 04 21 */	bctrl 
/* 80D10B8C  A8 1A 0D DC */	lha r0, 0xddc(r26)
/* 80D10B90  2C 00 00 02 */	cmpwi r0, 2
/* 80D10B94  41 82 00 0C */	beq lbl_80D10BA0
/* 80D10B98  38 00 00 02 */	li r0, 2
/* 80D10B9C  B0 1A 0D DC */	sth r0, 0xddc(r26)
lbl_80D10BA0:
/* 80D10BA0  38 00 00 02 */	li r0, 2
/* 80D10BA4  B0 1A 0D DE */	sth r0, 0xdde(r26)
/* 80D10BA8  48 00 05 44 */	b lbl_80D110EC
lbl_80D10BAC:
/* 80D10BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D10BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D10BB4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D10BB8  28 00 00 00 */	cmplwi r0, 0
/* 80D10BBC  41 82 05 30 */	beq lbl_80D110EC
/* 80D10BC0  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80D10BC4  28 00 00 01 */	cmplwi r0, 1
/* 80D10BC8  41 82 05 24 */	beq lbl_80D110EC
/* 80D10BCC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80D10BD0  7F 83 E3 78 */	mr r3, r28
/* 80D10BD4  80 9D 00 68 */	lwz r4, 0x68(r29)
/* 80D10BD8  38 A0 00 00 */	li r5, 0
/* 80D10BDC  38 C0 00 00 */	li r6, 0
/* 80D10BE0  4B 33 6F 3C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D10BE4  7C 7B 1B 78 */	mr r27, r3
/* 80D10BE8  2C 1B FF FF */	cmpwi r27, -1
/* 80D10BEC  41 82 05 00 */	beq lbl_80D110EC
/* 80D10BF0  7F 83 E3 78 */	mr r3, r28
/* 80D10BF4  7F 64 DB 78 */	mr r4, r27
/* 80D10BF8  4B 33 73 64 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D10BFC  7C 7F 1B 78 */	mr r31, r3
/* 80D10C00  7F 83 E3 78 */	mr r3, r28
/* 80D10C04  7F 64 DB 78 */	mr r4, r27
/* 80D10C08  4B 33 71 44 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D10C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D10C10  41 82 00 F8 */	beq lbl_80D10D08
/* 80D10C14  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D10C18  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D10C1C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D10C20  7C 04 00 00 */	cmpw r4, r0
/* 80D10C24  41 82 00 38 */	beq lbl_80D10C5C
/* 80D10C28  40 80 00 14 */	bge lbl_80D10C3C
/* 80D10C2C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D10C30  7C 04 00 00 */	cmpw r4, r0
/* 80D10C34  40 80 00 14 */	bge lbl_80D10C48
/* 80D10C38  48 00 00 D0 */	b lbl_80D10D08
lbl_80D10C3C:
/* 80D10C3C  38 03 30 37 */	addi r0, r3, 0x3037
/* 80D10C40  7C 04 00 00 */	cmpw r4, r0
/* 80D10C44  40 80 00 C4 */	bge lbl_80D10D08
lbl_80D10C48:
/* 80D10C48  7F 43 D3 78 */	mr r3, r26
/* 80D10C4C  38 80 00 02 */	li r4, 2
/* 80D10C50  38 A0 00 00 */	li r5, 0
/* 80D10C54  4B 44 30 C8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80D10C58  48 00 00 B0 */	b lbl_80D10D08
lbl_80D10C5C:
/* 80D10C5C  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D10C60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D10C64  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D10C68  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80D10C6C  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80D10C70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D10C74  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80D10C78  EC 01 00 2A */	fadds f0, f1, f0
/* 80D10C7C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80D10C80  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80D10C84  7C 07 07 74 */	extsb r7, r0
/* 80D10C88  38 00 00 00 */	li r0, 0
/* 80D10C8C  90 01 00 08 */	stw r0, 8(r1)
/* 80D10C90  38 60 02 76 */	li r3, 0x276
/* 80D10C94  28 1A 00 00 */	cmplwi r26, 0
/* 80D10C98  41 82 00 0C */	beq lbl_80D10CA4
/* 80D10C9C  80 9A 00 04 */	lwz r4, 4(r26)
/* 80D10CA0  48 00 00 08 */	b lbl_80D10CA8
lbl_80D10CA4:
/* 80D10CA4  38 80 FF FF */	li r4, -1
lbl_80D10CA8:
/* 80D10CA8  38 A0 00 00 */	li r5, 0
/* 80D10CAC  38 C1 00 44 */	addi r6, r1, 0x44
/* 80D10CB0  39 1A 08 F0 */	addi r8, r26, 0x8f0
/* 80D10CB4  39 20 00 00 */	li r9, 0
/* 80D10CB8  39 40 FF FF */	li r10, -1
/* 80D10CBC  4B 30 92 34 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D10CC0  90 7A 04 A4 */	stw r3, 0x4a4(r26)
/* 80D10CC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D10CC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D10CCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D10CD0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80D10CD4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 80D10CD8  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 80D10CDC  4B 59 E7 C0 */	b subBgmStart__8Z2SeqMgrFUl
/* 80D10CE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D10CE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D10CE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D10CEC  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80D10CF0  D0 03 04 44 */	stfs f0, 0x444(r3)
/* 80D10CF4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80D10CF8  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80D10CFC  38 00 00 00 */	li r0, 0
/* 80D10D00  90 03 04 50 */	stw r0, 0x450(r3)
/* 80D10D04  D0 03 04 4C */	stfs f0, 0x44c(r3)
lbl_80D10D08:
/* 80D10D08  80 9F 00 00 */	lwz r4, 0(r31)
/* 80D10D0C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D10D10  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D10D14  7C 04 00 00 */	cmpw r4, r0
/* 80D10D18  41 82 02 F0 */	beq lbl_80D11008
/* 80D10D1C  40 80 00 14 */	bge lbl_80D10D30
/* 80D10D20  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D10D24  7C 04 00 00 */	cmpw r4, r0
/* 80D10D28  40 80 00 18 */	bge lbl_80D10D40
/* 80D10D2C  48 00 02 E8 */	b lbl_80D11014
lbl_80D10D30:
/* 80D10D30  38 03 30 36 */	addi r0, r3, 0x3036
/* 80D10D34  7C 04 00 00 */	cmpw r4, r0
/* 80D10D38  41 82 01 8C */	beq lbl_80D10EC4
/* 80D10D3C  40 80 02 D8 */	bge lbl_80D11014
lbl_80D10D40:
/* 80D10D40  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 80D10D44  80 1E 01 50 */	lwz r0, 0x150(r30)
/* 80D10D48  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D10D4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D10D50  93 41 00 24 */	stw r26, 0x24(r1)
/* 80D10D54  80 1A 04 A4 */	lwz r0, 0x4a4(r26)
/* 80D10D58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D10D5C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D10D60  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D10D64  38 81 00 10 */	addi r4, r1, 0x10
/* 80D10D68  4B 30 8A 90 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D10D6C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80D10D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D10D74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D10D78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D10D7C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80D10D80  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80D10D84  38 00 00 00 */	li r0, 0
/* 80D10D88  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80D10D8C  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80D10D90  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80D10D94  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80D10D98  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80D10D9C  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80D10DA0  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80D10DA4  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80D10DA8  7F 43 D3 78 */	mr r3, r26
/* 80D10DAC  38 80 00 00 */	li r4, 0
/* 80D10DB0  38 A0 00 01 */	li r5, 1
/* 80D10DB4  38 C1 00 24 */	addi r6, r1, 0x24
/* 80D10DB8  4B 44 2F CC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80D10DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D10DC0  41 82 00 6C */	beq lbl_80D10E2C
/* 80D10DC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80D10DC8  3C 03 CF D0 */	addis r0, r3, 0xcfd0
/* 80D10DCC  28 00 30 31 */	cmplwi r0, 0x3031
/* 80D10DD0  40 82 00 4C */	bne lbl_80D10E1C
/* 80D10DD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D10DD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D10DDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D10DE0  C0 03 04 44 */	lfs f0, 0x444(r3)
/* 80D10DE4  38 00 00 8C */	li r0, 0x8c
/* 80D10DE8  90 03 04 50 */	stw r0, 0x450(r3)
/* 80D10DEC  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 80D10DF0  EC 43 00 28 */	fsubs f2, f3, f0
/* 80D10DF4  80 03 04 50 */	lwz r0, 0x450(r3)
/* 80D10DF8  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 80D10DFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D10E00  3C 00 43 30 */	lis r0, 0x4330
/* 80D10E04  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D10E08  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80D10E0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D10E10  EC 02 00 24 */	fdivs f0, f2, f0
/* 80D10E14  D0 03 04 48 */	stfs f0, 0x448(r3)
/* 80D10E18  D0 63 04 4C */	stfs f3, 0x44c(r3)
lbl_80D10E1C:
/* 80D10E1C  7F 83 E3 78 */	mr r3, r28
/* 80D10E20  7F 64 DB 78 */	mr r4, r27
/* 80D10E24  4B 33 73 58 */	b cutEnd__16dEvent_manager_cFi
/* 80D10E28  48 00 01 EC */	b lbl_80D11014
lbl_80D10E2C:
/* 80D10E2C  83 7A 09 50 */	lwz r27, 0x950(r26)
/* 80D10E30  7F 43 D3 78 */	mr r3, r26
/* 80D10E34  38 81 00 20 */	addi r4, r1, 0x20
/* 80D10E38  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80D10E3C  7F 46 D3 78 */	mr r6, r26
/* 80D10E40  38 E0 00 00 */	li r7, 0
/* 80D10E44  4B 44 28 D4 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80D10E48  2C 03 00 00 */	cmpwi r3, 0
/* 80D10E4C  41 82 00 44 */	beq lbl_80D10E90
/* 80D10E50  7F 43 D3 78 */	mr r3, r26
/* 80D10E54  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D10E58  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10E5C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10E60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10E64  7D 89 03 A6 */	mtctr r12
/* 80D10E68  4E 80 04 21 */	bctrl 
/* 80D10E6C  7F 43 D3 78 */	mr r3, r26
/* 80D10E70  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80D10E74  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10E78  38 A0 00 00 */	li r5, 0
/* 80D10E7C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10E80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D10E84  7D 89 03 A6 */	mtctr r12
/* 80D10E88  4E 80 04 21 */	bctrl 
/* 80D10E8C  48 00 01 88 */	b lbl_80D11014
lbl_80D10E90:
/* 80D10E90  2C 1B 00 00 */	cmpwi r27, 0
/* 80D10E94  41 82 01 80 */	beq lbl_80D11014
/* 80D10E98  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80D10E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80D10EA0  40 82 01 74 */	bne lbl_80D11014
/* 80D10EA4  7F 43 D3 78 */	mr r3, r26
/* 80D10EA8  38 80 00 01 */	li r4, 1
/* 80D10EAC  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10EB0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10EB4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10EB8  7D 89 03 A6 */	mtctr r12
/* 80D10EBC  4E 80 04 21 */	bctrl 
/* 80D10EC0  48 00 01 54 */	b lbl_80D11014
lbl_80D10EC4:
/* 80D10EC4  7F 43 D3 78 */	mr r3, r26
/* 80D10EC8  38 80 00 00 */	li r4, 0
/* 80D10ECC  38 A0 00 01 */	li r5, 1
/* 80D10ED0  38 C0 00 00 */	li r6, 0
/* 80D10ED4  4B 44 2E B0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80D10ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80D10EDC  41 82 00 94 */	beq lbl_80D10F70
/* 80D10EE0  80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 80D10EE4  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80D10EE8  90 61 00 38 */	stw r3, 0x38(r1)
/* 80D10EEC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80D10EF0  80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 80D10EF4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D10EF8  38 00 00 03 */	li r0, 3
/* 80D10EFC  B0 1A 0D DE */	sth r0, 0xdde(r26)
/* 80D10F00  38 7A 0D B8 */	addi r3, r26, 0xdb8
/* 80D10F04  4B 65 11 14 */	b __ptmf_test
/* 80D10F08  2C 03 00 00 */	cmpwi r3, 0
/* 80D10F0C  41 82 00 14 */	beq lbl_80D10F20
/* 80D10F10  7F 43 D3 78 */	mr r3, r26
/* 80D10F14  39 9A 0D B8 */	addi r12, r26, 0xdb8
/* 80D10F18  4B 65 11 6C */	b __ptmf_scall
/* 80D10F1C  60 00 00 00 */	nop 
lbl_80D10F20:
/* 80D10F20  38 00 00 00 */	li r0, 0
/* 80D10F24  B0 1A 0D DE */	sth r0, 0xdde(r26)
/* 80D10F28  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80D10F2C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80D10F30  90 7A 0D B8 */	stw r3, 0xdb8(r26)
/* 80D10F34  90 1A 0D BC */	stw r0, 0xdbc(r26)
/* 80D10F38  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80D10F3C  90 1A 0D C0 */	stw r0, 0xdc0(r26)
/* 80D10F40  38 7A 0D B8 */	addi r3, r26, 0xdb8
/* 80D10F44  4B 65 10 D4 */	b __ptmf_test
/* 80D10F48  2C 03 00 00 */	cmpwi r3, 0
/* 80D10F4C  41 82 00 14 */	beq lbl_80D10F60
/* 80D10F50  7F 43 D3 78 */	mr r3, r26
/* 80D10F54  39 9A 0D B8 */	addi r12, r26, 0xdb8
/* 80D10F58  4B 65 11 2C */	b __ptmf_scall
/* 80D10F5C  60 00 00 00 */	nop 
lbl_80D10F60:
/* 80D10F60  7F 83 E3 78 */	mr r3, r28
/* 80D10F64  7F 64 DB 78 */	mr r4, r27
/* 80D10F68  4B 33 72 14 */	b cutEnd__16dEvent_manager_cFi
/* 80D10F6C  48 00 00 A8 */	b lbl_80D11014
lbl_80D10F70:
/* 80D10F70  83 7A 09 50 */	lwz r27, 0x950(r26)
/* 80D10F74  7F 43 D3 78 */	mr r3, r26
/* 80D10F78  38 81 00 18 */	addi r4, r1, 0x18
/* 80D10F7C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D10F80  7F 46 D3 78 */	mr r6, r26
/* 80D10F84  38 E0 00 00 */	li r7, 0
/* 80D10F88  4B 44 27 90 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80D10F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D10F90  41 82 00 44 */	beq lbl_80D10FD4
/* 80D10F94  7F 43 D3 78 */	mr r3, r26
/* 80D10F98  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80D10F9C  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10FA0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10FA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10FA8  7D 89 03 A6 */	mtctr r12
/* 80D10FAC  4E 80 04 21 */	bctrl 
/* 80D10FB0  7F 43 D3 78 */	mr r3, r26
/* 80D10FB4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D10FB8  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10FBC  38 A0 00 00 */	li r5, 0
/* 80D10FC0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10FC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D10FC8  7D 89 03 A6 */	mtctr r12
/* 80D10FCC  4E 80 04 21 */	bctrl 
/* 80D10FD0  48 00 00 44 */	b lbl_80D11014
lbl_80D10FD4:
/* 80D10FD4  2C 1B 00 00 */	cmpwi r27, 0
/* 80D10FD8  41 82 00 3C */	beq lbl_80D11014
/* 80D10FDC  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80D10FE0  2C 00 00 00 */	cmpwi r0, 0
/* 80D10FE4  40 82 00 30 */	bne lbl_80D11014
/* 80D10FE8  7F 43 D3 78 */	mr r3, r26
/* 80D10FEC  38 80 00 01 */	li r4, 1
/* 80D10FF0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80D10FF4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80D10FF8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10FFC  7D 89 03 A6 */	mtctr r12
/* 80D11000  4E 80 04 21 */	bctrl 
/* 80D11004  48 00 00 10 */	b lbl_80D11014
lbl_80D11008:
/* 80D11008  7F 83 E3 78 */	mr r3, r28
/* 80D1100C  7F 64 DB 78 */	mr r4, r27
/* 80D11010  4B 33 71 6C */	b cutEnd__16dEvent_manager_cFi
lbl_80D11014:
/* 80D11014  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80D11018  28 00 00 02 */	cmplwi r0, 2
/* 80D1101C  40 82 00 D0 */	bne lbl_80D110EC
/* 80D11020  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80D11024  2C 04 FF FF */	cmpwi r4, -1
/* 80D11028  41 82 00 C4 */	beq lbl_80D110EC
/* 80D1102C  7F 83 E3 78 */	mr r3, r28
/* 80D11030  4B 33 6A 48 */	b endCheck__16dEvent_manager_cFs
/* 80D11034  2C 03 00 00 */	cmpwi r3, 0
/* 80D11038  41 82 00 B4 */	beq lbl_80D110EC
/* 80D1103C  80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 80D11040  80 1D 00 AC */	lwz r0, 0xac(r29)
/* 80D11044  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80D11048  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D1104C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D11050  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D11054  38 00 00 03 */	li r0, 3
/* 80D11058  B0 1A 0D DE */	sth r0, 0xdde(r26)
/* 80D1105C  38 7A 0D B8 */	addi r3, r26, 0xdb8
/* 80D11060  4B 65 0F B8 */	b __ptmf_test
/* 80D11064  2C 03 00 00 */	cmpwi r3, 0
/* 80D11068  41 82 00 14 */	beq lbl_80D1107C
/* 80D1106C  7F 43 D3 78 */	mr r3, r26
/* 80D11070  39 9A 0D B8 */	addi r12, r26, 0xdb8
/* 80D11074  4B 65 10 10 */	b __ptmf_scall
/* 80D11078  60 00 00 00 */	nop 
lbl_80D1107C:
/* 80D1107C  38 00 00 00 */	li r0, 0
/* 80D11080  B0 1A 0D DE */	sth r0, 0xdde(r26)
/* 80D11084  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80D11088  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80D1108C  90 7A 0D B8 */	stw r3, 0xdb8(r26)
/* 80D11090  90 1A 0D BC */	stw r0, 0xdbc(r26)
/* 80D11094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D11098  90 1A 0D C0 */	stw r0, 0xdc0(r26)
/* 80D1109C  38 7A 0D B8 */	addi r3, r26, 0xdb8
/* 80D110A0  4B 65 0F 78 */	b __ptmf_test
/* 80D110A4  2C 03 00 00 */	cmpwi r3, 0
/* 80D110A8  41 82 00 44 */	beq lbl_80D110EC
/* 80D110AC  7F 43 D3 78 */	mr r3, r26
/* 80D110B0  39 9A 0D B8 */	addi r12, r26, 0xdb8
/* 80D110B4  4B 65 0F D0 */	b __ptmf_scall
/* 80D110B8  60 00 00 00 */	nop 
/* 80D110BC  48 00 00 30 */	b lbl_80D110EC
lbl_80D110C0:
/* 80D110C0  88 1A 09 EC */	lbz r0, 0x9ec(r26)
/* 80D110C4  28 00 00 00 */	cmplwi r0, 0
/* 80D110C8  40 82 00 14 */	bne lbl_80D110DC
/* 80D110CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D110D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D110D4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D110D8  4B 33 13 90 */	b reset__14dEvt_control_cFv
lbl_80D110DC:
/* 80D110DC  38 00 00 00 */	li r0, 0
/* 80D110E0  98 1A 09 EC */	stb r0, 0x9ec(r26)
/* 80D110E4  38 00 FF FF */	li r0, -1
/* 80D110E8  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
lbl_80D110EC:
/* 80D110EC  39 61 00 70 */	addi r11, r1, 0x70
/* 80D110F0  4B 65 11 2C */	b _restgpr_26
/* 80D110F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D110F8  7C 08 03 A6 */	mtlr r0
/* 80D110FC  38 21 00 70 */	addi r1, r1, 0x70
/* 80D11100  4E 80 00 20 */	blr 
