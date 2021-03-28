lbl_80ADCAD8:
/* 80ADCAD8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80ADCADC  7C 08 02 A6 */	mflr r0
/* 80ADCAE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80ADCAE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADCAE8  4B 88 56 EC */	b _savegpr_27
/* 80ADCAEC  7C 7D 1B 78 */	mr r29, r3
/* 80ADCAF0  7C 9B 23 78 */	mr r27, r4
/* 80ADCAF4  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80ADCAF8  3B C3 1F DC */	addi r30, r3, m__17daNpcShad_Param_c@l
/* 80ADCAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADCB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADCB04  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80ADCB08  7F 83 E3 78 */	mr r3, r28
/* 80ADCB0C  4B 56 B4 50 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADCB10  7C 7F 1B 78 */	mr r31, r3
/* 80ADCB14  7F 83 E3 78 */	mr r3, r28
/* 80ADCB18  7F 64 DB 78 */	mr r4, r27
/* 80ADCB1C  4B 56 B2 30 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADCB20  2C 03 00 00 */	cmpwi r3, 0
/* 80ADCB24  41 82 01 D8 */	beq lbl_80ADCCFC
/* 80ADCB28  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADCB2C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80ADCB30  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80ADCB34  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB38  41 82 01 0C */	beq lbl_80ADCC44
/* 80ADCB3C  40 80 00 30 */	bge lbl_80ADCB6C
/* 80ADCB40  38 03 30 35 */	addi r0, r3, 0x3035
/* 80ADCB44  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB48  41 82 00 80 */	beq lbl_80ADCBC8
/* 80ADCB4C  40 80 00 CC */	bge lbl_80ADCC18
/* 80ADCB50  38 03 30 33 */	addi r0, r3, 0x3033
/* 80ADCB54  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB58  40 80 01 A4 */	bge lbl_80ADCCFC
/* 80ADCB5C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADCB60  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB64  40 80 00 2C */	bge lbl_80ADCB90
/* 80ADCB68  48 00 01 94 */	b lbl_80ADCCFC
lbl_80ADCB6C:
/* 80ADCB6C  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ADCB70  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB74  41 82 01 78 */	beq lbl_80ADCCEC
/* 80ADCB78  40 80 01 84 */	bge lbl_80ADCCFC
/* 80ADCB7C  38 03 30 39 */	addi r0, r3, 0x3039
/* 80ADCB80  7C 04 00 00 */	cmpw r4, r0
/* 80ADCB84  41 82 01 54 */	beq lbl_80ADCCD8
/* 80ADCB88  40 80 01 74 */	bge lbl_80ADCCFC
/* 80ADCB8C  48 00 01 1C */	b lbl_80ADCCA8
lbl_80ADCB90:
/* 80ADCB90  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADCB94  2C 00 00 00 */	cmpwi r0, 0
/* 80ADCB98  40 82 00 10 */	bne lbl_80ADCBA8
/* 80ADCB9C  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADCBA0  28 00 00 00 */	cmplwi r0, 0
/* 80ADCBA4  41 82 00 10 */	beq lbl_80ADCBB4
lbl_80ADCBA8:
/* 80ADCBA8  38 00 00 00 */	li r0, 0
/* 80ADCBAC  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADCBB0  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADCBB4:
/* 80ADCBB4  7F A3 EB 78 */	mr r3, r29
/* 80ADCBB8  A8 9D 0E 14 */	lha r4, 0xe14(r29)
/* 80ADCBBC  38 A0 00 00 */	li r5, 0
/* 80ADCBC0  4B 67 71 5C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADCBC4  48 00 01 38 */	b lbl_80ADCCFC
lbl_80ADCBC8:
/* 80ADCBC8  7F A3 EB 78 */	mr r3, r29
/* 80ADCBCC  A8 9D 0E 14 */	lha r4, 0xe14(r29)
/* 80ADCBD0  38 A0 00 00 */	li r5, 0
/* 80ADCBD4  4B 67 71 48 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADCBD8  7F A3 EB 78 */	mr r3, r29
/* 80ADCBDC  38 80 00 0A */	li r4, 0xa
/* 80ADCBE0  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCBE4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCBE8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCBEC  7D 89 03 A6 */	mtctr r12
/* 80ADCBF0  4E 80 04 21 */	bctrl 
/* 80ADCBF4  7F A3 EB 78 */	mr r3, r29
/* 80ADCBF8  38 80 00 07 */	li r4, 7
/* 80ADCBFC  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCC00  38 A0 00 00 */	li r5, 0
/* 80ADCC04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCC08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADCC0C  7D 89 03 A6 */	mtctr r12
/* 80ADCC10  4E 80 04 21 */	bctrl 
/* 80ADCC14  48 00 00 E8 */	b lbl_80ADCCFC
lbl_80ADCC18:
/* 80ADCC18  38 00 00 00 */	li r0, 0
/* 80ADCC1C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADCC20  7F A3 EB 78 */	mr r3, r29
/* 80ADCC24  38 80 00 14 */	li r4, 0x14
/* 80ADCC28  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCC2C  38 A0 00 00 */	li r5, 0
/* 80ADCC30  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCC34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADCC38  7D 89 03 A6 */	mtctr r12
/* 80ADCC3C  4E 80 04 21 */	bctrl 
/* 80ADCC40  48 00 00 BC */	b lbl_80ADCCFC
lbl_80ADCC44:
/* 80ADCC44  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80ADCC48  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80ADCC4C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80ADCC50  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80ADCC54  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80ADCC58  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80ADCC5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80ADCC60  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80ADCC64  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80ADCC68  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80ADCC6C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80ADCC70  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80ADCC74  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80ADCC78  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80ADCC7C  7F A3 EB 78 */	mr r3, r29
/* 80ADCC80  38 80 00 00 */	li r4, 0
/* 80ADCC84  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCC88  38 A0 00 00 */	li r5, 0
/* 80ADCC8C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCC90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADCC94  7D 89 03 A6 */	mtctr r12
/* 80ADCC98  4E 80 04 21 */	bctrl 
/* 80ADCC9C  38 00 00 00 */	li r0, 0
/* 80ADCCA0  98 1D 0E 1E */	stb r0, 0xe1e(r29)
/* 80ADCCA4  48 00 00 58 */	b lbl_80ADCCFC
lbl_80ADCCA8:
/* 80ADCCA8  7F A3 EB 78 */	mr r3, r29
/* 80ADCCAC  A8 9D 0E 14 */	lha r4, 0xe14(r29)
/* 80ADCCB0  38 A0 00 00 */	li r5, 0
/* 80ADCCB4  4B 67 70 68 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADCCB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADCCBC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADCCC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADCCC4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80ADCCC8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000A@ha */
/* 80ADCCCC  38 84 00 0A */	addi r4, r4, 0x000A /* 0x0100000A@l */
/* 80ADCCD0  4B 7D 27 CC */	b subBgmStart__8Z2SeqMgrFUl
/* 80ADCCD4  48 00 00 28 */	b lbl_80ADCCFC
lbl_80ADCCD8:
/* 80ADCCD8  7F A3 EB 78 */	mr r3, r29
/* 80ADCCDC  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80ADCCE0  38 04 E0 00 */	addi r0, r4, -8192
/* 80ADCCE4  7C 04 07 34 */	extsh r4, r0
/* 80ADCCE8  4B 67 75 68 */	b setAngle__8daNpcF_cFs
lbl_80ADCCEC:
/* 80ADCCEC  7F A3 EB 78 */	mr r3, r29
/* 80ADCCF0  A8 9D 0E 14 */	lha r4, 0xe14(r29)
/* 80ADCCF4  38 A0 00 00 */	li r5, 0
/* 80ADCCF8  4B 67 70 24 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80ADCCFC:
/* 80ADCCFC  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ADCD00  7F A3 EB 78 */	mr r3, r29
/* 80ADCD04  38 81 00 18 */	addi r4, r1, 0x18
/* 80ADCD08  38 A1 00 14 */	addi r5, r1, 0x14
/* 80ADCD0C  7F A6 EB 78 */	mr r6, r29
/* 80ADCD10  38 E0 00 00 */	li r7, 0
/* 80ADCD14  4B 67 6A 04 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADCD18  2C 03 00 00 */	cmpwi r3, 0
/* 80ADCD1C  41 82 00 44 */	beq lbl_80ADCD60
/* 80ADCD20  7F A3 EB 78 */	mr r3, r29
/* 80ADCD24  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80ADCD28  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCD2C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCD30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCD34  7D 89 03 A6 */	mtctr r12
/* 80ADCD38  4E 80 04 21 */	bctrl 
/* 80ADCD3C  7F A3 EB 78 */	mr r3, r29
/* 80ADCD40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80ADCD44  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCD48  38 A0 00 00 */	li r5, 0
/* 80ADCD4C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCD50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADCD54  7D 89 03 A6 */	mtctr r12
/* 80ADCD58  4E 80 04 21 */	bctrl 
/* 80ADCD5C  48 00 00 E0 */	b lbl_80ADCE3C
lbl_80ADCD60:
/* 80ADCD60  2C 1C 00 00 */	cmpwi r28, 0
/* 80ADCD64  41 82 00 D8 */	beq lbl_80ADCE3C
/* 80ADCD68  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ADCD6C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADCD70  40 82 00 CC */	bne lbl_80ADCE3C
/* 80ADCD74  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ADCD78  2C 00 00 03 */	cmpwi r0, 3
/* 80ADCD7C  41 82 00 64 */	beq lbl_80ADCDE0
/* 80ADCD80  40 80 00 14 */	bge lbl_80ADCD94
/* 80ADCD84  2C 00 00 01 */	cmpwi r0, 1
/* 80ADCD88  41 82 00 18 */	beq lbl_80ADCDA0
/* 80ADCD8C  40 80 00 34 */	bge lbl_80ADCDC0
/* 80ADCD90  48 00 00 90 */	b lbl_80ADCE20
lbl_80ADCD94:
/* 80ADCD94  2C 00 00 05 */	cmpwi r0, 5
/* 80ADCD98  40 80 00 88 */	bge lbl_80ADCE20
/* 80ADCD9C  48 00 00 64 */	b lbl_80ADCE00
lbl_80ADCDA0:
/* 80ADCDA0  7F A3 EB 78 */	mr r3, r29
/* 80ADCDA4  38 80 00 08 */	li r4, 8
/* 80ADCDA8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCDAC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCDB0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCDB4  7D 89 03 A6 */	mtctr r12
/* 80ADCDB8  4E 80 04 21 */	bctrl 
/* 80ADCDBC  48 00 00 80 */	b lbl_80ADCE3C
lbl_80ADCDC0:
/* 80ADCDC0  7F A3 EB 78 */	mr r3, r29
/* 80ADCDC4  38 80 00 09 */	li r4, 9
/* 80ADCDC8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCDCC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCDD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCDD4  7D 89 03 A6 */	mtctr r12
/* 80ADCDD8  4E 80 04 21 */	bctrl 
/* 80ADCDDC  48 00 00 60 */	b lbl_80ADCE3C
lbl_80ADCDE0:
/* 80ADCDE0  7F A3 EB 78 */	mr r3, r29
/* 80ADCDE4  38 80 00 0A */	li r4, 0xa
/* 80ADCDE8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCDEC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCDF0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCDF4  7D 89 03 A6 */	mtctr r12
/* 80ADCDF8  4E 80 04 21 */	bctrl 
/* 80ADCDFC  48 00 00 40 */	b lbl_80ADCE3C
lbl_80ADCE00:
/* 80ADCE00  7F A3 EB 78 */	mr r3, r29
/* 80ADCE04  38 80 00 07 */	li r4, 7
/* 80ADCE08  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCE0C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCE10  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCE14  7D 89 03 A6 */	mtctr r12
/* 80ADCE18  4E 80 04 21 */	bctrl 
/* 80ADCE1C  48 00 00 20 */	b lbl_80ADCE3C
lbl_80ADCE20:
/* 80ADCE20  7F A3 EB 78 */	mr r3, r29
/* 80ADCE24  38 80 00 0C */	li r4, 0xc
/* 80ADCE28  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCE2C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCE30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCE34  7D 89 03 A6 */	mtctr r12
/* 80ADCE38  4E 80 04 21 */	bctrl 
lbl_80ADCE3C:
/* 80ADCE3C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADCE40  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303037@ha */
/* 80ADCE44  38 03 30 37 */	addi r0, r3, 0x3037 /* 0x30303037@l */
/* 80ADCE48  7C 04 00 00 */	cmpw r4, r0
/* 80ADCE4C  41 82 04 B4 */	beq lbl_80ADD300
/* 80ADCE50  40 80 00 38 */	bge lbl_80ADCE88
/* 80ADCE54  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ADCE58  7C 04 00 00 */	cmpw r4, r0
/* 80ADCE5C  41 82 01 F8 */	beq lbl_80ADD054
/* 80ADCE60  40 80 00 14 */	bge lbl_80ADCE74
/* 80ADCE64  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADCE68  7C 04 00 00 */	cmpw r4, r0
/* 80ADCE6C  40 80 00 40 */	bge lbl_80ADCEAC
/* 80ADCE70  48 00 08 94 */	b lbl_80ADD704
lbl_80ADCE74:
/* 80ADCE74  38 03 30 35 */	addi r0, r3, 0x3035
/* 80ADCE78  7C 04 00 00 */	cmpw r4, r0
/* 80ADCE7C  41 82 01 D8 */	beq lbl_80ADD054
/* 80ADCE80  40 80 03 9C */	bge lbl_80ADD21C
/* 80ADCE84  48 00 08 80 */	b lbl_80ADD704
lbl_80ADCE88:
/* 80ADCE88  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ADCE8C  7C 04 00 00 */	cmpw r4, r0
/* 80ADCE90  41 82 07 94 */	beq lbl_80ADD624
/* 80ADCE94  40 80 08 70 */	bge lbl_80ADD704
/* 80ADCE98  38 03 30 39 */	addi r0, r3, 0x3039
/* 80ADCE9C  7C 04 00 00 */	cmpw r4, r0
/* 80ADCEA0  41 82 05 2C */	beq lbl_80ADD3CC
/* 80ADCEA4  40 80 08 60 */	bge lbl_80ADD704
/* 80ADCEA8  48 00 04 AC */	b lbl_80ADD354
lbl_80ADCEAC:
/* 80ADCEAC  7F A3 EB 78 */	mr r3, r29
/* 80ADCEB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADCEB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADCEB8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADCEBC  4B 53 D8 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADCEC0  7C 7F 1B 78 */	mr r31, r3
/* 80ADCEC4  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADCEC8  2C 00 00 00 */	cmpwi r0, 0
/* 80ADCECC  40 82 00 D4 */	bne lbl_80ADCFA0
/* 80ADCED0  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 80ADCED4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADCED8  7C 00 F8 50 */	subf r0, r0, r31
/* 80ADCEDC  7C 00 07 34 */	extsh r0, r0
/* 80ADCEE0  C8 3E 04 50 */	lfd f1, 0x450(r30)
/* 80ADCEE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADCEE8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80ADCEEC  3C 00 43 30 */	lis r0, 0x4330
/* 80ADCEF0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADCEF4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80ADCEF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADCEFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADCF00  FC 00 02 10 */	fabs f0, f0
/* 80ADCF04  FC 00 00 18 */	frsp f0, f0
/* 80ADCF08  FC 00 00 1E */	fctiwz f0, f0
/* 80ADCF0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ADCF10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADCF14  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADCF18  40 81 00 40 */	ble lbl_80ADCF58
/* 80ADCF1C  7F A3 EB 78 */	mr r3, r29
/* 80ADCF20  38 80 00 0C */	li r4, 0xc
/* 80ADCF24  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCF28  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCF2C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADCF30  7D 89 03 A6 */	mtctr r12
/* 80ADCF34  4E 80 04 21 */	bctrl 
/* 80ADCF38  7F A3 EB 78 */	mr r3, r29
/* 80ADCF3C  38 80 00 15 */	li r4, 0x15
/* 80ADCF40  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADCF44  38 A0 00 00 */	li r5, 0
/* 80ADCF48  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADCF4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADCF50  7D 89 03 A6 */	mtctr r12
/* 80ADCF54  4E 80 04 21 */	bctrl 
lbl_80ADCF58:
/* 80ADCF58  B3 FD 09 96 */	sth r31, 0x996(r29)
/* 80ADCF5C  38 00 00 00 */	li r0, 0
/* 80ADCF60  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADCF64  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADCF68  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADCF6C  7C 03 00 00 */	cmpw r3, r0
/* 80ADCF70  40 82 00 10 */	bne lbl_80ADCF80
/* 80ADCF74  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADCF78  38 03 00 01 */	addi r0, r3, 1
/* 80ADCF7C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADCF80:
/* 80ADCF80  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADCF84  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADCF88  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCF8C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADCF90  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADCF94  38 03 00 01 */	addi r0, r3, 1
/* 80ADCF98  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADCF9C  48 00 00 60 */	b lbl_80ADCFFC
lbl_80ADCFA0:
/* 80ADCFA0  2C 00 00 01 */	cmpwi r0, 1
/* 80ADCFA4  40 82 00 58 */	bne lbl_80ADCFFC
/* 80ADCFA8  7F A3 EB 78 */	mr r3, r29
/* 80ADCFAC  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADCFB0  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80ADCFB4  38 A0 00 00 */	li r5, 0
/* 80ADCFB8  4B 67 6F 3C */	b turn__8daNpcF_cFsfi
/* 80ADCFBC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADCFC0  41 82 00 2C */	beq lbl_80ADCFEC
/* 80ADCFC4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCFC8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADCFCC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCFD0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADCFD4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCFD8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADCFDC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADCFE0  38 03 00 01 */	addi r0, r3, 1
/* 80ADCFE4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADCFE8  48 00 00 14 */	b lbl_80ADCFFC
lbl_80ADCFEC:
/* 80ADCFEC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCFF0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADCFF4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADCFF8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADCFFC:
/* 80ADCFFC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADD000  2C 00 00 01 */	cmpwi r0, 1
/* 80ADD004  40 81 07 00 */	ble lbl_80ADD704
/* 80ADD008  7F A3 EB 78 */	mr r3, r29
/* 80ADD00C  38 80 00 0C */	li r4, 0xc
/* 80ADD010  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD014  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD018  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD01C  7D 89 03 A6 */	mtctr r12
/* 80ADD020  4E 80 04 21 */	bctrl 
/* 80ADD024  7F A3 EB 78 */	mr r3, r29
/* 80ADD028  38 80 00 00 */	li r4, 0
/* 80ADD02C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD030  38 A0 00 00 */	li r5, 0
/* 80ADD034  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD038  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD03C  7D 89 03 A6 */	mtctr r12
/* 80ADD040  4E 80 04 21 */	bctrl 
/* 80ADD044  38 00 00 00 */	li r0, 0
/* 80ADD048  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD04C  38 60 00 01 */	li r3, 1
/* 80ADD050  48 00 06 B8 */	b lbl_80ADD708
lbl_80ADD054:
/* 80ADD054  7F A3 EB 78 */	mr r3, r29
/* 80ADD058  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADD05C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80ADD060  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80ADD064  4B 53 D6 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADD068  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80ADD06C  7C 60 07 34 */	extsh r0, r3
/* 80ADD070  7C 04 00 00 */	cmpw r4, r0
/* 80ADD074  40 82 00 28 */	bne lbl_80ADD09C
/* 80ADD078  7F A3 EB 78 */	mr r3, r29
/* 80ADD07C  38 80 00 00 */	li r4, 0
/* 80ADD080  38 A0 00 01 */	li r5, 1
/* 80ADD084  38 C0 00 00 */	li r6, 0
/* 80ADD088  4B 67 6C FC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADD08C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD090  41 82 06 74 */	beq lbl_80ADD704
/* 80ADD094  38 60 00 01 */	li r3, 1
/* 80ADD098  48 00 06 70 */	b lbl_80ADD708
lbl_80ADD09C:
/* 80ADD09C  7F A3 EB 78 */	mr r3, r29
/* 80ADD0A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80ADD0A4  4B 53 D6 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADD0A8  7C 7F 1B 78 */	mr r31, r3
/* 80ADD0AC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADD0B0  2C 00 00 00 */	cmpwi r0, 0
/* 80ADD0B4  40 82 00 D4 */	bne lbl_80ADD188
/* 80ADD0B8  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 80ADD0BC  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADD0C0  7C 00 F8 50 */	subf r0, r0, r31
/* 80ADD0C4  7C 00 07 34 */	extsh r0, r0
/* 80ADD0C8  C8 3E 04 50 */	lfd f1, 0x450(r30)
/* 80ADD0CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADD0D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADD0D4  3C 00 43 30 */	lis r0, 0x4330
/* 80ADD0D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADD0DC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADD0E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADD0E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADD0E8  FC 00 02 10 */	fabs f0, f0
/* 80ADD0EC  FC 00 00 18 */	frsp f0, f0
/* 80ADD0F0  FC 00 00 1E */	fctiwz f0, f0
/* 80ADD0F4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80ADD0F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80ADD0FC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADD100  40 81 00 40 */	ble lbl_80ADD140
/* 80ADD104  7F A3 EB 78 */	mr r3, r29
/* 80ADD108  38 80 00 0C */	li r4, 0xc
/* 80ADD10C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD110  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD114  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD118  7D 89 03 A6 */	mtctr r12
/* 80ADD11C  4E 80 04 21 */	bctrl 
/* 80ADD120  7F A3 EB 78 */	mr r3, r29
/* 80ADD124  38 80 00 15 */	li r4, 0x15
/* 80ADD128  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD12C  38 A0 00 00 */	li r5, 0
/* 80ADD130  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD134  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD138  7D 89 03 A6 */	mtctr r12
/* 80ADD13C  4E 80 04 21 */	bctrl 
lbl_80ADD140:
/* 80ADD140  B3 FD 09 96 */	sth r31, 0x996(r29)
/* 80ADD144  38 00 00 00 */	li r0, 0
/* 80ADD148  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADD14C  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADD150  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADD154  7C 03 00 00 */	cmpw r3, r0
/* 80ADD158  40 82 00 10 */	bne lbl_80ADD168
/* 80ADD15C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD160  38 03 00 01 */	addi r0, r3, 1
/* 80ADD164  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADD168:
/* 80ADD168  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADD16C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADD170  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD174  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD178  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD17C  38 03 00 01 */	addi r0, r3, 1
/* 80ADD180  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD184  48 00 00 60 */	b lbl_80ADD1E4
lbl_80ADD188:
/* 80ADD188  2C 00 00 01 */	cmpwi r0, 1
/* 80ADD18C  40 82 00 58 */	bne lbl_80ADD1E4
/* 80ADD190  7F A3 EB 78 */	mr r3, r29
/* 80ADD194  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADD198  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80ADD19C  38 A0 00 00 */	li r5, 0
/* 80ADD1A0  4B 67 6D 54 */	b turn__8daNpcF_cFsfi
/* 80ADD1A4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD1A8  41 82 00 2C */	beq lbl_80ADD1D4
/* 80ADD1AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD1B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD1B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD1B8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADD1BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD1C0  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADD1C4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD1C8  38 03 00 01 */	addi r0, r3, 1
/* 80ADD1CC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD1D0  48 00 00 14 */	b lbl_80ADD1E4
lbl_80ADD1D4:
/* 80ADD1D4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD1D8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD1DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD1E0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADD1E4:
/* 80ADD1E4  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADD1E8  2C 00 00 01 */	cmpwi r0, 1
/* 80ADD1EC  40 81 05 18 */	ble lbl_80ADD704
/* 80ADD1F0  7F A3 EB 78 */	mr r3, r29
/* 80ADD1F4  38 80 00 00 */	li r4, 0
/* 80ADD1F8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD1FC  38 A0 00 00 */	li r5, 0
/* 80ADD200  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD204  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD208  7D 89 03 A6 */	mtctr r12
/* 80ADD20C  4E 80 04 21 */	bctrl 
/* 80ADD210  38 00 00 00 */	li r0, 0
/* 80ADD214  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD218  48 00 04 EC */	b lbl_80ADD704
lbl_80ADD21C:
/* 80ADD21C  C0 1E 04 90 */	lfs f0, 0x490(r30)
/* 80ADD220  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80ADD224  C0 1E 04 94 */	lfs f0, 0x494(r30)
/* 80ADD228  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80ADD22C  C0 1E 04 98 */	lfs f0, 0x498(r30)
/* 80ADD230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ADD234  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80ADD238  38 81 00 1C */	addi r4, r1, 0x1c
/* 80ADD23C  4B 79 39 C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADD240  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADD244  2C 00 00 00 */	cmpwi r0, 0
/* 80ADD248  40 82 00 4C */	bne lbl_80ADD294
/* 80ADD24C  B0 7D 09 96 */	sth r3, 0x996(r29)
/* 80ADD250  38 00 00 00 */	li r0, 0
/* 80ADD254  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADD258  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADD25C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADD260  7C 03 00 00 */	cmpw r3, r0
/* 80ADD264  40 82 00 10 */	bne lbl_80ADD274
/* 80ADD268  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD26C  38 03 00 01 */	addi r0, r3, 1
/* 80ADD270  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADD274:
/* 80ADD274  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADD278  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADD27C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD280  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD284  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD288  38 03 00 01 */	addi r0, r3, 1
/* 80ADD28C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD290  48 00 00 60 */	b lbl_80ADD2F0
lbl_80ADD294:
/* 80ADD294  2C 00 00 01 */	cmpwi r0, 1
/* 80ADD298  40 82 00 58 */	bne lbl_80ADD2F0
/* 80ADD29C  7F A3 EB 78 */	mr r3, r29
/* 80ADD2A0  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADD2A4  C0 3E 04 9C */	lfs f1, 0x49c(r30)
/* 80ADD2A8  38 A0 00 00 */	li r5, 0
/* 80ADD2AC  4B 67 6C 48 */	b turn__8daNpcF_cFsfi
/* 80ADD2B0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD2B4  41 82 00 2C */	beq lbl_80ADD2E0
/* 80ADD2B8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD2BC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD2C0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD2C4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADD2C8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD2CC  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADD2D0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD2D4  38 03 00 01 */	addi r0, r3, 1
/* 80ADD2D8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD2DC  48 00 00 14 */	b lbl_80ADD2F0
lbl_80ADD2E0:
/* 80ADD2E0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD2E4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD2E8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD2EC  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADD2F0:
/* 80ADD2F0  C0 1E 04 A0 */	lfs f0, 0x4a0(r30)
/* 80ADD2F4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80ADD2F8  38 60 00 01 */	li r3, 1
/* 80ADD2FC  48 00 04 0C */	b lbl_80ADD708
lbl_80ADD300:
/* 80ADD300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADD304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADD308  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ADD30C  38 A3 04 D0 */	addi r5, r3, 0x4d0
/* 80ADD310  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200A4@ha */
/* 80ADD314  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000200A4@l */
/* 80ADD318  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADD31C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADD320  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADD324  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADD328  38 81 00 10 */	addi r4, r1, 0x10
/* 80ADD32C  38 C0 00 00 */	li r6, 0
/* 80ADD330  38 E0 00 00 */	li r7, 0
/* 80ADD334  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80ADD338  FC 40 08 90 */	fmr f2, f1
/* 80ADD33C  C0 7E 04 3C */	lfs f3, 0x43c(r30)
/* 80ADD340  FC 80 18 90 */	fmr f4, f3
/* 80ADD344  39 00 00 00 */	li r8, 0
/* 80ADD348  4B 7C F1 C4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80ADD34C  38 60 00 01 */	li r3, 1
/* 80ADD350  48 00 03 B8 */	b lbl_80ADD708
lbl_80ADD354:
/* 80ADD354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADD358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADD35C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ADD360  38 A3 04 D0 */	addi r5, r3, 0x4d0
/* 80ADD364  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200A4@ha */
/* 80ADD368  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000200A4@l */
/* 80ADD36C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ADD370  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADD374  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADD378  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADD37C  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADD380  38 C0 00 00 */	li r6, 0
/* 80ADD384  38 E0 00 00 */	li r7, 0
/* 80ADD388  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80ADD38C  FC 40 08 90 */	fmr f2, f1
/* 80ADD390  C0 7E 04 3C */	lfs f3, 0x43c(r30)
/* 80ADD394  FC 80 18 90 */	fmr f4, f3
/* 80ADD398  39 00 00 00 */	li r8, 0
/* 80ADD39C  4B 7C F1 70 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80ADD3A0  7F A3 EB 78 */	mr r3, r29
/* 80ADD3A4  38 80 00 00 */	li r4, 0
/* 80ADD3A8  38 A0 00 01 */	li r5, 1
/* 80ADD3AC  38 C0 00 00 */	li r6, 0
/* 80ADD3B0  4B 67 69 D4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADD3B4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD3B8  41 82 03 4C */	beq lbl_80ADD704
/* 80ADD3BC  7F A3 EB 78 */	mr r3, r29
/* 80ADD3C0  4B 53 C8 BC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80ADD3C4  38 60 00 01 */	li r3, 1
/* 80ADD3C8  48 00 03 40 */	b lbl_80ADD708
lbl_80ADD3CC:
/* 80ADD3CC  AB 9D 04 B6 */	lha r28, 0x4b6(r29)
/* 80ADD3D0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADD3D4  7C 1C 00 00 */	cmpw r28, r0
/* 80ADD3D8  40 82 00 E0 */	bne lbl_80ADD4B8
/* 80ADD3DC  7F A3 EB 78 */	mr r3, r29
/* 80ADD3E0  38 80 00 00 */	li r4, 0
/* 80ADD3E4  38 A0 00 01 */	li r5, 1
/* 80ADD3E8  38 C0 00 00 */	li r6, 0
/* 80ADD3EC  4B 67 69 98 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADD3F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD3F4  41 82 03 10 */	beq lbl_80ADD704
/* 80ADD3F8  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80ADD3FC  2C 00 00 12 */	cmpwi r0, 0x12
/* 80ADD400  41 82 00 4C */	beq lbl_80ADD44C
/* 80ADD404  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADD408  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADD40C  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADD410  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80ADD414  38 00 00 BE */	li r0, 0xbe
/* 80ADD418  90 03 04 20 */	stw r0, 0x420(r3)
/* 80ADD41C  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80ADD420  EC 43 00 28 */	fsubs f2, f3, f0
/* 80ADD424  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80ADD428  C8 3E 04 A8 */	lfd f1, 0x4a8(r30)
/* 80ADD42C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADD430  3C 00 43 30 */	lis r0, 0x4330
/* 80ADD434  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADD438  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADD43C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADD440  EC 02 00 24 */	fdivs f0, f2, f0
/* 80ADD444  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80ADD448  D0 63 04 1C */	stfs f3, 0x41c(r3)
lbl_80ADD44C:
/* 80ADD44C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F0@ha */
/* 80ADD450  38 03 00 F0 */	addi r0, r3, 0x00F0 /* 0x000500F0@l */
/* 80ADD454  90 01 00 08 */	stw r0, 8(r1)
/* 80ADD458  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80ADD45C  38 81 00 08 */	addi r4, r1, 8
/* 80ADD460  38 A0 FF FF */	li r5, -1
/* 80ADD464  81 9D 0B 50 */	lwz r12, 0xb50(r29)
/* 80ADD468  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80ADD46C  7D 89 03 A6 */	mtctr r12
/* 80ADD470  4E 80 04 21 */	bctrl 
/* 80ADD474  7F A3 EB 78 */	mr r3, r29
/* 80ADD478  38 80 00 0B */	li r4, 0xb
/* 80ADD47C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD480  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD484  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD488  7D 89 03 A6 */	mtctr r12
/* 80ADD48C  4E 80 04 21 */	bctrl 
/* 80ADD490  7F A3 EB 78 */	mr r3, r29
/* 80ADD494  38 80 00 12 */	li r4, 0x12
/* 80ADD498  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD49C  38 A0 00 00 */	li r5, 0
/* 80ADD4A0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD4A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD4A8  7D 89 03 A6 */	mtctr r12
/* 80ADD4AC  4E 80 04 21 */	bctrl 
/* 80ADD4B0  38 60 00 01 */	li r3, 1
/* 80ADD4B4  48 00 02 54 */	b lbl_80ADD708
lbl_80ADD4B8:
/* 80ADD4B8  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD4BC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD4C0  40 82 00 D0 */	bne lbl_80ADD590
/* 80ADD4C4  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 80ADD4C8  7C 00 E0 50 */	subf r0, r0, r28
/* 80ADD4CC  7C 00 07 34 */	extsh r0, r0
/* 80ADD4D0  C8 3E 04 50 */	lfd f1, 0x450(r30)
/* 80ADD4D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADD4D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADD4DC  3C 00 43 30 */	lis r0, 0x4330
/* 80ADD4E0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADD4E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADD4E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADD4EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADD4F0  FC 00 02 10 */	fabs f0, f0
/* 80ADD4F4  FC 00 00 18 */	frsp f0, f0
/* 80ADD4F8  FC 00 00 1E */	fctiwz f0, f0
/* 80ADD4FC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80ADD500  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80ADD504  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADD508  40 81 00 40 */	ble lbl_80ADD548
/* 80ADD50C  7F A3 EB 78 */	mr r3, r29
/* 80ADD510  38 80 00 0C */	li r4, 0xc
/* 80ADD514  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD518  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD51C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD520  7D 89 03 A6 */	mtctr r12
/* 80ADD524  4E 80 04 21 */	bctrl 
/* 80ADD528  7F A3 EB 78 */	mr r3, r29
/* 80ADD52C  38 80 00 15 */	li r4, 0x15
/* 80ADD530  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD534  38 A0 00 00 */	li r5, 0
/* 80ADD538  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD53C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD540  7D 89 03 A6 */	mtctr r12
/* 80ADD544  4E 80 04 21 */	bctrl 
lbl_80ADD548:
/* 80ADD548  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80ADD54C  38 00 00 00 */	li r0, 0
/* 80ADD550  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADD554  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADD558  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADD55C  7C 03 00 00 */	cmpw r3, r0
/* 80ADD560  40 82 00 10 */	bne lbl_80ADD570
/* 80ADD564  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD568  38 03 00 01 */	addi r0, r3, 1
/* 80ADD56C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADD570:
/* 80ADD570  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADD574  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADD578  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD57C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD580  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD584  38 03 00 01 */	addi r0, r3, 1
/* 80ADD588  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD58C  48 00 00 60 */	b lbl_80ADD5EC
lbl_80ADD590:
/* 80ADD590  2C 03 00 01 */	cmpwi r3, 1
/* 80ADD594  40 82 00 58 */	bne lbl_80ADD5EC
/* 80ADD598  7F A3 EB 78 */	mr r3, r29
/* 80ADD59C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADD5A0  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80ADD5A4  38 A0 00 00 */	li r5, 0
/* 80ADD5A8  4B 67 69 4C */	b turn__8daNpcF_cFsfi
/* 80ADD5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD5B0  41 82 00 2C */	beq lbl_80ADD5DC
/* 80ADD5B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD5B8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD5BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD5C0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADD5C4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD5C8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADD5CC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADD5D0  38 03 00 01 */	addi r0, r3, 1
/* 80ADD5D4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD5D8  48 00 00 14 */	b lbl_80ADD5EC
lbl_80ADD5DC:
/* 80ADD5DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD5E0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADD5E4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADD5E8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADD5EC:
/* 80ADD5EC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADD5F0  2C 00 00 01 */	cmpwi r0, 1
/* 80ADD5F4  40 81 01 10 */	ble lbl_80ADD704
/* 80ADD5F8  7F A3 EB 78 */	mr r3, r29
/* 80ADD5FC  38 80 00 00 */	li r4, 0
/* 80ADD600  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD604  38 A0 00 00 */	li r5, 0
/* 80ADD608  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD60C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD610  7D 89 03 A6 */	mtctr r12
/* 80ADD614  4E 80 04 21 */	bctrl 
/* 80ADD618  38 00 00 00 */	li r0, 0
/* 80ADD61C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADD620  48 00 00 E4 */	b lbl_80ADD704
lbl_80ADD624:
/* 80ADD624  7F A3 EB 78 */	mr r3, r29
/* 80ADD628  38 80 00 00 */	li r4, 0
/* 80ADD62C  38 A0 00 01 */	li r5, 1
/* 80ADD630  38 C0 00 00 */	li r6, 0
/* 80ADD634  4B 67 67 50 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADD638  2C 03 00 00 */	cmpwi r3, 0
/* 80ADD63C  41 82 00 C8 */	beq lbl_80ADD704
/* 80ADD640  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80ADD644  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80ADD648  80 63 00 00 */	lwz r3, 0(r3)
/* 80ADD64C  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80ADD650  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 80ADD654  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80ADD658  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 80ADD65C  38 00 00 00 */	li r0, 0
/* 80ADD660  90 03 04 10 */	stw r0, 0x410(r3)
/* 80ADD664  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 80ADD668  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80ADD66C  38 00 00 46 */	li r0, 0x46
/* 80ADD670  90 03 04 20 */	stw r0, 0x420(r3)
/* 80ADD674  EC 43 00 28 */	fsubs f2, f3, f0
/* 80ADD678  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80ADD67C  C8 3E 04 A8 */	lfd f1, 0x4a8(r30)
/* 80ADD680  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADD684  3C 00 43 30 */	lis r0, 0x4330
/* 80ADD688  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADD68C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADD690  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADD694  EC 02 00 24 */	fdivs f0, f2, f0
/* 80ADD698  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80ADD69C  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80ADD6A0  7F A3 EB 78 */	mr r3, r29
/* 80ADD6A4  38 80 00 0C */	li r4, 0xc
/* 80ADD6A8  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD6AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD6B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADD6B4  7D 89 03 A6 */	mtctr r12
/* 80ADD6B8  4E 80 04 21 */	bctrl 
/* 80ADD6BC  7F A3 EB 78 */	mr r3, r29
/* 80ADD6C0  38 80 00 00 */	li r4, 0
/* 80ADD6C4  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADD6C8  38 A0 00 00 */	li r5, 0
/* 80ADD6CC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADD6D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADD6D4  7D 89 03 A6 */	mtctr r12
/* 80ADD6D8  4E 80 04 21 */	bctrl 
/* 80ADD6DC  7F A3 EB 78 */	mr r3, r29
/* 80ADD6E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADD6E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADD6E8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADD6EC  4B 53 D0 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADD6F0  7C 64 1B 78 */	mr r4, r3
/* 80ADD6F4  7F A3 EB 78 */	mr r3, r29
/* 80ADD6F8  4B 67 6B 58 */	b setAngle__8daNpcF_cFs
/* 80ADD6FC  38 60 00 01 */	li r3, 1
/* 80ADD700  48 00 00 08 */	b lbl_80ADD708
lbl_80ADD704:
/* 80ADD704  38 60 00 00 */	li r3, 0
lbl_80ADD708:
/* 80ADD708  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADD70C  4B 88 4B 14 */	b _restgpr_27
/* 80ADD710  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80ADD714  7C 08 03 A6 */	mtlr r0
/* 80ADD718  38 21 00 50 */	addi r1, r1, 0x50
/* 80ADD71C  4E 80 00 20 */	blr 
