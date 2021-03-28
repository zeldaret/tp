lbl_80B3DCE8:
/* 80B3DCE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B3DCEC  7C 08 02 A6 */	mflr r0
/* 80B3DCF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3DCF4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3DCF8  4B 82 44 DC */	b _savegpr_27
/* 80B3DCFC  7C 7E 1B 78 */	mr r30, r3
/* 80B3DD00  7C 9B 23 78 */	mr r27, r4
/* 80B3DD04  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B3DD08  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l
/* 80B3DD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3DD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3DD14  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B3DD18  7F 83 E3 78 */	mr r3, r28
/* 80B3DD1C  4B 50 A2 40 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B3DD20  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B3DD24  40 82 00 0C */	bne lbl_80B3DD30
/* 80B3DD28  38 60 00 00 */	li r3, 0
/* 80B3DD2C  48 00 03 B8 */	b lbl_80B3E0E4
lbl_80B3DD30:
/* 80B3DD30  7F 83 E3 78 */	mr r3, r28
/* 80B3DD34  7F 64 DB 78 */	mr r4, r27
/* 80B3DD38  4B 50 A0 14 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B3DD3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DD40  41 82 00 60 */	beq lbl_80B3DDA0
/* 80B3DD44  80 9D 00 00 */	lwz r4, 0(r29)
/* 80B3DD48  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80B3DD4C  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80B3DD50  7C 04 00 00 */	cmpw r4, r0
/* 80B3DD54  41 82 00 08 */	beq lbl_80B3DD5C
/* 80B3DD58  48 00 00 48 */	b lbl_80B3DDA0
lbl_80B3DD5C:
/* 80B3DD5C  A8 1E 0E 90 */	lha r0, 0xe90(r30)
/* 80B3DD60  2C 00 00 03 */	cmpwi r0, 3
/* 80B3DD64  41 82 00 0C */	beq lbl_80B3DD70
/* 80B3DD68  38 00 00 03 */	li r0, 3
/* 80B3DD6C  B0 1E 0E 90 */	sth r0, 0xe90(r30)
lbl_80B3DD70:
/* 80B3DD70  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B3DD74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B3DD78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B3DD7C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3DD80  4B 61 29 3C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3DD84  7F C3 F3 78 */	mr r3, r30
/* 80B3DD88  80 9E 0E 88 */	lwz r4, 0xe88(r30)
/* 80B3DD8C  38 A0 00 00 */	li r5, 0
/* 80B3DD90  4B 61 5F 8C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3DD94  38 00 00 00 */	li r0, 0
/* 80B3DD98  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B3DD9C  90 1E 09 50 */	stw r0, 0x950(r30)
lbl_80B3DDA0:
/* 80B3DDA0  83 9E 09 50 */	lwz r28, 0x950(r30)
/* 80B3DDA4  7F C3 F3 78 */	mr r3, r30
/* 80B3DDA8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3DDAC  38 A1 00 08 */	addi r5, r1, 8
/* 80B3DDB0  7F C6 F3 78 */	mr r6, r30
/* 80B3DDB4  38 E0 00 00 */	li r7, 0
/* 80B3DDB8  4B 61 59 60 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3DDBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DDC0  41 82 00 44 */	beq lbl_80B3DE04
/* 80B3DDC4  7F C3 F3 78 */	mr r3, r30
/* 80B3DDC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B3DDCC  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DDD0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DDD4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3DDD8  7D 89 03 A6 */	mtctr r12
/* 80B3DDDC  4E 80 04 21 */	bctrl 
/* 80B3DDE0  7F C3 F3 78 */	mr r3, r30
/* 80B3DDE4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B3DDE8  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DDEC  38 A0 00 00 */	li r5, 0
/* 80B3DDF0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DDF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3DDF8  7D 89 03 A6 */	mtctr r12
/* 80B3DDFC  4E 80 04 21 */	bctrl 
/* 80B3DE00  48 00 00 90 */	b lbl_80B3DE90
lbl_80B3DE04:
/* 80B3DE04  2C 1C 00 00 */	cmpwi r28, 0
/* 80B3DE08  41 82 00 88 */	beq lbl_80B3DE90
/* 80B3DE0C  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80B3DE10  2C 00 00 00 */	cmpwi r0, 0
/* 80B3DE14  40 82 00 7C */	bne lbl_80B3DE90
/* 80B3DE18  A8 1E 09 DE */	lha r0, 0x9de(r30)
/* 80B3DE1C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3DE20  41 82 00 34 */	beq lbl_80B3DE54
/* 80B3DE24  40 80 00 50 */	bge lbl_80B3DE74
/* 80B3DE28  2C 00 00 01 */	cmpwi r0, 1
/* 80B3DE2C  40 80 00 08 */	bge lbl_80B3DE34
/* 80B3DE30  48 00 00 44 */	b lbl_80B3DE74
lbl_80B3DE34:
/* 80B3DE34  7F C3 F3 78 */	mr r3, r30
/* 80B3DE38  38 80 00 03 */	li r4, 3
/* 80B3DE3C  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DE40  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DE44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3DE48  7D 89 03 A6 */	mtctr r12
/* 80B3DE4C  4E 80 04 21 */	bctrl 
/* 80B3DE50  48 00 00 40 */	b lbl_80B3DE90
lbl_80B3DE54:
/* 80B3DE54  7F C3 F3 78 */	mr r3, r30
/* 80B3DE58  38 80 00 04 */	li r4, 4
/* 80B3DE5C  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DE60  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DE64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3DE68  7D 89 03 A6 */	mtctr r12
/* 80B3DE6C  4E 80 04 21 */	bctrl 
/* 80B3DE70  48 00 00 20 */	b lbl_80B3DE90
lbl_80B3DE74:
/* 80B3DE74  7F C3 F3 78 */	mr r3, r30
/* 80B3DE78  38 80 00 05 */	li r4, 5
/* 80B3DE7C  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DE80  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DE84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3DE88  7D 89 03 A6 */	mtctr r12
/* 80B3DE8C  4E 80 04 21 */	bctrl 
lbl_80B3DE90:
/* 80B3DE90  80 9D 00 00 */	lwz r4, 0(r29)
/* 80B3DE94  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80B3DE98  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80B3DE9C  7C 04 00 00 */	cmpw r4, r0
/* 80B3DEA0  41 82 00 08 */	beq lbl_80B3DEA8
/* 80B3DEA4  48 00 02 3C */	b lbl_80B3E0E0
lbl_80B3DEA8:
/* 80B3DEA8  7F C3 F3 78 */	mr r3, r30
/* 80B3DEAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B3DEB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B3DEB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3DEB8  4B 4D C8 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B3DEBC  7C 7D 07 34 */	extsh r29, r3
/* 80B3DEC0  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 80B3DEC4  7C 1D 18 00 */	cmpw r29, r3
/* 80B3DEC8  40 82 00 0C */	bne lbl_80B3DED4
/* 80B3DECC  38 00 00 01 */	li r0, 1
/* 80B3DED0  48 00 01 94 */	b lbl_80B3E064
lbl_80B3DED4:
/* 80B3DED4  80 9E 09 6C */	lwz r4, 0x96c(r30)
/* 80B3DED8  2C 04 00 00 */	cmpwi r4, 0
/* 80B3DEDC  40 82 00 CC */	bne lbl_80B3DFA8
/* 80B3DEE0  7C 03 E8 50 */	subf r0, r3, r29
/* 80B3DEE4  7C 00 07 34 */	extsh r0, r0
/* 80B3DEE8  7C 03 E8 00 */	cmpw r3, r29
/* 80B3DEEC  40 82 00 10 */	bne lbl_80B3DEFC
/* 80B3DEF0  38 04 00 01 */	addi r0, r4, 1
/* 80B3DEF4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B3DEF8  48 00 00 84 */	b lbl_80B3DF7C
lbl_80B3DEFC:
/* 80B3DEFC  C0 5F 05 8C */	lfs f2, 0x58c(r31)
/* 80B3DF00  C8 3F 05 98 */	lfd f1, 0x598(r31)
/* 80B3DF04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B3DF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3DF0C  3C 00 43 30 */	lis r0, 0x4330
/* 80B3DF10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3DF14  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B3DF18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B3DF1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B3DF20  FC 00 02 10 */	fabs f0, f0
/* 80B3DF24  FC 00 00 18 */	frsp f0, f0
/* 80B3DF28  FC 00 00 1E */	fctiwz f0, f0
/* 80B3DF2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B3DF30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B3DF34  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B3DF38  40 81 00 44 */	ble lbl_80B3DF7C
/* 80B3DF3C  7F C3 F3 78 */	mr r3, r30
/* 80B3DF40  38 80 00 05 */	li r4, 5
/* 80B3DF44  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3DF48  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DF4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3DF50  7D 89 03 A6 */	mtctr r12
/* 80B3DF54  4E 80 04 21 */	bctrl 
/* 80B3DF58  7F C3 F3 78 */	mr r3, r30
/* 80B3DF5C  38 80 00 06 */	li r4, 6
/* 80B3DF60  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B3DF64  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3DF68  38 A0 00 00 */	li r5, 0
/* 80B3DF6C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3DF70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3DF74  7D 89 03 A6 */	mtctr r12
/* 80B3DF78  4E 80 04 21 */	bctrl 
lbl_80B3DF7C:
/* 80B3DF7C  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 80B3DF80  38 00 00 00 */	li r0, 0
/* 80B3DF84  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80B3DF88  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B3DF8C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B3DF90  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3DF94  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B3DF98  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B3DF9C  38 03 00 01 */	addi r0, r3, 1
/* 80B3DFA0  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B3DFA4  48 00 00 68 */	b lbl_80B3E00C
lbl_80B3DFA8:
/* 80B3DFA8  2C 04 00 01 */	cmpwi r4, 1
/* 80B3DFAC  40 82 00 60 */	bne lbl_80B3E00C
/* 80B3DFB0  7F C3 F3 78 */	mr r3, r30
/* 80B3DFB4  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 80B3DFB8  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 80B3DFBC  38 A0 00 00 */	li r5, 0
/* 80B3DFC0  4B 61 5F 34 */	b turn__8daNpcF_cFsfi
/* 80B3DFC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DFC8  41 82 00 2C */	beq lbl_80B3DFF4
/* 80B3DFCC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3DFD0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B3DFD4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3DFD8  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B3DFDC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3DFE0  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80B3DFE4  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B3DFE8  38 03 00 01 */	addi r0, r3, 1
/* 80B3DFEC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B3DFF0  48 00 00 1C */	b lbl_80B3E00C
lbl_80B3DFF4:
/* 80B3DFF4  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B3DFF8  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80B3DFFC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3E000  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80B3E004  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80B3E008  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80B3E00C:
/* 80B3E00C  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B3E010  2C 00 00 01 */	cmpwi r0, 1
/* 80B3E014  40 81 00 4C */	ble lbl_80B3E060
/* 80B3E018  7F C3 F3 78 */	mr r3, r30
/* 80B3E01C  38 80 00 05 */	li r4, 5
/* 80B3E020  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80B3E024  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3E028  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3E02C  7D 89 03 A6 */	mtctr r12
/* 80B3E030  4E 80 04 21 */	bctrl 
/* 80B3E034  7F C3 F3 78 */	mr r3, r30
/* 80B3E038  38 80 00 00 */	li r4, 0
/* 80B3E03C  80 BE 0B D8 */	lwz r5, 0xbd8(r30)
/* 80B3E040  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3E044  38 A0 00 00 */	li r5, 0
/* 80B3E048  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B3E04C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3E050  7D 89 03 A6 */	mtctr r12
/* 80B3E054  4E 80 04 21 */	bctrl 
/* 80B3E058  38 00 00 00 */	li r0, 0
/* 80B3E05C  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B3E060:
/* 80B3E060  38 00 00 00 */	li r0, 0
lbl_80B3E064:
/* 80B3E064  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B3E068  41 82 00 78 */	beq lbl_80B3E0E0
/* 80B3E06C  7F C3 F3 78 */	mr r3, r30
/* 80B3E070  38 80 00 00 */	li r4, 0
/* 80B3E074  38 A0 00 01 */	li r5, 1
/* 80B3E078  38 C0 00 00 */	li r6, 0
/* 80B3E07C  4B 61 5D 08 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3E080  2C 03 00 00 */	cmpwi r3, 0
/* 80B3E084  41 82 00 5C */	beq lbl_80B3E0E0
/* 80B3E088  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 80B3E08C  7C 00 07 35 */	extsh. r0, r0
/* 80B3E090  40 82 00 48 */	bne lbl_80B3E0D8
/* 80B3E094  38 00 00 05 */	li r0, 5
/* 80B3E098  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80B3E09C  7F C3 F3 78 */	mr r3, r30
/* 80B3E0A0  88 1E 0E 9B */	lbz r0, 0xe9b(r30)
/* 80B3E0A4  54 00 10 3A */	slwi r0, r0, 2
/* 80B3E0A8  3C 80 80 B4 */	lis r4, l_resName@ha
/* 80B3E0AC  38 84 1E 1C */	addi r4, r4, l_resName@l
/* 80B3E0B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3E0B4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80B3E0B8  54 00 10 3A */	slwi r0, r0, 2
/* 80B3E0BC  3C A0 80 B4 */	lis r5, l_evtNames@ha
/* 80B3E0C0  38 A5 26 04 */	addi r5, r5, l_evtNames@l
/* 80B3E0C4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B3E0C8  38 C0 00 01 */	li r6, 1
/* 80B3E0CC  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B3E0D0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B3E0D4  4B 61 58 80 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_80B3E0D8:
/* 80B3E0D8  38 60 00 01 */	li r3, 1
/* 80B3E0DC  48 00 00 08 */	b lbl_80B3E0E4
lbl_80B3E0E0:
/* 80B3E0E0  38 60 00 00 */	li r3, 0
lbl_80B3E0E4:
/* 80B3E0E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3E0E8  4B 82 41 38 */	b _restgpr_27
/* 80B3E0EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B3E0F0  7C 08 03 A6 */	mtlr r0
/* 80B3E0F4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B3E0F8  4E 80 00 20 */	blr 
