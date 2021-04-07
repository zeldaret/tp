lbl_804697F4:
/* 804697F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804697F8  7C 08 02 A6 */	mflr r0
/* 804697FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80469800  39 61 00 60 */	addi r11, r1, 0x60
/* 80469804  4B EF 89 D5 */	bl _savegpr_28
/* 80469808  7C 7F 1B 78 */	mr r31, r3
/* 8046980C  3C 80 80 47 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8046B0F8@ha */
/* 80469810  3B A4 B0 F8 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x8046B0F8@l */
/* 80469814  3C 80 80 47 */	lis r4, lit_3681@ha /* 0x8046AFC4@ha */
/* 80469818  3B C4 AF C4 */	addi r30, r4, lit_3681@l /* 0x8046AFC4@l */
/* 8046981C  C0 83 06 3C */	lfs f4, 0x63c(r3)
/* 80469820  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 80469824  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80469828  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8046982C  C0 03 06 38 */	lfs f0, 0x638(r3)
/* 80469830  EC 01 00 2A */	fadds f0, f1, f0
/* 80469834  EC 02 00 2A */	fadds f0, f2, f0
/* 80469838  EC 23 00 2A */	fadds f1, f3, f0
/* 8046983C  C0 03 06 34 */	lfs f0, 0x634(r3)
/* 80469840  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80469844  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80469848  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 8046984C  80 83 05 A4 */	lwz r4, 0x5a4(r3)
/* 80469850  2C 04 00 04 */	cmpwi r4, 4
/* 80469854  41 82 02 00 */	beq lbl_80469A54
/* 80469858  40 80 00 1C */	bge lbl_80469874
/* 8046985C  2C 04 00 00 */	cmpwi r4, 0
/* 80469860  41 82 00 20 */	beq lbl_80469880
/* 80469864  41 80 04 24 */	blt lbl_80469C88
/* 80469868  2C 04 00 03 */	cmpwi r4, 3
/* 8046986C  40 80 01 E0 */	bge lbl_80469A4C
/* 80469870  48 00 04 18 */	b lbl_80469C88
lbl_80469874:
/* 80469874  2C 04 00 0A */	cmpwi r4, 0xa
/* 80469878  41 82 04 50 */	beq lbl_80469CC8
/* 8046987C  48 00 04 0C */	b lbl_80469C88
lbl_80469880:
/* 80469880  88 1F 06 0D */	lbz r0, 0x60d(r31)
/* 80469884  28 00 00 00 */	cmplwi r0, 0
/* 80469888  41 82 01 78 */	beq lbl_80469A00
/* 8046988C  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80469890  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80469894  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80469898  4B E0 61 E9 */	bl cLib_addCalc0__FPfff
/* 8046989C  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 804698A0  4B C1 AB C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 804698A4  28 03 00 00 */	cmplwi r3, 0
/* 804698A8  41 82 00 64 */	beq lbl_8046990C
/* 804698AC  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 804698B0  4B C1 AC 49 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 804698B4  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 804698B8  4B C1 AC 91 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 804698BC  28 03 00 00 */	cmplwi r3, 0
/* 804698C0  41 82 00 4C */	beq lbl_8046990C
/* 804698C4  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 804698C8  4B C1 AC 81 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 804698CC  88 03 00 75 */	lbz r0, 0x75(r3)
/* 804698D0  28 00 00 01 */	cmplwi r0, 1
/* 804698D4  40 82 00 38 */	bne lbl_8046990C
/* 804698D8  88 1F 06 09 */	lbz r0, 0x609(r31)
/* 804698DC  28 00 00 FF */	cmplwi r0, 0xff
/* 804698E0  41 82 00 10 */	beq lbl_804698F0
/* 804698E4  1C 60 00 0A */	mulli r3, r0, 0xa
/* 804698E8  38 03 00 01 */	addi r0, r3, 1
/* 804698EC  B0 1F 05 CE */	sth r0, 0x5ce(r31)
lbl_804698F0:
/* 804698F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804698F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804698F8  88 9F 06 0D */	lbz r4, 0x60d(r31)
/* 804698FC  38 84 FF FF */	addi r4, r4, -1
/* 80469900  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80469904  7C 05 07 74 */	extsb r5, r0
/* 80469908  4B BC B8 F9 */	bl onSwitch__10dSv_info_cFii
lbl_8046990C:
/* 8046990C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469914  88 9F 06 0D */	lbz r4, 0x60d(r31)
/* 80469918  38 84 FF FF */	addi r4, r4, -1
/* 8046991C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80469920  7C 05 07 74 */	extsb r5, r0
/* 80469924  4B BC BA 3D */	bl isSwitch__10dSv_info_cCFii
/* 80469928  2C 03 00 00 */	cmpwi r3, 0
/* 8046992C  41 82 04 08 */	beq lbl_80469D34
/* 80469930  88 1F 06 0B */	lbz r0, 0x60b(r31)
/* 80469934  28 00 00 FF */	cmplwi r0, 0xff
/* 80469938  41 82 00 70 */	beq lbl_804699A8
/* 8046993C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469944  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80469948  7F 83 E3 78 */	mr r3, r28
/* 8046994C  3C 80 80 47 */	lis r4, d_a_ep__stringBase0@ha /* 0x8046B0D0@ha */
/* 80469950  38 84 B0 D0 */	addi r4, r4, d_a_ep__stringBase0@l /* 0x8046B0D0@l */
/* 80469954  38 A0 00 FF */	li r5, 0xff
/* 80469958  38 C0 FF FF */	li r6, -1
/* 8046995C  4B BD DB B9 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80469960  7C 64 1B 78 */	mr r4, r3
/* 80469964  7F 83 E3 78 */	mr r3, r28
/* 80469968  4B BD DB 55 */	bl getEventData__16dEvent_manager_cFs
/* 8046996C  28 03 00 00 */	cmplwi r3, 0
/* 80469970  41 82 00 38 */	beq lbl_804699A8
/* 80469974  7F E3 FB 78 */	mr r3, r31
/* 80469978  4B FF FC E1 */	bl ep_switch_event_begin__FP8ep_class
/* 8046997C  90 7F 0A 5C */	stw r3, 0xa5c(r31)
/* 80469980  2C 03 00 00 */	cmpwi r3, 0
/* 80469984  41 82 03 B0 */	beq lbl_80469D34
/* 80469988  38 00 00 00 */	li r0, 0
/* 8046998C  98 1F 06 0D */	stb r0, 0x60d(r31)
/* 80469990  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80469994  2C 00 FF FF */	cmpwi r0, -1
/* 80469998  41 82 03 9C */	beq lbl_80469D34
/* 8046999C  7F E3 FB 78 */	mr r3, r31
/* 804699A0  4B FF FD 61 */	bl ep_switch_event_move__FP8ep_class
/* 804699A4  48 00 03 90 */	b lbl_80469D34
lbl_804699A8:
/* 804699A8  88 1F 0A 5B */	lbz r0, 0xa5b(r31)
/* 804699AC  28 00 00 00 */	cmplwi r0, 0
/* 804699B0  40 82 00 44 */	bne lbl_804699F4
/* 804699B4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 804699B8  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 804699BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804699C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804699C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804699C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804699CC  38 81 00 10 */	addi r4, r1, 0x10
/* 804699D0  38 BF 06 34 */	addi r5, r31, 0x634
/* 804699D4  38 C0 00 00 */	li r6, 0
/* 804699D8  38 E0 00 00 */	li r7, 0
/* 804699DC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804699E0  FC 40 08 90 */	fmr f2, f1
/* 804699E4  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 804699E8  FC 80 18 90 */	fmr f4, f3
/* 804699EC  39 00 00 00 */	li r8, 0
/* 804699F0  4B E4 1F 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804699F4:
/* 804699F4  38 00 00 00 */	li r0, 0
/* 804699F8  98 1F 06 0D */	stb r0, 0x60d(r31)
/* 804699FC  48 00 03 38 */	b lbl_80469D34
lbl_80469A00:
/* 80469A00  88 1F 06 0B */	lbz r0, 0x60b(r31)
/* 80469A04  28 00 00 FF */	cmplwi r0, 0xff
/* 80469A08  41 82 00 30 */	beq lbl_80469A38
/* 80469A0C  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80469A10  2C 00 FF FF */	cmpwi r0, -1
/* 80469A14  41 82 00 24 */	beq lbl_80469A38
/* 80469A18  4B FF FC E9 */	bl ep_switch_event_move__FP8ep_class
/* 80469A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80469A20  41 82 03 14 */	beq lbl_80469D34
/* 80469A24  38 00 00 03 */	li r0, 3
/* 80469A28  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80469A2C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80469A30  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80469A34  48 00 03 00 */	b lbl_80469D34
lbl_80469A38:
/* 80469A38  38 00 00 03 */	li r0, 3
/* 80469A3C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80469A40  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80469A44  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80469A48  48 00 02 EC */	b lbl_80469D34
lbl_80469A4C:
/* 80469A4C  38 04 00 01 */	addi r0, r4, 1
/* 80469A50  90 1F 05 A4 */	stw r0, 0x5a4(r31)
lbl_80469A54:
/* 80469A54  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80469A58  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 80469A5C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80469A60  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 80469A64  4B E0 5F D9 */	bl cLib_addCalc2__FPffff
/* 80469A68  88 1F 0A 79 */	lbz r0, 0xa79(r31)
/* 80469A6C  7C 00 07 75 */	extsb. r0, r0
/* 80469A70  40 82 01 18 */	bne lbl_80469B88
/* 80469A74  A8 1F 0A 50 */	lha r0, 0xa50(r31)
/* 80469A78  2C 00 00 07 */	cmpwi r0, 7
/* 80469A7C  40 80 00 CC */	bge lbl_80469B48
/* 80469A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469A84  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469A88  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80469A8C  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80469A90  54 00 08 3C */	slwi r0, r0, 1
/* 80469A94  38 9D 00 30 */	addi r4, r29, 0x30
/* 80469A98  7C 84 02 2E */	lhzx r4, r4, r0
/* 80469A9C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80469AA0  38 C0 00 00 */	li r6, 0
/* 80469AA4  38 E0 00 FF */	li r7, 0xff
/* 80469AA8  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80469AAC  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80469AB0  7D 09 43 78 */	mr r9, r8
/* 80469AB4  39 40 00 00 */	li r10, 0
/* 80469AB8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80469ABC  4B BE 36 FD */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80469AC0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80469AC4  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80469AC8  54 00 08 3C */	slwi r0, r0, 1
/* 80469ACC  38 9D 00 34 */	addi r4, r29, 0x34
/* 80469AD0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80469AD4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80469AD8  38 C0 00 00 */	li r6, 0
/* 80469ADC  38 E0 00 FF */	li r7, 0xff
/* 80469AE0  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80469AE4  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80469AE8  7D 09 43 78 */	mr r9, r8
/* 80469AEC  39 40 00 00 */	li r10, 0
/* 80469AF0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80469AF4  4B BE 36 C5 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80469AF8  A8 1F 0A 50 */	lha r0, 0xa50(r31)
/* 80469AFC  2C 00 00 00 */	cmpwi r0, 0
/* 80469B00  40 82 00 48 */	bne lbl_80469B48
/* 80469B04  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80469B08  4B C1 A9 59 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80469B0C  28 03 00 00 */	cmplwi r3, 0
/* 80469B10  41 82 00 38 */	beq lbl_80469B48
/* 80469B14  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 80469B18  4B C1 A9 E1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80469B1C  4B DF 9F 2D */	bl GetAc__8cCcD_ObjFv
/* 80469B20  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80469B24  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80469B28  EC 21 00 28 */	fsubs f1, f1, f0
/* 80469B2C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80469B30  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80469B34  EC 42 00 28 */	fsubs f2, f2, f0
/* 80469B38  4B DF DB 3D */	bl cM_atan2s__Fff
/* 80469B3C  B0 7F 0A 58 */	sth r3, 0xa58(r31)
/* 80469B40  38 00 00 28 */	li r0, 0x28
/* 80469B44  B0 1F 0A 50 */	sth r0, 0xa50(r31)
lbl_80469B48:
/* 80469B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469B4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469B50  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80469B54  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80469B58  54 00 08 3C */	slwi r0, r0, 1
/* 80469B5C  38 9D 00 38 */	addi r4, r29, 0x38
/* 80469B60  7C 84 02 2E */	lhzx r4, r4, r0
/* 80469B64  38 A1 00 44 */	addi r5, r1, 0x44
/* 80469B68  38 C0 00 00 */	li r6, 0
/* 80469B6C  38 E0 00 FF */	li r7, 0xff
/* 80469B70  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80469B74  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80469B78  7D 09 43 78 */	mr r9, r8
/* 80469B7C  39 40 00 00 */	li r10, 0
/* 80469B80  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80469B84  4B BE 36 35 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
lbl_80469B88:
/* 80469B88  A8 1F 05 CE */	lha r0, 0x5ce(r31)
/* 80469B8C  2C 00 00 01 */	cmpwi r0, 1
/* 80469B90  40 82 00 24 */	bne lbl_80469BB4
/* 80469B94  88 9F 06 0A */	lbz r4, 0x60a(r31)
/* 80469B98  28 04 00 FF */	cmplwi r4, 0xff
/* 80469B9C  41 82 00 18 */	beq lbl_80469BB4
/* 80469BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469BA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80469BAC  7C 05 07 74 */	extsb r5, r0
/* 80469BB0  4B BC B7 01 */	bl offSwitch__10dSv_info_cFii
lbl_80469BB4:
/* 80469BB4  88 9F 06 0A */	lbz r4, 0x60a(r31)
/* 80469BB8  28 04 00 FF */	cmplwi r4, 0xff
/* 80469BBC  41 82 00 8C */	beq lbl_80469C48
/* 80469BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469BC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80469BCC  7C 05 07 74 */	extsb r5, r0
/* 80469BD0  4B BC B7 91 */	bl isSwitch__10dSv_info_cCFii
/* 80469BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80469BD8  40 82 00 70 */	bne lbl_80469C48
/* 80469BDC  38 00 00 00 */	li r0, 0
/* 80469BE0  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80469BE4  88 7F 06 0A */	lbz r3, 0x60a(r31)
/* 80469BE8  28 03 00 FF */	cmplwi r3, 0xff
/* 80469BEC  41 82 00 0C */	beq lbl_80469BF8
/* 80469BF0  38 03 00 01 */	addi r0, r3, 1
/* 80469BF4  98 1F 06 0D */	stb r0, 0x60d(r31)
lbl_80469BF8:
/* 80469BF8  88 1F 0A 5B */	lbz r0, 0xa5b(r31)
/* 80469BFC  28 00 00 00 */	cmplwi r0, 0
/* 80469C00  40 82 00 88 */	bne lbl_80469C88
/* 80469C04  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 80469C08  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 80469C0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80469C10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80469C14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80469C18  80 63 00 00 */	lwz r3, 0(r3)
/* 80469C1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80469C20  38 BF 06 34 */	addi r5, r31, 0x634
/* 80469C24  38 C0 00 00 */	li r6, 0
/* 80469C28  38 E0 00 00 */	li r7, 0
/* 80469C2C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80469C30  FC 40 08 90 */	fmr f2, f1
/* 80469C34  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80469C38  FC 80 18 90 */	fmr f4, f3
/* 80469C3C  39 00 00 00 */	li r8, 0
/* 80469C40  4B E4 1D 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80469C44  48 00 00 44 */	b lbl_80469C88
lbl_80469C48:
/* 80469C48  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80469C4C  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80469C50  90 01 00 08 */	stw r0, 8(r1)
/* 80469C54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80469C58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80469C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80469C60  38 81 00 08 */	addi r4, r1, 8
/* 80469C64  38 BF 06 34 */	addi r5, r31, 0x634
/* 80469C68  38 C0 00 00 */	li r6, 0
/* 80469C6C  38 E0 00 00 */	li r7, 0
/* 80469C70  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80469C74  FC 40 08 90 */	fmr f2, f1
/* 80469C78  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80469C7C  FC 80 18 90 */	fmr f4, f3
/* 80469C80  39 00 00 00 */	li r8, 0
/* 80469C84  4B E4 1D 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80469C88:
/* 80469C88  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80469C8C  2C 00 FF FF */	cmpwi r0, -1
/* 80469C90  41 82 00 A4 */	beq lbl_80469D34
/* 80469C94  7F E3 FB 78 */	mr r3, r31
/* 80469C98  4B FF F9 61 */	bl ep_switch_event_end__FP8ep_class
/* 80469C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80469CA0  41 82 00 10 */	beq lbl_80469CB0
/* 80469CA4  38 00 FF FF */	li r0, -1
/* 80469CA8  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80469CAC  48 00 00 88 */	b lbl_80469D34
lbl_80469CB0:
/* 80469CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469CB8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80469CBC  80 9F 0A 5C */	lwz r4, 0xa5c(r31)
/* 80469CC0  4B BD E4 BD */	bl cutEnd__16dEvent_manager_cFi
/* 80469CC4  48 00 00 70 */	b lbl_80469D34
lbl_80469CC8:
/* 80469CC8  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80469CCC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80469CD0  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80469CD4  4B E0 5D AD */	bl cLib_addCalc0__FPfff
/* 80469CD8  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 80469CDC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80469CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469CE4  40 80 00 50 */	bge lbl_80469D34
/* 80469CE8  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80469CEC  28 00 00 00 */	cmplwi r0, 0
/* 80469CF0  41 82 00 3C */	beq lbl_80469D2C
/* 80469CF4  38 00 00 00 */	li r0, 0
/* 80469CF8  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80469CFC  88 9F 06 0A */	lbz r4, 0x60a(r31)
/* 80469D00  28 04 00 FF */	cmplwi r4, 0xff
/* 80469D04  41 82 00 30 */	beq lbl_80469D34
/* 80469D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469D10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80469D14  7C 05 07 74 */	extsb r5, r0
/* 80469D18  4B BC B5 99 */	bl offSwitch__10dSv_info_cFii
/* 80469D1C  88 7F 06 0A */	lbz r3, 0x60a(r31)
/* 80469D20  38 03 00 01 */	addi r0, r3, 1
/* 80469D24  98 1F 06 0D */	stb r0, 0x60d(r31)
/* 80469D28  48 00 00 0C */	b lbl_80469D34
lbl_80469D2C:
/* 80469D2C  7F E3 FB 78 */	mr r3, r31
/* 80469D30  4B BA FF 4D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80469D34:
/* 80469D34  C0 1F 06 34 */	lfs f0, 0x634(r31)
/* 80469D38  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 80469D3C  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80469D40  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 80469D44  C0 1F 06 3C */	lfs f0, 0x63c(r31)
/* 80469D48  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80469D4C  38 00 00 AF */	li r0, 0xaf
/* 80469D50  B0 1F 06 20 */	sth r0, 0x620(r31)
/* 80469D54  38 00 00 5D */	li r0, 0x5d
/* 80469D58  B0 1F 06 22 */	sth r0, 0x622(r31)
/* 80469D5C  38 00 00 00 */	li r0, 0
/* 80469D60  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80469D64  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80469D68  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80469D6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80469D70  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 80469D74  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80469D78  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 80469D7C  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80469D80  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80469D84  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80469D88  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80469D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469D90  40 81 00 14 */	ble lbl_80469DA4
/* 80469D94  80 1F 07 BC */	lwz r0, 0x7bc(r31)
/* 80469D98  60 00 00 01 */	ori r0, r0, 1
/* 80469D9C  90 1F 07 BC */	stw r0, 0x7bc(r31)
/* 80469DA0  48 00 00 10 */	b lbl_80469DB0
lbl_80469DA4:
/* 80469DA4  80 1F 07 BC */	lwz r0, 0x7bc(r31)
/* 80469DA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80469DAC  90 1F 07 BC */	stw r0, 0x7bc(r31)
lbl_80469DB0:
/* 80469DB0  C0 5F 06 3C */	lfs f2, 0x63c(r31)
/* 80469DB4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80469DB8  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80469DBC  EC 21 00 2A */	fadds f1, f1, f0
/* 80469DC0  C0 1F 06 34 */	lfs f0, 0x634(r31)
/* 80469DC4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80469DC8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80469DCC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80469DD0  38 7F 08 E0 */	addi r3, r31, 0x8e0
/* 80469DD4  38 81 00 38 */	addi r4, r1, 0x38
/* 80469DD8  4B E0 58 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80469DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80469DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80469DE4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80469DE8  38 9F 07 BC */	addi r4, r31, 0x7bc
/* 80469DEC  4B DF AD BD */	bl Set__4cCcSFP8cCcD_Obj
/* 80469DF0  A8 9F 0A 50 */	lha r4, 0xa50(r31)
/* 80469DF4  7C 80 07 35 */	extsh. r0, r4
/* 80469DF8  41 82 00 CC */	beq lbl_80469EC4
/* 80469DFC  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 80469E00  28 00 00 00 */	cmplwi r0, 0
/* 80469E04  41 82 00 B4 */	beq lbl_80469EB8
/* 80469E08  38 7F 0A 54 */	addi r3, r31, 0xa54
/* 80469E0C  2C 04 00 0A */	cmpwi r4, 0xa
/* 80469E10  40 81 00 0C */	ble lbl_80469E1C
/* 80469E14  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80469E18  48 00 00 08 */	b lbl_80469E20
lbl_80469E1C:
/* 80469E1C  C0 3E 00 08 */	lfs f1, 8(r30)
lbl_80469E20:
/* 80469E20  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80469E24  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 80469E28  4B E0 5C 15 */	bl cLib_addCalc2__FPffff
/* 80469E2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80469E30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80469E34  80 63 00 00 */	lwz r3, 0(r3)
/* 80469E38  A8 9F 0A 58 */	lha r4, 0xa58(r31)
/* 80469E3C  4B BA 25 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80469E40  C0 3F 0A 54 */	lfs f1, 0xa54(r31)
/* 80469E44  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80469E48  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80469E4C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80469E50  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80469E54  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80469E58  38 61 00 2C */	addi r3, r1, 0x2c
/* 80469E5C  38 81 00 20 */	addi r4, r1, 0x20
/* 80469E60  4B E0 70 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80469E64  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 80469E68  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80469E6C  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 80469E70  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80469E74  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80469E78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80469E7C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80469E80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80469E84  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80469E88  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80469E8C  A8 1F 0A 50 */	lha r0, 0xa50(r31)
/* 80469E90  2C 00 00 01 */	cmpwi r0, 1
/* 80469E94  40 82 00 24 */	bne lbl_80469EB8
/* 80469E98  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80469E9C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80469EA0  60 00 00 01 */	ori r0, r0, 1
/* 80469EA4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80469EA8  38 00 00 01 */	li r0, 1
/* 80469EAC  90 03 00 24 */	stw r0, 0x24(r3)
/* 80469EB0  38 00 00 00 */	li r0, 0
/* 80469EB4  90 1F 06 10 */	stw r0, 0x610(r31)
lbl_80469EB8:
/* 80469EB8  A8 7F 0A 50 */	lha r3, 0xa50(r31)
/* 80469EBC  38 03 FF FF */	addi r0, r3, -1
/* 80469EC0  B0 1F 0A 50 */	sth r0, 0xa50(r31)
lbl_80469EC4:
/* 80469EC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80469EC8  4B EF 83 5D */	bl _restgpr_28
/* 80469ECC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80469ED0  7C 08 03 A6 */	mtlr r0
/* 80469ED4  38 21 00 60 */	addi r1, r1, 0x60
/* 80469ED8  4E 80 00 20 */	blr 
