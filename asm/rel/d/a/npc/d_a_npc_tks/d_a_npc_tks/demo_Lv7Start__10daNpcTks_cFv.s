lbl_80B1A888:
/* 80B1A888  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B1A88C  7C 08 02 A6 */	mflr r0
/* 80B1A890  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B1A894  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B1A898  4B 84 79 38 */	b _savegpr_26
/* 80B1A89C  7C 7A 1B 78 */	mr r26, r3
/* 80B1A8A0  3C 80 80 B2 */	lis r4, m__16daNpcTks_Param_c@ha
/* 80B1A8A4  3B A4 DD 58 */	addi r29, r4, m__16daNpcTks_Param_c@l
/* 80B1A8A8  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B1A8AC  2C 00 00 02 */	cmpwi r0, 2
/* 80B1A8B0  41 82 00 64 */	beq lbl_80B1A914
/* 80B1A8B4  40 80 0D D4 */	bge lbl_80B1B688
/* 80B1A8B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A8BC  41 82 00 0C */	beq lbl_80B1A8C8
/* 80B1A8C0  48 00 0D C8 */	b lbl_80B1B688
/* 80B1A8C4  48 00 0D C4 */	b lbl_80B1B688
lbl_80B1A8C8:
/* 80B1A8C8  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B1A8CC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1A8D0  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B1A8D4  38 80 00 01 */	li r4, 1
/* 80B1A8D8  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A8DC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B1A8E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A8E4  7D 89 03 A6 */	mtctr r12
/* 80B1A8E8  4E 80 04 21 */	bctrl 
/* 80B1A8EC  7F 43 D3 78 */	mr r3, r26
/* 80B1A8F0  38 80 00 04 */	li r4, 4
/* 80B1A8F4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A8F8  38 A0 00 00 */	li r5, 0
/* 80B1A8FC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A900  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1A904  7D 89 03 A6 */	mtctr r12
/* 80B1A908  4E 80 04 21 */	bctrl 
/* 80B1A90C  38 00 00 02 */	li r0, 2
/* 80B1A910  B0 1A 13 88 */	sth r0, 0x1388(r26)
lbl_80B1A914:
/* 80B1A914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1A918  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B1A91C  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B1A920  28 00 00 00 */	cmplwi r0, 0
/* 80B1A924  41 82 0D 64 */	beq lbl_80B1B688
/* 80B1A928  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1A92C  28 00 00 01 */	cmplwi r0, 1
/* 80B1A930  41 82 0D 58 */	beq lbl_80B1B688
/* 80B1A934  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B1A938  7F 83 E3 78 */	mr r3, r28
/* 80B1A93C  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B1A940  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B1A944  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1A948  38 A0 00 00 */	li r5, 0
/* 80B1A94C  38 C0 00 00 */	li r6, 0
/* 80B1A950  4B 52 D1 CC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1A954  7C 7B 1B 78 */	mr r27, r3
/* 80B1A958  2C 1B FF FF */	cmpwi r27, -1
/* 80B1A95C  41 82 0D 2C */	beq lbl_80B1B688
/* 80B1A960  7F 83 E3 78 */	mr r3, r28
/* 80B1A964  7F 64 DB 78 */	mr r4, r27
/* 80B1A968  4B 52 D5 F4 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B1A96C  7C 7F 1B 78 */	mr r31, r3
/* 80B1A970  7F 83 E3 78 */	mr r3, r28
/* 80B1A974  7F 64 DB 78 */	mr r4, r27
/* 80B1A978  4B 52 D3 D4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B1A97C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A980  41 82 02 A0 */	beq lbl_80B1AC20
/* 80B1A984  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1A988  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80B1A98C  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80B1A990  7C 04 00 00 */	cmpw r4, r0
/* 80B1A994  41 82 01 C0 */	beq lbl_80B1AB54
/* 80B1A998  40 80 00 3C */	bge lbl_80B1A9D4
/* 80B1A99C  38 03 30 33 */	addi r0, r3, 0x3033
/* 80B1A9A0  7C 04 00 00 */	cmpw r4, r0
/* 80B1A9A4  41 82 01 1C */	beq lbl_80B1AAC0
/* 80B1A9A8  40 80 00 18 */	bge lbl_80B1A9C0
/* 80B1A9AC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1A9B0  7C 04 00 00 */	cmpw r4, r0
/* 80B1A9B4  41 82 02 6C */	beq lbl_80B1AC20
/* 80B1A9B8  40 80 00 54 */	bge lbl_80B1AA0C
/* 80B1A9BC  48 00 02 64 */	b lbl_80B1AC20
lbl_80B1A9C0:
/* 80B1A9C0  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B1A9C4  7C 04 00 00 */	cmpw r4, r0
/* 80B1A9C8  41 82 02 58 */	beq lbl_80B1AC20
/* 80B1A9CC  40 80 02 54 */	bge lbl_80B1AC20
/* 80B1A9D0  48 00 01 40 */	b lbl_80B1AB10
lbl_80B1A9D4:
/* 80B1A9D4  38 03 31 30 */	addi r0, r3, 0x3130
/* 80B1A9D8  7C 04 00 00 */	cmpw r4, r0
/* 80B1A9DC  41 82 01 C8 */	beq lbl_80B1ABA4
/* 80B1A9E0  40 80 00 18 */	bge lbl_80B1A9F8
/* 80B1A9E4  38 03 30 39 */	addi r0, r3, 0x3039
/* 80B1A9E8  7C 04 00 00 */	cmpw r4, r0
/* 80B1A9EC  41 82 01 90 */	beq lbl_80B1AB7C
/* 80B1A9F0  40 80 02 30 */	bge lbl_80B1AC20
/* 80B1A9F4  48 00 01 1C */	b lbl_80B1AB10
lbl_80B1A9F8:
/* 80B1A9F8  38 03 31 32 */	addi r0, r3, 0x3132
/* 80B1A9FC  7C 04 00 00 */	cmpw r4, r0
/* 80B1AA00  41 82 02 18 */	beq lbl_80B1AC18
/* 80B1AA04  40 80 02 1C */	bge lbl_80B1AC20
/* 80B1AA08  48 00 01 E4 */	b lbl_80B1ABEC
lbl_80B1AA0C:
/* 80B1AA0C  C0 1D 02 84 */	lfs f0, 0x284(r29)
/* 80B1AA10  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1AA14  C0 1D 02 88 */	lfs f0, 0x288(r29)
/* 80B1AA18  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1AA1C  C0 1D 02 8C */	lfs f0, 0x28c(r29)
/* 80B1AA20  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1AA24  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1AA28  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1AA2C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1AA30  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1AA34  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1AA38  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80B1AA3C  7F 43 D3 78 */	mr r3, r26
/* 80B1AA40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1AA44  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B1AA48  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1AA4C  4B 4F FC C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1AA50  7C 64 1B 78 */	mr r4, r3
/* 80B1AA54  7F 43 D3 78 */	mr r3, r26
/* 80B1AA58  4B 63 97 F8 */	b setAngle__8daNpcF_cFs
/* 80B1AA5C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80B1AA60  7C 07 07 74 */	extsb r7, r0
/* 80B1AA64  38 00 00 00 */	li r0, 0
/* 80B1AA68  90 01 00 08 */	stw r0, 8(r1)
/* 80B1AA6C  38 60 02 76 */	li r3, 0x276
/* 80B1AA70  28 1A 00 00 */	cmplwi r26, 0
/* 80B1AA74  41 82 00 0C */	beq lbl_80B1AA80
/* 80B1AA78  80 9A 00 04 */	lwz r4, 4(r26)
/* 80B1AA7C  48 00 00 08 */	b lbl_80B1AA84
lbl_80B1AA80:
/* 80B1AA80  38 80 FF FF */	li r4, -1
lbl_80B1AA84:
/* 80B1AA84  38 A0 00 03 */	li r5, 3
/* 80B1AA88  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80B1AA8C  39 1A 08 F0 */	addi r8, r26, 0x8f0
/* 80B1AA90  39 20 00 00 */	li r9, 0
/* 80B1AA94  39 40 FF FF */	li r10, -1
/* 80B1AA98  4B 4F F4 58 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80B1AA9C  90 7A 04 A4 */	stw r3, 0x4a4(r26)
/* 80B1AAA0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1AAA4  7F 44 D3 78 */	mr r4, r26
/* 80B1AAA8  4B 52 8B E4 */	b setPtT__14dEvt_control_cFPv
/* 80B1AAAC  38 00 00 00 */	li r0, 0
/* 80B1AAB0  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1AAB4  38 00 00 8F */	li r0, 0x8f
/* 80B1AAB8  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1AABC  48 00 01 64 */	b lbl_80B1AC20
lbl_80B1AAC0:
/* 80B1AAC0  38 00 00 00 */	li r0, 0
/* 80B1AAC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1AAC8  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B1AACC  38 81 00 44 */	addi r4, r1, 0x44
/* 80B1AAD0  4B 4F EE EC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B1AAD4  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80B1AAD8  28 03 00 00 */	cmplwi r3, 0
/* 80B1AADC  41 82 00 08 */	beq lbl_80B1AAE4
/* 80B1AAE0  4B FF 28 58 */	b setActionWait__10daNpcTkc_cFv
lbl_80B1AAE4:
/* 80B1AAE4  7F 43 D3 78 */	mr r3, r26
/* 80B1AAE8  38 80 00 01 */	li r4, 1
/* 80B1AAEC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1AAF0  38 A0 00 00 */	li r5, 0
/* 80B1AAF4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1AAF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1AAFC  7D 89 03 A6 */	mtctr r12
/* 80B1AB00  4E 80 04 21 */	bctrl 
/* 80B1AB04  38 00 00 3C */	li r0, 0x3c
/* 80B1AB08  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1AB0C  48 00 01 14 */	b lbl_80B1AC20
lbl_80B1AB10:
/* 80B1AB10  7F 43 D3 78 */	mr r3, r26
/* 80B1AB14  A8 9A 13 84 */	lha r4, 0x1384(r26)
/* 80B1AB18  38 A0 00 00 */	li r5, 0
/* 80B1AB1C  4B 63 92 00 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B1AB20  38 00 00 00 */	li r0, 0
/* 80B1AB24  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B1AB28  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1AB2C  2C 00 00 03 */	cmpwi r0, 3
/* 80B1AB30  40 82 00 10 */	bne lbl_80B1AB40
/* 80B1AB34  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1AB38  28 00 00 00 */	cmplwi r0, 0
/* 80B1AB3C  41 82 00 E4 */	beq lbl_80B1AC20
lbl_80B1AB40:
/* 80B1AB40  38 00 00 03 */	li r0, 3
/* 80B1AB44  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1AB48  38 00 00 00 */	li r0, 0
/* 80B1AB4C  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B1AB50  48 00 00 D0 */	b lbl_80B1AC20
lbl_80B1AB54:
/* 80B1AB54  38 00 00 00 */	li r0, 0
/* 80B1AB58  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B1AB5C  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B1AB60  38 81 00 40 */	addi r4, r1, 0x40
/* 80B1AB64  4B 4F EE 58 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B1AB68  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80B1AB6C  28 03 00 00 */	cmplwi r3, 0
/* 80B1AB70  41 82 00 B0 */	beq lbl_80B1AC20
/* 80B1AB74  4B FF 27 C4 */	b setActionWait__10daNpcTkc_cFv
/* 80B1AB78  48 00 00 A8 */	b lbl_80B1AC20
lbl_80B1AB7C:
/* 80B1AB7C  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1AB80  2C 00 00 00 */	cmpwi r0, 0
/* 80B1AB84  40 82 00 10 */	bne lbl_80B1AB94
/* 80B1AB88  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1AB8C  28 00 00 00 */	cmplwi r0, 0
/* 80B1AB90  41 82 00 90 */	beq lbl_80B1AC20
lbl_80B1AB94:
/* 80B1AB94  38 00 00 00 */	li r0, 0
/* 80B1AB98  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1AB9C  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B1ABA0  48 00 00 80 */	b lbl_80B1AC20
lbl_80B1ABA4:
/* 80B1ABA4  38 00 00 00 */	li r0, 0
/* 80B1ABA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B1ABAC  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B1ABB0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B1ABB4  4B 4F EE 08 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B1ABB8  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80B1ABBC  28 03 00 00 */	cmplwi r3, 0
/* 80B1ABC0  41 82 00 08 */	beq lbl_80B1ABC8
/* 80B1ABC4  4B FF 27 B8 */	b setActionFollow__10daNpcTkc_cFv
lbl_80B1ABC8:
/* 80B1ABC8  7F 43 D3 78 */	mr r3, r26
/* 80B1ABCC  38 80 00 04 */	li r4, 4
/* 80B1ABD0  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1ABD4  38 A0 00 00 */	li r5, 0
/* 80B1ABD8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1ABDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1ABE0  7D 89 03 A6 */	mtctr r12
/* 80B1ABE4  4E 80 04 21 */	bctrl 
/* 80B1ABE8  48 00 00 38 */	b lbl_80B1AC20
lbl_80B1ABEC:
/* 80B1ABEC  7F 43 D3 78 */	mr r3, r26
/* 80B1ABF0  38 80 00 02 */	li r4, 2
/* 80B1ABF4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1ABF8  38 A0 00 00 */	li r5, 0
/* 80B1ABFC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1AC00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1AC04  7D 89 03 A6 */	mtctr r12
/* 80B1AC08  4E 80 04 21 */	bctrl 
/* 80B1AC0C  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80B1AC10  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1AC14  48 00 00 0C */	b lbl_80B1AC20
lbl_80B1AC18:
/* 80B1AC18  7F 43 D3 78 */	mr r3, r26
/* 80B1AC1C  4B 4F F0 60 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B1AC20:
/* 80B1AC20  83 DA 09 50 */	lwz r30, 0x950(r26)
/* 80B1AC24  7F 43 D3 78 */	mr r3, r26
/* 80B1AC28  38 81 00 38 */	addi r4, r1, 0x38
/* 80B1AC2C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80B1AC30  7F 46 D3 78 */	mr r6, r26
/* 80B1AC34  38 E0 00 01 */	li r7, 1
/* 80B1AC38  4B 63 8A E0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B1AC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1AC40  41 82 00 24 */	beq lbl_80B1AC64
/* 80B1AC44  7F 43 D3 78 */	mr r3, r26
/* 80B1AC48  80 81 00 38 */	lwz r4, 0x38(r1)
/* 80B1AC4C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1AC50  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1AC54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1AC58  7D 89 03 A6 */	mtctr r12
/* 80B1AC5C  4E 80 04 21 */	bctrl 
/* 80B1AC60  48 00 00 34 */	b lbl_80B1AC94
lbl_80B1AC64:
/* 80B1AC64  2C 1E 00 00 */	cmpwi r30, 0
/* 80B1AC68  41 82 00 2C */	beq lbl_80B1AC94
/* 80B1AC6C  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B1AC70  2C 00 00 00 */	cmpwi r0, 0
/* 80B1AC74  40 82 00 20 */	bne lbl_80B1AC94
/* 80B1AC78  7F 43 D3 78 */	mr r3, r26
/* 80B1AC7C  38 80 00 01 */	li r4, 1
/* 80B1AC80  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1AC84  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1AC88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1AC8C  7D 89 03 A6 */	mtctr r12
/* 80B1AC90  4E 80 04 21 */	bctrl 
lbl_80B1AC94:
/* 80B1AC94  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1AC98  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80B1AC9C  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80B1ACA0  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACA4  41 82 03 EC */	beq lbl_80B1B090
/* 80B1ACA8  40 80 00 3C */	bge lbl_80B1ACE4
/* 80B1ACAC  38 03 30 33 */	addi r0, r3, 0x3033
/* 80B1ACB0  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACB4  41 82 01 F8 */	beq lbl_80B1AEAC
/* 80B1ACB8  40 80 00 18 */	bge lbl_80B1ACD0
/* 80B1ACBC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1ACC0  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACC4  41 82 00 58 */	beq lbl_80B1AD1C
/* 80B1ACC8  40 80 00 84 */	bge lbl_80B1AD4C
/* 80B1ACCC  48 00 09 BC */	b lbl_80B1B688
lbl_80B1ACD0:
/* 80B1ACD0  38 03 30 35 */	addi r0, r3, 0x3035
/* 80B1ACD4  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACD8  41 82 03 B8 */	beq lbl_80B1B090
/* 80B1ACDC  40 80 09 AC */	bge lbl_80B1B688
/* 80B1ACE0  48 00 04 80 */	b lbl_80B1B160
lbl_80B1ACE4:
/* 80B1ACE4  38 03 31 30 */	addi r0, r3, 0x3130
/* 80B1ACE8  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACEC  41 82 07 90 */	beq lbl_80B1B47C
/* 80B1ACF0  40 80 00 18 */	bge lbl_80B1AD08
/* 80B1ACF4  38 03 30 39 */	addi r0, r3, 0x3039
/* 80B1ACF8  7C 04 00 00 */	cmpw r4, r0
/* 80B1ACFC  41 82 06 04 */	beq lbl_80B1B300
/* 80B1AD00  40 80 09 88 */	bge lbl_80B1B688
/* 80B1AD04  48 00 02 18 */	b lbl_80B1AF1C
lbl_80B1AD08:
/* 80B1AD08  38 03 31 32 */	addi r0, r3, 0x3132
/* 80B1AD0C  7C 04 00 00 */	cmpw r4, r0
/* 80B1AD10  41 82 03 F0 */	beq lbl_80B1B100
/* 80B1AD14  40 80 09 74 */	bge lbl_80B1B688
/* 80B1AD18  48 00 08 68 */	b lbl_80B1B580
lbl_80B1AD1C:
/* 80B1AD1C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1AD20  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80B1AD24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1AD28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1AD2C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B1AD30  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B1AD34  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B1AD38  40 82 09 50 */	bne lbl_80B1B688
/* 80B1AD3C  7F 83 E3 78 */	mr r3, r28
/* 80B1AD40  7F 64 DB 78 */	mr r4, r27
/* 80B1AD44  4B 52 D4 38 */	b cutEnd__16dEvent_manager_cFi
/* 80B1AD48  48 00 09 40 */	b lbl_80B1B688
lbl_80B1AD4C:
/* 80B1AD4C  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1AD50  48 00 26 19 */	bl func_80B1D368
/* 80B1AD54  2C 03 00 00 */	cmpwi r3, 0
/* 80B1AD58  40 82 00 10 */	bne lbl_80B1AD68
/* 80B1AD5C  7F 83 E3 78 */	mr r3, r28
/* 80B1AD60  7F 64 DB 78 */	mr r4, r27
/* 80B1AD64  4B 52 D4 18 */	b cutEnd__16dEvent_manager_cFi
lbl_80B1AD68:
/* 80B1AD68  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1AD6C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B1AD70  41 82 01 04 */	beq lbl_80B1AE74
/* 80B1AD74  C0 5A 07 9C */	lfs f2, 0x79c(r26)
/* 80B1AD78  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1AD7C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80B1AD80  40 80 00 EC */	bge lbl_80B1AE6C
/* 80B1AD84  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80B1AD88  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1AD8C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B1AD90  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80B1AD94  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80B1AD98  88 1A 13 8B */	lbz r0, 0x138b(r26)
/* 80B1AD9C  28 00 00 00 */	cmplwi r0, 0
/* 80B1ADA0  40 82 00 54 */	bne lbl_80B1ADF4
/* 80B1ADA4  38 61 00 68 */	addi r3, r1, 0x68
/* 80B1ADA8  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 80B1ADAC  38 80 00 00 */	li r4, 0
/* 80B1ADB0  4B 50 4A CC */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80B1ADB4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80B1ADB8  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80B1ADBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B1ADC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B1ADC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B1ADC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B1ADCC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B1ADD0  38 A1 00 68 */	addi r5, r1, 0x68
/* 80B1ADD4  38 C0 00 00 */	li r6, 0
/* 80B1ADD8  38 E0 00 00 */	li r7, 0
/* 80B1ADDC  C0 3D 00 B0 */	lfs f1, 0xb0(r29)
/* 80B1ADE0  FC 40 08 90 */	fmr f2, f1
/* 80B1ADE4  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 80B1ADE8  FC 80 18 90 */	fmr f4, f3
/* 80B1ADEC  39 00 00 00 */	li r8, 0
/* 80B1ADF0  4B 79 0B 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B1ADF4:
/* 80B1ADF4  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 80B1ADF8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1ADFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1AE00  40 80 00 14 */	bge lbl_80B1AE14
/* 80B1AE04  C8 1D 02 90 */	lfd f0, 0x290(r29)
/* 80B1AE08  FC 01 00 32 */	fmul f0, f1, f0
/* 80B1AE0C  FC 00 00 18 */	frsp f0, f0
/* 80B1AE10  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
lbl_80B1AE14:
/* 80B1AE14  C0 5A 04 FC */	lfs f2, 0x4fc(r26)
/* 80B1AE18  C0 3A 05 30 */	lfs f1, 0x530(r26)
/* 80B1AE1C  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1AE20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B1AE24  EC 02 00 28 */	fsubs f0, f2, f0
/* 80B1AE28  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1AE2C  7F 43 D3 78 */	mr r3, r26
/* 80B1AE30  38 80 00 01 */	li r4, 1
/* 80B1AE34  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1AE38  38 A0 00 00 */	li r5, 0
/* 80B1AE3C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1AE40  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1AE44  7D 89 03 A6 */	mtctr r12
/* 80B1AE48  4E 80 04 21 */	bctrl 
/* 80B1AE4C  38 7A 13 7C */	addi r3, r26, 0x137c
/* 80B1AE50  38 81 00 68 */	addi r4, r1, 0x68
/* 80B1AE54  C0 3D 02 98 */	lfs f1, 0x298(r29)
/* 80B1AE58  C0 5D 02 9C */	lfs f2, 0x29c(r29)
/* 80B1AE5C  4B 50 22 B0 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80B1AE60  38 00 00 01 */	li r0, 1
/* 80B1AE64  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1AE68  48 00 00 0C */	b lbl_80B1AE74
lbl_80B1AE6C:
/* 80B1AE6C  38 00 00 00 */	li r0, 0
/* 80B1AE70  98 1A 13 8B */	stb r0, 0x138b(r26)
lbl_80B1AE74:
/* 80B1AE74  88 1A 13 8B */	lbz r0, 0x138b(r26)
/* 80B1AE78  28 00 00 00 */	cmplwi r0, 0
/* 80B1AE7C  40 82 08 0C */	bne lbl_80B1B688
/* 80B1AE80  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050031@ha */
/* 80B1AE84  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00050031@l */
/* 80B1AE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B1AE8C  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1AE90  38 81 00 24 */	addi r4, r1, 0x24
/* 80B1AE94  38 A0 FF FF */	li r5, -1
/* 80B1AE98  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1AE9C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1AEA0  7D 89 03 A6 */	mtctr r12
/* 80B1AEA4  4E 80 04 21 */	bctrl 
/* 80B1AEA8  48 00 07 E0 */	b lbl_80B1B688
lbl_80B1AEAC:
/* 80B1AEAC  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1AEB0  48 00 24 B9 */	bl func_80B1D368
/* 80B1AEB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1AEB8  40 82 00 10 */	bne lbl_80B1AEC8
/* 80B1AEBC  7F 83 E3 78 */	mr r3, r28
/* 80B1AEC0  7F 64 DB 78 */	mr r4, r27
/* 80B1AEC4  4B 52 D2 B8 */	b cutEnd__16dEvent_manager_cFi
lbl_80B1AEC8:
/* 80B1AEC8  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1AECC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B1AED0  41 82 07 B8 */	beq lbl_80B1B688
/* 80B1AED4  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80B1AED8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1AEDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B1AEE0  40 80 00 30 */	bge lbl_80B1AF10
/* 80B1AEE4  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80B1AEE8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1AEEC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1AEF0  38 7A 13 7C */	addi r3, r26, 0x137c
/* 80B1AEF4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B1AEF8  C0 3D 02 98 */	lfs f1, 0x298(r29)
/* 80B1AEFC  C0 5D 02 9C */	lfs f2, 0x29c(r29)
/* 80B1AF00  4B 50 22 0C */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80B1AF04  38 00 00 01 */	li r0, 1
/* 80B1AF08  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1AF0C  48 00 07 7C */	b lbl_80B1B688
lbl_80B1AF10:
/* 80B1AF10  38 00 00 00 */	li r0, 0
/* 80B1AF14  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1AF18  48 00 07 70 */	b lbl_80B1B688
lbl_80B1AF1C:
/* 80B1AF1C  7F 43 D3 78 */	mr r3, r26
/* 80B1AF20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1AF24  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80B1AF28  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B1AF2C  4B 4F F7 E4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1AF30  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 80B1AF34  7C 60 07 34 */	extsh r0, r3
/* 80B1AF38  7C 04 00 00 */	cmpw r4, r0
/* 80B1AF3C  40 82 00 30 */	bne lbl_80B1AF6C
/* 80B1AF40  7F 43 D3 78 */	mr r3, r26
/* 80B1AF44  38 80 00 00 */	li r4, 0
/* 80B1AF48  38 A0 00 01 */	li r5, 1
/* 80B1AF4C  38 C0 00 00 */	li r6, 0
/* 80B1AF50  4B 63 8E 34 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1AF54  2C 03 00 00 */	cmpwi r3, 0
/* 80B1AF58  41 82 00 E4 */	beq lbl_80B1B03C
/* 80B1AF5C  7F 83 E3 78 */	mr r3, r28
/* 80B1AF60  7F 64 DB 78 */	mr r4, r27
/* 80B1AF64  4B 52 D2 18 */	b cutEnd__16dEvent_manager_cFi
/* 80B1AF68  48 00 00 D4 */	b lbl_80B1B03C
lbl_80B1AF6C:
/* 80B1AF6C  7F 43 D3 78 */	mr r3, r26
/* 80B1AF70  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B1AF74  4B 4F F7 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1AF78  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1AF7C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1AF80  40 82 00 4C */	bne lbl_80B1AFCC
/* 80B1AF84  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80B1AF88  38 00 00 00 */	li r0, 0
/* 80B1AF8C  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B1AF90  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B1AF94  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B1AF98  7C 03 00 00 */	cmpw r3, r0
/* 80B1AF9C  40 82 00 10 */	bne lbl_80B1AFAC
/* 80B1AFA0  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1AFA4  38 03 00 01 */	addi r0, r3, 1
/* 80B1AFA8  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1AFAC:
/* 80B1AFAC  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1AFB0  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B1AFB4  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1AFB8  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1AFBC  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1AFC0  38 03 00 01 */	addi r0, r3, 1
/* 80B1AFC4  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1AFC8  48 00 00 60 */	b lbl_80B1B028
lbl_80B1AFCC:
/* 80B1AFCC  2C 00 00 01 */	cmpwi r0, 1
/* 80B1AFD0  40 82 00 58 */	bne lbl_80B1B028
/* 80B1AFD4  7F 43 D3 78 */	mr r3, r26
/* 80B1AFD8  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B1AFDC  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B1AFE0  38 A0 00 00 */	li r5, 0
/* 80B1AFE4  4B 63 8F 10 */	b turn__8daNpcF_cFsfi
/* 80B1AFE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B1AFEC  41 82 00 2C */	beq lbl_80B1B018
/* 80B1AFF0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1AFF4  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1AFF8  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1AFFC  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B1B000  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B004  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B1B008  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B00C  38 03 00 01 */	addi r0, r3, 1
/* 80B1B010  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B014  48 00 00 14 */	b lbl_80B1B028
lbl_80B1B018:
/* 80B1B018  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B01C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B020  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B024  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B1B028:
/* 80B1B028  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1B02C  2C 00 00 01 */	cmpwi r0, 1
/* 80B1B030  40 81 00 0C */	ble lbl_80B1B03C
/* 80B1B034  38 00 00 00 */	li r0, 0
/* 80B1B038  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1B03C:
/* 80B1B03C  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1B040  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B1B044  41 82 06 44 */	beq lbl_80B1B688
/* 80B1B048  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80B1B04C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1B050  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B1B054  40 80 00 30 */	bge lbl_80B1B084
/* 80B1B058  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80B1B05C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B060  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B064  38 7A 13 7C */	addi r3, r26, 0x137c
/* 80B1B068  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B1B06C  C0 3D 02 98 */	lfs f1, 0x298(r29)
/* 80B1B070  C0 5D 02 9C */	lfs f2, 0x29c(r29)
/* 80B1B074  4B 50 20 98 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80B1B078  38 00 00 01 */	li r0, 1
/* 80B1B07C  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B080  48 00 06 08 */	b lbl_80B1B688
lbl_80B1B084:
/* 80B1B084  38 00 00 00 */	li r0, 0
/* 80B1B088  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B08C  48 00 05 FC */	b lbl_80B1B688
lbl_80B1B090:
/* 80B1B090  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050034@ha */
/* 80B1B094  38 03 00 34 */	addi r0, r3, 0x0034 /* 0x00050034@l */
/* 80B1B098  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1B09C  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1B0A0  38 81 00 20 */	addi r4, r1, 0x20
/* 80B1B0A4  38 A0 FF FF */	li r5, -1
/* 80B1B0A8  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1B0AC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1B0B0  7D 89 03 A6 */	mtctr r12
/* 80B1B0B4  4E 80 04 21 */	bctrl 
/* 80B1B0B8  38 00 00 00 */	li r0, 0
/* 80B1B0BC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B1B0C0  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B1B0C4  38 81 00 30 */	addi r4, r1, 0x30
/* 80B1B0C8  4B 4F E8 F4 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B1B0CC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80B1B0D0  28 04 00 00 */	cmplwi r4, 0
/* 80B1B0D4  41 82 00 2C */	beq lbl_80B1B100
/* 80B1B0D8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050033@ha */
/* 80B1B0DC  38 03 00 33 */	addi r0, r3, 0x0033 /* 0x00050033@l */
/* 80B1B0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1B0E4  38 64 0B 48 */	addi r3, r4, 0xb48
/* 80B1B0E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80B1B0EC  38 A0 FF FF */	li r5, -1
/* 80B1B0F0  81 83 00 00 */	lwz r12, 0(r3)
/* 80B1B0F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1B0F8  7D 89 03 A6 */	mtctr r12
/* 80B1B0FC  4E 80 04 21 */	bctrl 
lbl_80B1B100:
/* 80B1B100  7F 83 E3 78 */	mr r3, r28
/* 80B1B104  7F 64 DB 78 */	mr r4, r27
/* 80B1B108  4B 52 D0 74 */	b cutEnd__16dEvent_manager_cFi
/* 80B1B10C  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1B110  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B1B114  41 82 05 74 */	beq lbl_80B1B688
/* 80B1B118  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80B1B11C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1B120  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B1B124  40 80 00 30 */	bge lbl_80B1B154
/* 80B1B128  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80B1B12C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B130  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B134  38 7A 13 7C */	addi r3, r26, 0x137c
/* 80B1B138  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B1B13C  C0 3D 02 98 */	lfs f1, 0x298(r29)
/* 80B1B140  C0 5D 02 9C */	lfs f2, 0x29c(r29)
/* 80B1B144  4B 50 1F C8 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80B1B148  38 00 00 01 */	li r0, 1
/* 80B1B14C  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B150  48 00 05 38 */	b lbl_80B1B688
lbl_80B1B154:
/* 80B1B154  38 00 00 00 */	li r0, 0
/* 80B1B158  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B15C  48 00 05 2C */	b lbl_80B1B688
lbl_80B1B160:
/* 80B1B160  80 7D 02 7C */	lwz r3, 0x27c(r29)
/* 80B1B164  80 1D 02 80 */	lwz r0, 0x280(r29)
/* 80B1B168  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B1B16C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B1B170  7F 43 D3 78 */	mr r3, r26
/* 80B1B174  38 81 00 48 */	addi r4, r1, 0x48
/* 80B1B178  38 A0 00 01 */	li r5, 1
/* 80B1B17C  38 C0 00 00 */	li r6, 0
/* 80B1B180  4B 63 8C 04 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1B184  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B188  41 82 01 24 */	beq lbl_80B1B2AC
/* 80B1B18C  88 1A 0A 1E */	lbz r0, 0xa1e(r26)
/* 80B1B190  28 00 00 01 */	cmplwi r0, 1
/* 80B1B194  41 82 00 4C */	beq lbl_80B1B1E0
/* 80B1B198  38 00 02 CA */	li r0, 0x2ca
/* 80B1B19C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B1B1A0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80B1B1A4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80B1B1A8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B1B1AC  4B 4F E6 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80B1B1B0  28 03 00 00 */	cmplwi r3, 0
/* 80B1B1B4  41 82 00 F8 */	beq lbl_80B1B2AC
/* 80B1B1B8  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1B1BC  2C 00 00 04 */	cmpwi r0, 4
/* 80B1B1C0  40 82 00 10 */	bne lbl_80B1B1D0
/* 80B1B1C4  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1B1C8  7C 03 00 40 */	cmplw r3, r0
/* 80B1B1CC  41 82 00 E0 */	beq lbl_80B1B2AC
lbl_80B1B1D0:
/* 80B1B1D0  38 00 00 04 */	li r0, 4
/* 80B1B1D4  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1B1D8  90 7A 12 08 */	stw r3, 0x1208(r26)
/* 80B1B1DC  48 00 00 D0 */	b lbl_80B1B2AC
lbl_80B1B1E0:
/* 80B1B1E0  7F 83 E3 78 */	mr r3, r28
/* 80B1B1E4  7F 64 DB 78 */	mr r4, r27
/* 80B1B1E8  4B 52 CF 94 */	b cutEnd__16dEvent_manager_cFi
/* 80B1B1EC  C0 1D 02 A0 */	lfs f0, 0x2a0(r29)
/* 80B1B1F0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1B1F4  C0 1D 02 A4 */	lfs f0, 0x2a4(r29)
/* 80B1B1F8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1B1FC  C0 1D 02 A8 */	lfs f0, 0x2a8(r29)
/* 80B1B200  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1B204  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1B208  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1B20C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1B210  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1B214  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1B218  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80B1B21C  7F 43 D3 78 */	mr r3, r26
/* 80B1B220  38 80 60 24 */	li r4, 0x6024
/* 80B1B224  4B 63 90 2C */	b setAngle__8daNpcF_cFs
/* 80B1B228  7F 43 D3 78 */	mr r3, r26
/* 80B1B22C  38 80 00 01 */	li r4, 1
/* 80B1B230  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B234  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B238  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1B23C  7D 89 03 A6 */	mtctr r12
/* 80B1B240  4E 80 04 21 */	bctrl 
/* 80B1B244  7F 43 D3 78 */	mr r3, r26
/* 80B1B248  38 80 00 00 */	li r4, 0
/* 80B1B24C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B250  38 A0 00 00 */	li r5, 0
/* 80B1B254  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B258  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1B25C  7D 89 03 A6 */	mtctr r12
/* 80B1B260  4E 80 04 21 */	bctrl 
/* 80B1B264  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1B268  2C 00 00 00 */	cmpwi r0, 0
/* 80B1B26C  40 82 00 10 */	bne lbl_80B1B27C
/* 80B1B270  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1B274  28 00 00 00 */	cmplwi r0, 0
/* 80B1B278  41 82 00 10 */	beq lbl_80B1B288
lbl_80B1B27C:
/* 80B1B27C  38 00 00 00 */	li r0, 0
/* 80B1B280  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1B284  90 1A 12 08 */	stw r0, 0x1208(r26)
lbl_80B1B288:
/* 80B1B288  38 00 00 00 */	li r0, 0
/* 80B1B28C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B1B290  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 80B1B294  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B1B298  4B 4F E7 24 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B1B29C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B1B2A0  28 03 00 00 */	cmplwi r3, 0
/* 80B1B2A4  41 82 00 08 */	beq lbl_80B1B2AC
/* 80B1B2A8  4B FF 20 D4 */	b setActionFollow__10daNpcTkc_cFv
lbl_80B1B2AC:
/* 80B1B2AC  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1B2B0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B1B2B4  41 82 03 D4 */	beq lbl_80B1B688
/* 80B1B2B8  C0 3A 07 9C */	lfs f1, 0x79c(r26)
/* 80B1B2BC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1B2C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B1B2C4  40 80 00 30 */	bge lbl_80B1B2F4
/* 80B1B2C8  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80B1B2CC  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B2D0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B2D4  38 7A 13 7C */	addi r3, r26, 0x137c
/* 80B1B2D8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80B1B2DC  C0 3D 02 98 */	lfs f1, 0x298(r29)
/* 80B1B2E0  C0 5D 02 9C */	lfs f2, 0x29c(r29)
/* 80B1B2E4  4B 50 1E 28 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80B1B2E8  38 00 00 01 */	li r0, 1
/* 80B1B2EC  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B2F0  48 00 03 98 */	b lbl_80B1B688
lbl_80B1B2F4:
/* 80B1B2F4  38 00 00 00 */	li r0, 0
/* 80B1B2F8  98 1A 13 8B */	stb r0, 0x138b(r26)
/* 80B1B2FC  48 00 03 8C */	b lbl_80B1B688
lbl_80B1B300:
/* 80B1B300  C0 1D 02 AC */	lfs f0, 0x2ac(r29)
/* 80B1B304  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B1B308  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 80B1B30C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B1B310  C0 1D 02 B0 */	lfs f0, 0x2b0(r29)
/* 80B1B314  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B1B318  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B1B31C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80B1B320  4B 75 58 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B1B324  7C 7E 1B 78 */	mr r30, r3
/* 80B1B328  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1B32C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1B330  40 82 00 D4 */	bne lbl_80B1B404
/* 80B1B334  C0 5D 01 E0 */	lfs f2, 0x1e0(r29)
/* 80B1B338  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1B33C  7C 00 F0 50 */	subf r0, r0, r30
/* 80B1B340  7C 00 07 34 */	extsh r0, r0
/* 80B1B344  C8 3D 01 E8 */	lfd f1, 0x1e8(r29)
/* 80B1B348  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B1B34C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80B1B350  3C 00 43 30 */	lis r0, 0x4330
/* 80B1B354  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B1B358  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80B1B35C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B1B360  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B1B364  FC 00 02 10 */	fabs f0, f0
/* 80B1B368  FC 00 00 18 */	frsp f0, f0
/* 80B1B36C  FC 00 00 1E */	fctiwz f0, f0
/* 80B1B370  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80B1B374  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B1B378  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B1B37C  40 81 00 40 */	ble lbl_80B1B3BC
/* 80B1B380  7F 43 D3 78 */	mr r3, r26
/* 80B1B384  38 80 00 01 */	li r4, 1
/* 80B1B388  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B38C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B390  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1B394  7D 89 03 A6 */	mtctr r12
/* 80B1B398  4E 80 04 21 */	bctrl 
/* 80B1B39C  7F 43 D3 78 */	mr r3, r26
/* 80B1B3A0  38 80 00 07 */	li r4, 7
/* 80B1B3A4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B3A8  38 A0 00 00 */	li r5, 0
/* 80B1B3AC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B3B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1B3B4  7D 89 03 A6 */	mtctr r12
/* 80B1B3B8  4E 80 04 21 */	bctrl 
lbl_80B1B3BC:
/* 80B1B3BC  B3 DA 09 96 */	sth r30, 0x996(r26)
/* 80B1B3C0  38 00 00 00 */	li r0, 0
/* 80B1B3C4  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B1B3C8  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B1B3CC  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B1B3D0  7C 03 00 00 */	cmpw r3, r0
/* 80B1B3D4  40 82 00 10 */	bne lbl_80B1B3E4
/* 80B1B3D8  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B3DC  38 03 00 01 */	addi r0, r3, 1
/* 80B1B3E0  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1B3E4:
/* 80B1B3E4  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1B3E8  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B1B3EC  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B3F0  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B3F4  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B3F8  38 03 00 01 */	addi r0, r3, 1
/* 80B1B3FC  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B400  48 00 00 60 */	b lbl_80B1B460
lbl_80B1B404:
/* 80B1B404  2C 00 00 01 */	cmpwi r0, 1
/* 80B1B408  40 82 00 58 */	bne lbl_80B1B460
/* 80B1B40C  7F 43 D3 78 */	mr r3, r26
/* 80B1B410  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B1B414  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B1B418  38 A0 00 00 */	li r5, 0
/* 80B1B41C  4B 63 8A D8 */	b turn__8daNpcF_cFsfi
/* 80B1B420  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B424  41 82 00 2C */	beq lbl_80B1B450
/* 80B1B428  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B42C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B430  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B434  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B1B438  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B43C  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B1B440  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B444  38 03 00 01 */	addi r0, r3, 1
/* 80B1B448  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B44C  48 00 00 14 */	b lbl_80B1B460
lbl_80B1B450:
/* 80B1B450  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B454  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B458  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B45C  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B1B460:
/* 80B1B460  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1B464  2C 00 00 01 */	cmpwi r0, 1
/* 80B1B468  40 81 02 20 */	ble lbl_80B1B688
/* 80B1B46C  7F 83 E3 78 */	mr r3, r28
/* 80B1B470  7F 64 DB 78 */	mr r4, r27
/* 80B1B474  4B 52 CD 08 */	b cutEnd__16dEvent_manager_cFi
/* 80B1B478  48 00 02 10 */	b lbl_80B1B688
lbl_80B1B47C:
/* 80B1B47C  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 80B1B480  2C 00 00 04 */	cmpwi r0, 4
/* 80B1B484  40 82 00 B4 */	bne lbl_80B1B538
/* 80B1B488  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B1B48C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1B490  40 82 00 5C */	bne lbl_80B1B4EC
/* 80B1B494  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1B498  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1B49C  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B1B4A0  4B 80 CF 8C */	b checkPass__12J3DFrameCtrlFf
/* 80B1B4A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B4A8  41 82 00 44 */	beq lbl_80B1B4EC
/* 80B1B4AC  C0 1D 02 B4 */	lfs f0, 0x2b4(r29)
/* 80B1B4B0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1B4B4  C0 1D 00 AC */	lfs f0, 0xac(r29)
/* 80B1B4B8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B4BC  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B1B4C0  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B1B4C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1B4C8  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1B4CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B1B4D0  38 A0 00 00 */	li r5, 0
/* 80B1B4D4  38 C0 FF FF */	li r6, -1
/* 80B1B4D8  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1B4DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B1B4E0  7D 89 03 A6 */	mtctr r12
/* 80B1B4E4  4E 80 04 21 */	bctrl 
/* 80B1B4E8  48 00 01 A0 */	b lbl_80B1B688
lbl_80B1B4EC:
/* 80B1B4EC  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 80B1B4F0  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1B4F8  40 81 01 90 */	ble lbl_80B1B688
/* 80B1B4FC  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 80B1B500  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80B1B504  41 82 01 84 */	beq lbl_80B1B688
/* 80B1B508  7F 43 D3 78 */	mr r3, r26
/* 80B1B50C  38 80 00 05 */	li r4, 5
/* 80B1B510  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1B514  38 A0 00 00 */	li r5, 0
/* 80B1B518  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1B51C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1B520  7D 89 03 A6 */	mtctr r12
/* 80B1B524  4E 80 04 21 */	bctrl 
/* 80B1B528  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1B52C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1B530  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1B534  48 00 01 54 */	b lbl_80B1B688
lbl_80B1B538:
/* 80B1B538  2C 00 00 05 */	cmpwi r0, 5
/* 80B1B53C  40 82 01 4C */	bne lbl_80B1B688
/* 80B1B540  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1B544  38 80 00 01 */	li r4, 1
/* 80B1B548  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B1B54C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B1B550  40 82 00 18 */	bne lbl_80B1B568
/* 80B1B554  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B1B558  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B1B55C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B1B560  41 82 00 08 */	beq lbl_80B1B568
/* 80B1B564  38 80 00 00 */	li r4, 0
lbl_80B1B568:
/* 80B1B568  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B1B56C  41 82 01 1C */	beq lbl_80B1B688
/* 80B1B570  7F 83 E3 78 */	mr r3, r28
/* 80B1B574  7F 64 DB 78 */	mr r4, r27
/* 80B1B578  4B 52 CC 04 */	b cutEnd__16dEvent_manager_cFi
/* 80B1B57C  48 00 01 0C */	b lbl_80B1B688
lbl_80B1B580:
/* 80B1B580  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050030@ha */
/* 80B1B584  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00050030@l */
/* 80B1B588  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B1B58C  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1B590  38 81 00 18 */	addi r4, r1, 0x18
/* 80B1B594  38 A0 FF FF */	li r5, -1
/* 80B1B598  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1B59C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B1B5A0  7D 89 03 A6 */	mtctr r12
/* 80B1B5A4  4E 80 04 21 */	bctrl 
/* 80B1B5A8  C0 1D 02 AC */	lfs f0, 0x2ac(r29)
/* 80B1B5AC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B1B5B0  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 80B1B5B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B1B5B8  C0 1D 02 B0 */	lfs f0, 0x2b0(r29)
/* 80B1B5BC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B1B5C0  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B1B5C4  38 81 00 50 */	addi r4, r1, 0x50
/* 80B1B5C8  4B 75 56 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B1B5CC  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1B5D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B1B5D4  40 82 00 4C */	bne lbl_80B1B620
/* 80B1B5D8  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80B1B5DC  38 00 00 00 */	li r0, 0
/* 80B1B5E0  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B1B5E4  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B1B5E8  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B1B5EC  7C 03 00 00 */	cmpw r3, r0
/* 80B1B5F0  40 82 00 10 */	bne lbl_80B1B600
/* 80B1B5F4  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B5F8  38 03 00 01 */	addi r0, r3, 1
/* 80B1B5FC  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1B600:
/* 80B1B600  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1B604  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B1B608  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B60C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B610  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B614  38 03 00 01 */	addi r0, r3, 1
/* 80B1B618  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B61C  48 00 00 60 */	b lbl_80B1B67C
lbl_80B1B620:
/* 80B1B620  2C 00 00 01 */	cmpwi r0, 1
/* 80B1B624  40 82 00 58 */	bne lbl_80B1B67C
/* 80B1B628  7F 43 D3 78 */	mr r3, r26
/* 80B1B62C  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B1B630  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B1B634  38 A0 00 00 */	li r5, 0
/* 80B1B638  4B 63 88 BC */	b turn__8daNpcF_cFsfi
/* 80B1B63C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1B640  41 82 00 2C */	beq lbl_80B1B66C
/* 80B1B644  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B648  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B64C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B650  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B1B654  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B658  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B1B65C  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1B660  38 03 00 01 */	addi r0, r3, 1
/* 80B1B664  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1B668  48 00 00 14 */	b lbl_80B1B67C
lbl_80B1B66C:
/* 80B1B66C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B670  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1B674  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1B678  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B1B67C:
/* 80B1B67C  7F 83 E3 78 */	mr r3, r28
/* 80B1B680  7F 64 DB 78 */	mr r4, r27
/* 80B1B684  4B 52 CA F8 */	b cutEnd__16dEvent_manager_cFi
lbl_80B1B688:
/* 80B1B688  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B1B68C  4B 84 6B 90 */	b _restgpr_26
/* 80B1B690  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B1B694  7C 08 03 A6 */	mtlr r0
/* 80B1B698  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B1B69C  4E 80 00 20 */	blr 
