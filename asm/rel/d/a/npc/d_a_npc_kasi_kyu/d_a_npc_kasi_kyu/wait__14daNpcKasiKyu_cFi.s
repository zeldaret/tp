lbl_80A23708:
/* 80A23708  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A2370C  7C 08 02 A6 */	mflr r0
/* 80A23710  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A23714  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A23718  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A2371C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A23720  4B 93 EA B9 */	bl _savegpr_28
/* 80A23724  7C 7D 1B 78 */	mr r29, r3
/* 80A23728  3C 80 80 A2 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A25B24@ha */
/* 80A2372C  3B C4 5B 24 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A25B24@l */
/* 80A23730  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A23734  3B E4 58 B8 */	addi r31, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A23738  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A2373C  2C 00 00 00 */	cmpwi r0, 0
/* 80A23740  41 82 00 18 */	beq lbl_80A23758
/* 80A23744  40 80 00 08 */	bge lbl_80A2374C
/* 80A23748  48 00 03 48 */	b lbl_80A23A90
lbl_80A2374C:
/* 80A2374C  2C 00 00 02 */	cmpwi r0, 2
/* 80A23750  40 80 03 40 */	bge lbl_80A23A90
/* 80A23754  48 00 00 70 */	b lbl_80A237C4
lbl_80A23758:
/* 80A23758  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A2375C  7C 00 07 75 */	extsb. r0, r0
/* 80A23760  40 82 00 30 */	bne lbl_80A23790
/* 80A23764  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A23768  7C 00 07 75 */	extsb. r0, r0
/* 80A2376C  40 82 00 24 */	bne lbl_80A23790
/* 80A23770  38 80 00 0B */	li r4, 0xb
/* 80A23774  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A23778  38 A0 00 00 */	li r5, 0
/* 80A2377C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A23780  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A23784  7D 89 03 A6 */	mtctr r12
/* 80A23788  4E 80 04 21 */	bctrl 
/* 80A2378C  48 00 00 24 */	b lbl_80A237B0
lbl_80A23790:
/* 80A23790  7F A3 EB 78 */	mr r3, r29
/* 80A23794  38 80 00 04 */	li r4, 4
/* 80A23798  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A2379C  38 A0 00 00 */	li r5, 0
/* 80A237A0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A237A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A237A8  7D 89 03 A6 */	mtctr r12
/* 80A237AC  4E 80 04 21 */	bctrl 
lbl_80A237B0:
/* 80A237B0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A237B4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A237B8  38 00 00 01 */	li r0, 1
/* 80A237BC  B0 1D 14 04 */	sth r0, 0x1404(r29)
/* 80A237C0  48 00 02 D0 */	b lbl_80A23A90
lbl_80A237C4:
/* 80A237C4  4B FF FE 61 */	bl chkFindPlayer__14daNpcKasiKyu_cFv
/* 80A237C8  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A237CC  4B 72 CF 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A237D0  28 03 00 00 */	cmplwi r3, 0
/* 80A237D4  41 82 00 14 */	beq lbl_80A237E8
/* 80A237D8  7F A3 EB 78 */	mr r3, r29
/* 80A237DC  38 80 00 02 */	li r4, 2
/* 80A237E0  4B FF FB 4D */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A237E4  48 00 00 CC */	b lbl_80A238B0
lbl_80A237E8:
/* 80A237E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A237EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A237F0  38 80 00 0C */	li r4, 0xc
/* 80A237F4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80A237F8  7C 05 07 74 */	extsb r5, r0
/* 80A237FC  4B 61 1B 65 */	bl isSwitch__10dSv_info_cCFii
/* 80A23800  2C 03 00 00 */	cmpwi r3, 0
/* 80A23804  40 82 00 AC */	bne lbl_80A238B0
/* 80A23808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2380C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23810  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A23814  28 00 00 00 */	cmplwi r0, 0
/* 80A23818  40 82 00 98 */	bne lbl_80A238B0
/* 80A2381C  7F A3 EB 78 */	mr r3, r29
/* 80A23820  38 80 00 00 */	li r4, 0
/* 80A23824  4B FF FB 09 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A23828  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A2382C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A23830  7C 04 00 00 */	cmpw r4, r0
/* 80A23834  41 82 00 7C */	beq lbl_80A238B0
/* 80A23838  7F A3 EB 78 */	mr r3, r29
/* 80A2383C  38 A0 00 01 */	li r5, 1
/* 80A23840  4B FF FC F1 */	bl step__14daNpcKasiKyu_cFsi
/* 80A23844  2C 03 00 00 */	cmpwi r3, 0
/* 80A23848  41 82 00 68 */	beq lbl_80A238B0
/* 80A2384C  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A23850  7C 00 07 75 */	extsb. r0, r0
/* 80A23854  40 82 00 34 */	bne lbl_80A23888
/* 80A23858  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A2385C  7C 00 07 75 */	extsb. r0, r0
/* 80A23860  40 82 00 28 */	bne lbl_80A23888
/* 80A23864  7F A3 EB 78 */	mr r3, r29
/* 80A23868  38 80 00 0B */	li r4, 0xb
/* 80A2386C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A23870  38 A0 00 00 */	li r5, 0
/* 80A23874  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A23878  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A2387C  7D 89 03 A6 */	mtctr r12
/* 80A23880  4E 80 04 21 */	bctrl 
/* 80A23884  48 00 00 24 */	b lbl_80A238A8
lbl_80A23888:
/* 80A23888  7F A3 EB 78 */	mr r3, r29
/* 80A2388C  38 80 00 04 */	li r4, 4
/* 80A23890  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A23894  38 A0 00 00 */	li r5, 0
/* 80A23898  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A2389C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A238A0  7D 89 03 A6 */	mtctr r12
/* 80A238A4  4E 80 04 21 */	bctrl 
lbl_80A238A8:
/* 80A238A8  38 00 00 00 */	li r0, 0
/* 80A238AC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A238B0:
/* 80A238B0  38 60 01 22 */	li r3, 0x122
/* 80A238B4  4B 73 1D 81 */	bl daNpcF_chkEvtBit__FUl
/* 80A238B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A238BC  41 82 00 CC */	beq lbl_80A23988
/* 80A238C0  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A238C4  7C 00 07 75 */	extsb. r0, r0
/* 80A238C8  41 82 00 C0 */	beq lbl_80A23988
/* 80A238CC  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A238D0  7C 00 07 75 */	extsb. r0, r0
/* 80A238D4  40 82 00 B4 */	bne lbl_80A23988
/* 80A238D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A238DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A238E0  38 80 00 0C */	li r4, 0xc
/* 80A238E4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80A238E8  7C 05 07 74 */	extsb r5, r0
/* 80A238EC  4B 61 1A 75 */	bl isSwitch__10dSv_info_cCFii
/* 80A238F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A238F4  41 82 00 94 */	beq lbl_80A23988
/* 80A238F8  7F A3 EB 78 */	mr r3, r29
/* 80A238FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A23900  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23904  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A23908  48 00 14 65 */	bl actor_front_check__14daNpcKasiKyu_cFP10fopAc_ac_c
/* 80A2390C  2C 03 00 00 */	cmpwi r3, 0
/* 80A23910  41 82 00 4C */	beq lbl_80A2395C
/* 80A23914  7F A3 EB 78 */	mr r3, r29
/* 80A23918  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A2391C  4B 5F 70 49 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23920  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80A23924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A23928  4C 41 13 82 */	cror 2, 1, 2
/* 80A2392C  40 82 00 5C */	bne lbl_80A23988
/* 80A23930  80 7E 02 EC */	lwz r3, 0x2ec(r30)
/* 80A23934  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 80A23938  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A2393C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A23940  80 1E 02 F4 */	lwz r0, 0x2f4(r30)
/* 80A23944  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A23948  7F A3 EB 78 */	mr r3, r29
/* 80A2394C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A23950  4B FF F9 35 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
/* 80A23954  38 60 00 01 */	li r3, 1
/* 80A23958  48 00 01 3C */	b lbl_80A23A94
lbl_80A2395C:
/* 80A2395C  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 80A23960  80 1E 02 FC */	lwz r0, 0x2fc(r30)
/* 80A23964  90 61 00 08 */	stw r3, 8(r1)
/* 80A23968  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2396C  80 1E 03 00 */	lwz r0, 0x300(r30)
/* 80A23970  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A23974  7F A3 EB 78 */	mr r3, r29
/* 80A23978  38 81 00 08 */	addi r4, r1, 8
/* 80A2397C  4B FF F9 09 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
/* 80A23980  38 60 00 01 */	li r3, 1
/* 80A23984  48 00 01 10 */	b lbl_80A23A94
lbl_80A23988:
/* 80A23988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2398C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23990  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80A23994  28 00 00 00 */	cmplwi r0, 0
/* 80A23998  41 82 00 58 */	beq lbl_80A239F0
/* 80A2399C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A239A0  28 00 00 01 */	cmplwi r0, 1
/* 80A239A4  40 82 00 EC */	bne lbl_80A23A90
/* 80A239A8  38 00 00 00 */	li r0, 0
/* 80A239AC  88 7C 4F B5 */	lbz r3, 0x4fb5(r28)
/* 80A239B0  28 03 00 01 */	cmplwi r3, 1
/* 80A239B4  41 82 00 0C */	beq lbl_80A239C0
/* 80A239B8  28 03 00 02 */	cmplwi r3, 2
/* 80A239BC  40 82 00 08 */	bne lbl_80A239C4
lbl_80A239C0:
/* 80A239C0  38 00 00 01 */	li r0, 1
lbl_80A239C4:
/* 80A239C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A239C8  41 82 00 14 */	beq lbl_80A239DC
/* 80A239CC  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 80A239D0  4B 62 4E 21 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A239D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A239D8  41 82 00 B8 */	beq lbl_80A23A90
lbl_80A239DC:
/* 80A239DC  38 00 00 01 */	li r0, 1
/* 80A239E0  98 1D 14 66 */	stb r0, 0x1466(r29)
/* 80A239E4  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80A239E8  4B 61 EA 81 */	bl reset__14dEvt_control_cFv
/* 80A239EC  48 00 00 A4 */	b lbl_80A23A90
lbl_80A239F0:
/* 80A239F0  4B 78 8B 8D */	bl dKy_darkworld_check__Fv
/* 80A239F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A239F8  40 82 00 54 */	bne lbl_80A23A4C
/* 80A239FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A23A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23A04  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A23A08  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A23A0C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A23A10  41 82 00 3C */	beq lbl_80A23A4C
/* 80A23A14  C8 3F 02 28 */	lfd f1, 0x228(r31)
/* 80A23A18  C8 5F 02 30 */	lfd f2, 0x230(r31)
/* 80A23A1C  4B 94 8D 65 */	bl pow
/* 80A23A20  FF E0 08 18 */	frsp f31, f1
/* 80A23A24  7F A3 EB 78 */	mr r3, r29
/* 80A23A28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A23A2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A23A30  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A23A34  4B 5F 70 61 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A23A38  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A23A3C  40 80 00 10 */	bge lbl_80A23A4C
/* 80A23A40  38 00 00 01 */	li r0, 1
/* 80A23A44  98 1D 14 67 */	stb r0, 0x1467(r29)
/* 80A23A48  48 00 00 48 */	b lbl_80A23A90
lbl_80A23A4C:
/* 80A23A4C  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A23A50  28 00 00 00 */	cmplwi r0, 0
/* 80A23A54  41 82 00 0C */	beq lbl_80A23A60
/* 80A23A58  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 80A23A5C  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A23A60:
/* 80A23A60  7F A3 EB 78 */	mr r3, r29
/* 80A23A64  88 9D 14 69 */	lbz r4, 0x1469(r29)
/* 80A23A68  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A23A6C  54 00 10 3A */	slwi r0, r0, 2
/* 80A23A70  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 80A23A74  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A23A78  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A23A7C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A23A80  38 E0 00 28 */	li r7, 0x28
/* 80A23A84  39 00 00 FF */	li r8, 0xff
/* 80A23A88  39 20 00 01 */	li r9, 1
/* 80A23A8C  4B 72 FD F1 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A23A90:
/* 80A23A90  38 60 00 01 */	li r3, 1
lbl_80A23A94:
/* 80A23A94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A23A98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A23A9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A23AA0  4B 93 E7 85 */	bl _restgpr_28
/* 80A23AA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A23AA8  7C 08 03 A6 */	mtlr r0
/* 80A23AAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A23AB0  4E 80 00 20 */	blr 
