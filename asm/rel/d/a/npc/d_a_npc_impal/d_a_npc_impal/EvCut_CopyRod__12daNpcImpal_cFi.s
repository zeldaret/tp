lbl_80A0A950:
/* 80A0A950  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A0A954  7C 08 02 A6 */	mflr r0
/* 80A0A958  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A0A95C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A0A960  4B 95 78 70 */	b _savegpr_26
/* 80A0A964  7C 7E 1B 78 */	mr r30, r3
/* 80A0A968  7C 9A 23 78 */	mr r26, r4
/* 80A0A96C  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha
/* 80A0A970  3B E3 C2 70 */	addi r31, r3, m__18daNpcImpal_Param_c@l
/* 80A0A974  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0A978  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80A0A97C  3B 7C 4F F8 */	addi r27, r28, 0x4ff8
/* 80A0A980  7F 63 DB 78 */	mr r3, r27
/* 80A0A984  4B 63 D5 D8 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80A0A988  7C 7D 1B 78 */	mr r29, r3
/* 80A0A98C  7F 63 DB 78 */	mr r3, r27
/* 80A0A990  7F 44 D3 78 */	mr r4, r26
/* 80A0A994  4B 63 D3 B8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A0A998  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A99C  41 82 01 04 */	beq lbl_80A0AAA0
/* 80A0A9A0  80 9D 00 00 */	lwz r4, 0(r29)
/* 80A0A9A4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80A0A9A8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80A0A9AC  7C 04 00 00 */	cmpw r4, r0
/* 80A0A9B0  41 82 00 64 */	beq lbl_80A0AA14
/* 80A0A9B4  40 80 00 18 */	bge lbl_80A0A9CC
/* 80A0A9B8  38 03 30 30 */	addi r0, r3, 0x3030
/* 80A0A9BC  7C 04 00 00 */	cmpw r4, r0
/* 80A0A9C0  41 82 00 E0 */	beq lbl_80A0AAA0
/* 80A0A9C4  40 80 00 1C */	bge lbl_80A0A9E0
/* 80A0A9C8  48 00 00 D8 */	b lbl_80A0AAA0
lbl_80A0A9CC:
/* 80A0A9CC  38 03 30 34 */	addi r0, r3, 0x3034
/* 80A0A9D0  7C 04 00 00 */	cmpw r4, r0
/* 80A0A9D4  41 82 00 40 */	beq lbl_80A0AA14
/* 80A0A9D8  40 80 00 C8 */	bge lbl_80A0AAA0
/* 80A0A9DC  48 00 00 6C */	b lbl_80A0AA48
lbl_80A0A9E0:
/* 80A0A9E0  7F C3 F3 78 */	mr r3, r30
/* 80A0A9E4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A0A9E8  4B 74 98 68 */	b setAngle__8daNpcF_cFs
/* 80A0A9EC  A8 1E 0D E4 */	lha r0, 0xde4(r30)
/* 80A0A9F0  2C 00 00 01 */	cmpwi r0, 1
/* 80A0A9F4  41 82 00 0C */	beq lbl_80A0AA00
/* 80A0A9F8  38 00 00 01 */	li r0, 1
/* 80A0A9FC  B0 1E 0D E4 */	sth r0, 0xde4(r30)
lbl_80A0AA00:
/* 80A0AA00  7F C3 F3 78 */	mr r3, r30
/* 80A0AA04  38 80 00 05 */	li r4, 5
/* 80A0AA08  38 A0 00 00 */	li r5, 0
/* 80A0AA0C  4B 74 93 10 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A0AA10  48 00 00 90 */	b lbl_80A0AAA0
lbl_80A0AA14:
/* 80A0AA14  7F C3 F3 78 */	mr r3, r30
/* 80A0AA18  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A0AA1C  4B 74 98 34 */	b setAngle__8daNpcF_cFs
/* 80A0AA20  A8 1E 0D E4 */	lha r0, 0xde4(r30)
/* 80A0AA24  2C 00 00 02 */	cmpwi r0, 2
/* 80A0AA28  41 82 00 0C */	beq lbl_80A0AA34
/* 80A0AA2C  38 00 00 02 */	li r0, 2
/* 80A0AA30  B0 1E 0D E4 */	sth r0, 0xde4(r30)
lbl_80A0AA34:
/* 80A0AA34  7F C3 F3 78 */	mr r3, r30
/* 80A0AA38  38 80 00 05 */	li r4, 5
/* 80A0AA3C  38 A0 00 00 */	li r5, 0
/* 80A0AA40  4B 74 92 DC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A0AA44  48 00 00 5C */	b lbl_80A0AAA0
lbl_80A0AA48:
/* 80A0AA48  38 00 00 00 */	li r0, 0
/* 80A0AA4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0AA50  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A0AA54  38 81 00 10 */	addi r4, r1, 0x10
/* 80A0AA58  4B 83 FA D0 */	b getEventId__10dMsgFlow_cFPi
/* 80A0AA5C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A0AA60  28 00 00 01 */	cmplwi r0, 1
/* 80A0AA64  40 82 00 3C */	bne lbl_80A0AAA0
/* 80A0AA68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A0AA6C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A0AA70  38 A0 00 00 */	li r5, 0
/* 80A0AA74  38 C0 FF FF */	li r6, -1
/* 80A0AA78  38 E0 FF FF */	li r7, -1
/* 80A0AA7C  39 00 00 00 */	li r8, 0
/* 80A0AA80  39 20 00 00 */	li r9, 0
/* 80A0AA84  4B 61 11 64 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A0AA88  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 80A0AA8C  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80A0AA90  80 9E 0D D4 */	lwz r4, 0xdd4(r30)
/* 80A0AA94  4B 63 8C 58 */	b setPtI_Id__14dEvt_control_cFUi
/* 80A0AA98  38 00 FF FF */	li r0, -1
/* 80A0AA9C  90 1E 0D D4 */	stw r0, 0xdd4(r30)
lbl_80A0AAA0:
/* 80A0AAA0  83 7E 09 50 */	lwz r27, 0x950(r30)
/* 80A0AAA4  7F C3 F3 78 */	mr r3, r30
/* 80A0AAA8  38 81 00 0C */	addi r4, r1, 0xc
/* 80A0AAAC  38 A1 00 08 */	addi r5, r1, 8
/* 80A0AAB0  7F C6 F3 78 */	mr r6, r30
/* 80A0AAB4  38 E0 00 00 */	li r7, 0
/* 80A0AAB8  4B 74 8C 60 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A0AABC  2C 03 00 00 */	cmpwi r3, 0
/* 80A0AAC0  41 82 00 44 */	beq lbl_80A0AB04
/* 80A0AAC4  7F C3 F3 78 */	mr r3, r30
/* 80A0AAC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A0AACC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0AAD0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0AAD4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0AAD8  7D 89 03 A6 */	mtctr r12
/* 80A0AADC  4E 80 04 21 */	bctrl 
/* 80A0AAE0  7F C3 F3 78 */	mr r3, r30
/* 80A0AAE4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A0AAE8  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0AAEC  38 A0 00 00 */	li r5, 0
/* 80A0AAF0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0AAF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0AAF8  7D 89 03 A6 */	mtctr r12
/* 80A0AAFC  4E 80 04 21 */	bctrl 
/* 80A0AB00  48 00 00 E0 */	b lbl_80A0ABE0
lbl_80A0AB04:
/* 80A0AB04  2C 1B 00 00 */	cmpwi r27, 0
/* 80A0AB08  41 82 00 D8 */	beq lbl_80A0ABE0
/* 80A0AB0C  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80A0AB10  2C 00 00 00 */	cmpwi r0, 0
/* 80A0AB14  40 82 00 CC */	bne lbl_80A0ABE0
/* 80A0AB18  A8 1E 09 DE */	lha r0, 0x9de(r30)
/* 80A0AB1C  2C 00 00 02 */	cmpwi r0, 2
/* 80A0AB20  41 82 00 64 */	beq lbl_80A0AB84
/* 80A0AB24  40 80 00 14 */	bge lbl_80A0AB38
/* 80A0AB28  2C 00 00 00 */	cmpwi r0, 0
/* 80A0AB2C  41 82 00 18 */	beq lbl_80A0AB44
/* 80A0AB30  40 80 00 34 */	bge lbl_80A0AB64
/* 80A0AB34  48 00 00 90 */	b lbl_80A0ABC4
lbl_80A0AB38:
/* 80A0AB38  2C 00 00 04 */	cmpwi r0, 4
/* 80A0AB3C  40 80 00 88 */	bge lbl_80A0ABC4
/* 80A0AB40  48 00 00 64 */	b lbl_80A0ABA4
lbl_80A0AB44:
/* 80A0AB44  7F C3 F3 78 */	mr r3, r30
/* 80A0AB48  38 80 00 07 */	li r4, 7
/* 80A0AB4C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0AB50  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0AB54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0AB58  7D 89 03 A6 */	mtctr r12
/* 80A0AB5C  4E 80 04 21 */	bctrl 
/* 80A0AB60  48 00 00 80 */	b lbl_80A0ABE0
lbl_80A0AB64:
/* 80A0AB64  7F C3 F3 78 */	mr r3, r30
/* 80A0AB68  38 80 00 04 */	li r4, 4
/* 80A0AB6C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0AB70  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0AB74  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0AB78  7D 89 03 A6 */	mtctr r12
/* 80A0AB7C  4E 80 04 21 */	bctrl 
/* 80A0AB80  48 00 00 60 */	b lbl_80A0ABE0
lbl_80A0AB84:
/* 80A0AB84  7F C3 F3 78 */	mr r3, r30
/* 80A0AB88  38 80 00 05 */	li r4, 5
/* 80A0AB8C  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0AB90  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0AB94  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0AB98  7D 89 03 A6 */	mtctr r12
/* 80A0AB9C  4E 80 04 21 */	bctrl 
/* 80A0ABA0  48 00 00 40 */	b lbl_80A0ABE0
lbl_80A0ABA4:
/* 80A0ABA4  7F C3 F3 78 */	mr r3, r30
/* 80A0ABA8  38 80 00 06 */	li r4, 6
/* 80A0ABAC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0ABB0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0ABB4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0ABB8  7D 89 03 A6 */	mtctr r12
/* 80A0ABBC  4E 80 04 21 */	bctrl 
/* 80A0ABC0  48 00 00 20 */	b lbl_80A0ABE0
lbl_80A0ABC4:
/* 80A0ABC4  7F C3 F3 78 */	mr r3, r30
/* 80A0ABC8  38 80 00 07 */	li r4, 7
/* 80A0ABCC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80A0ABD0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A0ABD4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0ABD8  7D 89 03 A6 */	mtctr r12
/* 80A0ABDC  4E 80 04 21 */	bctrl 
lbl_80A0ABE0:
/* 80A0ABE0  80 9D 00 00 */	lwz r4, 0(r29)
/* 80A0ABE4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80A0ABE8  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80A0ABEC  7C 04 00 00 */	cmpw r4, r0
/* 80A0ABF0  41 82 01 2C */	beq lbl_80A0AD1C
/* 80A0ABF4  40 80 00 18 */	bge lbl_80A0AC0C
/* 80A0ABF8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A0ABFC  7C 04 00 00 */	cmpw r4, r0
/* 80A0AC00  41 82 00 1C */	beq lbl_80A0AC1C
/* 80A0AC04  40 80 00 F4 */	bge lbl_80A0ACF8
/* 80A0AC08  48 00 01 1C */	b lbl_80A0AD24
lbl_80A0AC0C:
/* 80A0AC0C  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A0AC10  7C 04 00 00 */	cmpw r4, r0
/* 80A0AC14  40 80 01 10 */	bge lbl_80A0AD24
/* 80A0AC18  48 00 00 E0 */	b lbl_80A0ACF8
lbl_80A0AC1C:
/* 80A0AC1C  7F C3 F3 78 */	mr r3, r30
/* 80A0AC20  38 80 00 00 */	li r4, 0
/* 80A0AC24  38 A0 00 01 */	li r5, 1
/* 80A0AC28  38 C0 00 00 */	li r6, 0
/* 80A0AC2C  4B 74 91 58 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A0AC30  2C 03 00 00 */	cmpwi r3, 0
/* 80A0AC34  41 82 00 0C */	beq lbl_80A0AC40
/* 80A0AC38  38 60 00 01 */	li r3, 1
/* 80A0AC3C  48 00 00 EC */	b lbl_80A0AD28
lbl_80A0AC40:
/* 80A0AC40  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A0AC44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A0AC48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A0AC4C  C0 1F 02 3C */	lfs f0, 0x23c(r31)
/* 80A0AC50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A0AC54  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A0AC58  4B 60 21 0C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A0AC5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0AC60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0AC64  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A0AC68  4B 60 17 CC */	b mDoMtx_YrotM__FPA4_fs
/* 80A0AC6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0AC70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0AC74  38 81 00 20 */	addi r4, r1, 0x20
/* 80A0AC78  7C 85 23 78 */	mr r5, r4
/* 80A0AC7C  4B 93 C0 F0 */	b PSMTXMultVec
/* 80A0AC80  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A0AC84  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A0AC88  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A0AC8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A0AC90  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A0AC94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A0AC98  C0 1F 02 40 */	lfs f0, 0x240(r31)
/* 80A0AC9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A0ACA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A0ACA4  38 61 00 14 */	addi r3, r1, 0x14
/* 80A0ACA8  4B 61 30 14 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A0ACAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0ACB0  41 82 00 10 */	beq lbl_80A0ACC0
/* 80A0ACB4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A0ACB8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A0ACBC  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80A0ACC0:
/* 80A0ACC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80A0ACC4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A0ACC8  4B 86 5F 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A0ACCC  7C 65 1B 78 */	mr r5, r3
/* 80A0ACD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0ACD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0ACD8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A0ACDC  38 81 00 20 */	addi r4, r1, 0x20
/* 80A0ACE0  38 C0 00 00 */	li r6, 0
/* 80A0ACE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A0ACE8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A0ACEC  7D 89 03 A6 */	mtctr r12
/* 80A0ACF0  4E 80 04 21 */	bctrl 
/* 80A0ACF4  48 00 00 30 */	b lbl_80A0AD24
lbl_80A0ACF8:
/* 80A0ACF8  7F C3 F3 78 */	mr r3, r30
/* 80A0ACFC  38 80 00 00 */	li r4, 0
/* 80A0AD00  38 A0 00 01 */	li r5, 1
/* 80A0AD04  38 C0 00 00 */	li r6, 0
/* 80A0AD08  4B 74 90 7C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A0AD0C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0AD10  41 82 00 14 */	beq lbl_80A0AD24
/* 80A0AD14  38 60 00 01 */	li r3, 1
/* 80A0AD18  48 00 00 10 */	b lbl_80A0AD28
lbl_80A0AD1C:
/* 80A0AD1C  38 60 00 01 */	li r3, 1
/* 80A0AD20  48 00 00 08 */	b lbl_80A0AD28
lbl_80A0AD24:
/* 80A0AD24  38 60 00 00 */	li r3, 0
lbl_80A0AD28:
/* 80A0AD28  39 61 00 50 */	addi r11, r1, 0x50
/* 80A0AD2C  4B 95 74 F0 */	b _restgpr_26
/* 80A0AD30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A0AD34  7C 08 03 A6 */	mtlr r0
/* 80A0AD38  38 21 00 50 */	addi r1, r1, 0x50
/* 80A0AD3C  4E 80 00 20 */	blr 
