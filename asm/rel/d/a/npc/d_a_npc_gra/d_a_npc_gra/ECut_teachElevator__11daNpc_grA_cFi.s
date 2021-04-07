lbl_809C47EC:
/* 809C47EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C47F0  7C 08 02 A6 */	mflr r0
/* 809C47F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C47F8  39 61 00 20 */	addi r11, r1, 0x20
/* 809C47FC  4B 99 D9 D5 */	bl _savegpr_26
/* 809C4800  7C 7C 1B 78 */	mr r28, r3
/* 809C4804  7C 9A 23 78 */	mr r26, r4
/* 809C4808  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C480C  3B E3 9D 98 */	addi r31, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C4810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C4814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C4818  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 809C481C  3B C0 00 00 */	li r30, 0
/* 809C4820  3B A0 FF FF */	li r29, -1
/* 809C4824  7F 63 DB 78 */	mr r3, r27
/* 809C4828  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C482C  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C4830  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C4834  38 C0 00 03 */	li r6, 3
/* 809C4838  4B 68 38 B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C483C  28 03 00 00 */	cmplwi r3, 0
/* 809C4840  41 82 00 08 */	beq lbl_809C4848
/* 809C4844  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809C4848:
/* 809C4848  7F 63 DB 78 */	mr r3, r27
/* 809C484C  7F 44 D3 78 */	mr r4, r26
/* 809C4850  4B 68 34 FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C4854  2C 03 00 00 */	cmpwi r3, 0
/* 809C4858  41 82 01 28 */	beq lbl_809C4980
/* 809C485C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 809C4860  41 82 00 A4 */	beq lbl_809C4904
/* 809C4864  40 80 00 1C */	bge lbl_809C4880
/* 809C4868  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C486C  41 82 00 8C */	beq lbl_809C48F8
/* 809C4870  40 80 01 10 */	bge lbl_809C4980
/* 809C4874  2C 1D 00 00 */	cmpwi r29, 0
/* 809C4878  41 82 00 20 */	beq lbl_809C4898
/* 809C487C  48 00 01 04 */	b lbl_809C4980
lbl_809C4880:
/* 809C4880  2C 1D 00 28 */	cmpwi r29, 0x28
/* 809C4884  41 82 00 A0 */	beq lbl_809C4924
/* 809C4888  40 80 00 F8 */	bge lbl_809C4980
/* 809C488C  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 809C4890  41 82 00 88 */	beq lbl_809C4918
/* 809C4894  48 00 00 EC */	b lbl_809C4980
lbl_809C4898:
/* 809C4898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C489C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C48A0  88 9C 14 CF */	lbz r4, 0x14cf(r28)
/* 809C48A4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809C48A8  7C 05 07 74 */	extsb r5, r0
/* 809C48AC  4B 67 0A B5 */	bl isSwitch__10dSv_info_cCFii
/* 809C48B0  2C 03 00 00 */	cmpwi r3, 0
/* 809C48B4  40 82 00 24 */	bne lbl_809C48D8
/* 809C48B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C48BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C48C0  88 9C 14 CF */	lbz r4, 0x14cf(r28)
/* 809C48C4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 809C48C8  7C 05 07 74 */	extsb r5, r0
/* 809C48CC  4B 67 09 35 */	bl onSwitch__10dSv_info_cFii
/* 809C48D0  38 00 00 01 */	li r0, 1
/* 809C48D4  98 1C 14 D0 */	stb r0, 0x14d0(r28)
lbl_809C48D8:
/* 809C48D8  7F 83 E3 78 */	mr r3, r28
/* 809C48DC  38 80 00 0C */	li r4, 0xc
/* 809C48E0  38 A0 00 00 */	li r5, 0
/* 809C48E4  4B 78 F4 39 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C48E8  7F 83 E3 78 */	mr r3, r28
/* 809C48EC  38 80 00 06 */	li r4, 6
/* 809C48F0  4B FF E7 81 */	bl setLookMode__11daNpc_grA_cFi
/* 809C48F4  48 00 00 8C */	b lbl_809C4980
lbl_809C48F8:
/* 809C48F8  38 00 00 00 */	li r0, 0
/* 809C48FC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4900  48 00 00 80 */	b lbl_809C4980
lbl_809C4904:
/* 809C4904  7F 83 E3 78 */	mr r3, r28
/* 809C4908  38 80 00 0C */	li r4, 0xc
/* 809C490C  38 A0 00 00 */	li r5, 0
/* 809C4910  4B 78 F4 0D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C4914  48 00 00 6C */	b lbl_809C4980
lbl_809C4918:
/* 809C4918  38 00 00 00 */	li r0, 0
/* 809C491C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4920  48 00 00 60 */	b lbl_809C4980
lbl_809C4924:
/* 809C4924  88 1C 14 CE */	lbz r0, 0x14ce(r28)
/* 809C4928  28 00 00 00 */	cmplwi r0, 0
/* 809C492C  40 82 00 28 */	bne lbl_809C4954
/* 809C4930  7F 83 E3 78 */	mr r3, r28
/* 809C4934  38 80 00 18 */	li r4, 0x18
/* 809C4938  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C493C  38 A0 00 00 */	li r5, 0
/* 809C4940  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C4944  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4948  7D 89 03 A6 */	mtctr r12
/* 809C494C  4E 80 04 21 */	bctrl 
/* 809C4950  48 00 00 24 */	b lbl_809C4974
lbl_809C4954:
/* 809C4954  7F 83 E3 78 */	mr r3, r28
/* 809C4958  38 80 00 17 */	li r4, 0x17
/* 809C495C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4960  38 A0 00 00 */	li r5, 0
/* 809C4964  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C4968  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C496C  7D 89 03 A6 */	mtctr r12
/* 809C4970  4E 80 04 21 */	bctrl 
lbl_809C4974:
/* 809C4974  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 809C4978  60 00 00 04 */	ori r0, r0, 4
/* 809C497C  90 1C 05 FC */	stw r0, 0x5fc(r28)
lbl_809C4980:
/* 809C4980  2C 1D 00 14 */	cmpwi r29, 0x14
/* 809C4984  41 82 00 E8 */	beq lbl_809C4A6C
/* 809C4988  40 80 00 1C */	bge lbl_809C49A4
/* 809C498C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C4990  41 82 00 50 */	beq lbl_809C49E0
/* 809C4994  40 80 02 30 */	bge lbl_809C4BC4
/* 809C4998  2C 1D 00 00 */	cmpwi r29, 0
/* 809C499C  41 82 00 20 */	beq lbl_809C49BC
/* 809C49A0  48 00 02 24 */	b lbl_809C4BC4
lbl_809C49A4:
/* 809C49A4  2C 1D 00 28 */	cmpwi r29, 0x28
/* 809C49A8  41 82 01 50 */	beq lbl_809C4AF8
/* 809C49AC  40 80 02 18 */	bge lbl_809C4BC4
/* 809C49B0  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 809C49B4  41 82 00 DC */	beq lbl_809C4A90
/* 809C49B8  48 00 02 0C */	b lbl_809C4BC4
lbl_809C49BC:
/* 809C49BC  7F 83 E3 78 */	mr r3, r28
/* 809C49C0  38 80 00 00 */	li r4, 0
/* 809C49C4  38 A0 00 01 */	li r5, 1
/* 809C49C8  38 C0 00 00 */	li r6, 0
/* 809C49CC  4B 78 F3 B9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C49D0  2C 03 00 00 */	cmpwi r3, 0
/* 809C49D4  41 82 01 F4 */	beq lbl_809C4BC8
/* 809C49D8  3B C0 00 01 */	li r30, 1
/* 809C49DC  48 00 01 EC */	b lbl_809C4BC8
lbl_809C49E0:
/* 809C49E0  7F 83 E3 78 */	mr r3, r28
/* 809C49E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C49E8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C49EC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809C49F0  4B 65 5D 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C49F4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 809C49F8  7C 60 07 34 */	extsh r0, r3
/* 809C49FC  7C 04 00 00 */	cmpw r4, r0
/* 809C4A00  40 82 00 14 */	bne lbl_809C4A14
/* 809C4A04  38 00 00 00 */	li r0, 0
/* 809C4A08  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4A0C  3B C0 00 01 */	li r30, 1
/* 809C4A10  48 00 01 B8 */	b lbl_809C4BC8
lbl_809C4A14:
/* 809C4A14  7F 83 E3 78 */	mr r3, r28
/* 809C4A18  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809C4A1C  4B 65 5C F5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C4A20  7C 64 1B 78 */	mr r4, r3
/* 809C4A24  7F 83 E3 78 */	mr r3, r28
/* 809C4A28  38 A0 FF FF */	li r5, -1
/* 809C4A2C  38 C0 FF FF */	li r6, -1
/* 809C4A30  38 E0 00 0F */	li r7, 0xf
/* 809C4A34  4B 78 F6 71 */	bl step__8daNpcF_cFsiii
/* 809C4A38  2C 03 00 00 */	cmpwi r3, 0
/* 809C4A3C  41 82 01 8C */	beq lbl_809C4BC8
/* 809C4A40  38 00 00 00 */	li r0, 0
/* 809C4A44  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4A48  7F 83 E3 78 */	mr r3, r28
/* 809C4A4C  38 80 00 05 */	li r4, 5
/* 809C4A50  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4A54  38 A0 00 00 */	li r5, 0
/* 809C4A58  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C4A5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4A60  7D 89 03 A6 */	mtctr r12
/* 809C4A64  4E 80 04 21 */	bctrl 
/* 809C4A68  48 00 01 60 */	b lbl_809C4BC8
lbl_809C4A6C:
/* 809C4A6C  7F 83 E3 78 */	mr r3, r28
/* 809C4A70  38 80 00 00 */	li r4, 0
/* 809C4A74  38 A0 00 01 */	li r5, 1
/* 809C4A78  38 C0 00 00 */	li r6, 0
/* 809C4A7C  4B 78 F3 09 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C4A80  2C 03 00 00 */	cmpwi r3, 0
/* 809C4A84  41 82 01 44 */	beq lbl_809C4BC8
/* 809C4A88  3B C0 00 01 */	li r30, 1
/* 809C4A8C  48 00 01 3C */	b lbl_809C4BC8
lbl_809C4A90:
/* 809C4A90  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809C4A94  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809C4A98  7C 04 00 00 */	cmpw r4, r0
/* 809C4A9C  40 82 00 14 */	bne lbl_809C4AB0
/* 809C4AA0  38 00 00 00 */	li r0, 0
/* 809C4AA4  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4AA8  3B C0 00 01 */	li r30, 1
/* 809C4AAC  48 00 01 1C */	b lbl_809C4BC8
lbl_809C4AB0:
/* 809C4AB0  7F 83 E3 78 */	mr r3, r28
/* 809C4AB4  38 A0 FF FF */	li r5, -1
/* 809C4AB8  38 C0 FF FF */	li r6, -1
/* 809C4ABC  38 E0 00 0F */	li r7, 0xf
/* 809C4AC0  4B 78 F5 E5 */	bl step__8daNpcF_cFsiii
/* 809C4AC4  2C 03 00 00 */	cmpwi r3, 0
/* 809C4AC8  41 82 01 00 */	beq lbl_809C4BC8
/* 809C4ACC  38 00 00 00 */	li r0, 0
/* 809C4AD0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809C4AD4  7F 83 E3 78 */	mr r3, r28
/* 809C4AD8  38 80 00 05 */	li r4, 5
/* 809C4ADC  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4AE0  38 A0 00 00 */	li r5, 0
/* 809C4AE4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C4AE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4AEC  7D 89 03 A6 */	mtctr r12
/* 809C4AF0  4E 80 04 21 */	bctrl 
/* 809C4AF4  48 00 00 D4 */	b lbl_809C4BC8
lbl_809C4AF8:
/* 809C4AF8  A8 1C 09 E0 */	lha r0, 0x9e0(r28)
/* 809C4AFC  2C 00 00 05 */	cmpwi r0, 5
/* 809C4B00  41 82 00 B0 */	beq lbl_809C4BB0
/* 809C4B04  80 1C 14 D8 */	lwz r0, 0x14d8(r28)
/* 809C4B08  2C 00 00 17 */	cmpwi r0, 0x17
/* 809C4B0C  41 82 00 BC */	beq lbl_809C4BC8
/* 809C4B10  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 809C4B14  38 9C 14 8C */	addi r4, r28, 0x148c
/* 809C4B18  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 809C4B1C  4B 8A BE 75 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 809C4B20  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809C4B24  38 80 00 01 */	li r4, 1
/* 809C4B28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809C4B2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C4B30  40 82 00 18 */	bne lbl_809C4B48
/* 809C4B34  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C4B38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809C4B3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C4B40  41 82 00 08 */	beq lbl_809C4B48
/* 809C4B44  38 80 00 00 */	li r4, 0
lbl_809C4B48:
/* 809C4B48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 809C4B4C  41 82 00 7C */	beq lbl_809C4BC8
/* 809C4B50  7F 83 E3 78 */	mr r3, r28
/* 809C4B54  38 80 00 05 */	li r4, 5
/* 809C4B58  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C4B5C  38 A0 00 00 */	li r5, 0
/* 809C4B60  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809C4B64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4B68  7D 89 03 A6 */	mtctr r12
/* 809C4B6C  4E 80 04 21 */	bctrl 
/* 809C4B70  C0 1C 14 8C */	lfs f0, 0x148c(r28)
/* 809C4B74  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 809C4B78  C0 1C 14 90 */	lfs f0, 0x1490(r28)
/* 809C4B7C  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 809C4B80  C0 1C 14 94 */	lfs f0, 0x1494(r28)
/* 809C4B84  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 809C4B88  A8 1C 14 98 */	lha r0, 0x1498(r28)
/* 809C4B8C  B0 1C 04 B4 */	sth r0, 0x4b4(r28)
/* 809C4B90  A8 1C 14 9A */	lha r0, 0x149a(r28)
/* 809C4B94  B0 1C 04 B6 */	sth r0, 0x4b6(r28)
/* 809C4B98  A8 1C 14 9C */	lha r0, 0x149c(r28)
/* 809C4B9C  B0 1C 04 B8 */	sth r0, 0x4b8(r28)
/* 809C4BA0  38 00 00 01 */	li r0, 1
/* 809C4BA4  98 1C 14 D1 */	stb r0, 0x14d1(r28)
/* 809C4BA8  3B C0 00 01 */	li r30, 1
/* 809C4BAC  48 00 00 1C */	b lbl_809C4BC8
lbl_809C4BB0:
/* 809C4BB0  3B C0 00 01 */	li r30, 1
/* 809C4BB4  7F 83 E3 78 */	mr r3, r28
/* 809C4BB8  38 80 00 00 */	li r4, 0
/* 809C4BBC  4B FF E4 B5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C4BC0  48 00 00 08 */	b lbl_809C4BC8
lbl_809C4BC4:
/* 809C4BC4  3B C0 00 01 */	li r30, 1
lbl_809C4BC8:
/* 809C4BC8  7F C3 F3 78 */	mr r3, r30
/* 809C4BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 809C4BD0  4B 99 D6 4D */	bl _restgpr_26
/* 809C4BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C4BD8  7C 08 03 A6 */	mtlr r0
/* 809C4BDC  38 21 00 20 */	addi r1, r1, 0x20
/* 809C4BE0  4E 80 00 20 */	blr 
