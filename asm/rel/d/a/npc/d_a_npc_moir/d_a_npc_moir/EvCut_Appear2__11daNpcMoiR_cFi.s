lbl_80A8081C:
/* 80A8081C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A80820  7C 08 02 A6 */	mflr r0
/* 80A80824  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A80828  39 61 00 60 */	addi r11, r1, 0x60
/* 80A8082C  4B 8E 19 A8 */	b _savegpr_27
/* 80A80830  7C 7D 1B 78 */	mr r29, r3
/* 80A80834  7C 9B 23 78 */	mr r27, r4
/* 80A80838  3C 60 80 A8 */	lis r3, m__17daNpcMoiR_Param_c@ha
/* 80A8083C  3B C3 32 AC */	addi r30, r3, m__17daNpcMoiR_Param_c@l
/* 80A80840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A80844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A80848  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A8084C  7F 83 E3 78 */	mr r3, r28
/* 80A80850  4B 5C 77 0C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80A80854  7C 7F 1B 78 */	mr r31, r3
/* 80A80858  7F 83 E3 78 */	mr r3, r28
/* 80A8085C  7F 64 DB 78 */	mr r4, r27
/* 80A80860  4B 5C 74 EC */	b getIsAddvance__16dEvent_manager_cFi
/* 80A80864  2C 03 00 00 */	cmpwi r3, 0
/* 80A80868  41 82 01 40 */	beq lbl_80A809A8
/* 80A8086C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A80870  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80A80874  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80A80878  7C 04 00 00 */	cmpw r4, r0
/* 80A8087C  41 82 00 78 */	beq lbl_80A808F4
/* 80A80880  40 80 00 18 */	bge lbl_80A80898
/* 80A80884  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A80888  7C 04 00 00 */	cmpw r4, r0
/* 80A8088C  41 82 00 20 */	beq lbl_80A808AC
/* 80A80890  40 80 00 4C */	bge lbl_80A808DC
/* 80A80894  48 00 01 14 */	b lbl_80A809A8
lbl_80A80898:
/* 80A80898  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A8089C  7C 04 00 00 */	cmpw r4, r0
/* 80A808A0  41 82 00 0C */	beq lbl_80A808AC
/* 80A808A4  40 80 01 04 */	bge lbl_80A809A8
/* 80A808A8  48 00 00 8C */	b lbl_80A80934
lbl_80A808AC:
/* 80A808AC  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A808B0  2C 00 00 03 */	cmpwi r0, 3
/* 80A808B4  41 82 00 0C */	beq lbl_80A808C0
/* 80A808B8  38 00 00 03 */	li r0, 3
/* 80A808BC  B0 1D 0E 06 */	sth r0, 0xe06(r29)
lbl_80A808C0:
/* 80A808C0  7F A3 EB 78 */	mr r3, r29
/* 80A808C4  A8 9D 0E 04 */	lha r4, 0xe04(r29)
/* 80A808C8  38 A0 00 00 */	li r5, 0
/* 80A808CC  4B 6D 34 50 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A808D0  38 00 00 00 */	li r0, 0
/* 80A808D4  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80A808D8  48 00 00 D0 */	b lbl_80A809A8
lbl_80A808DC:
/* 80A808DC  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A808E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A808E4  41 82 00 C4 */	beq lbl_80A809A8
/* 80A808E8  38 00 00 00 */	li r0, 0
/* 80A808EC  B0 1D 0E 06 */	sth r0, 0xe06(r29)
/* 80A808F0  48 00 00 B8 */	b lbl_80A809A8
lbl_80A808F4:
/* 80A808F4  7F A3 EB 78 */	mr r3, r29
/* 80A808F8  38 80 00 12 */	li r4, 0x12
/* 80A808FC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80900  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80904  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80908  7D 89 03 A6 */	mtctr r12
/* 80A8090C  4E 80 04 21 */	bctrl 
/* 80A80910  7F A3 EB 78 */	mr r3, r29
/* 80A80914  38 80 00 02 */	li r4, 2
/* 80A80918  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80A8091C  38 A0 00 00 */	li r5, 0
/* 80A80920  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80924  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80928  7D 89 03 A6 */	mtctr r12
/* 80A8092C  4E 80 04 21 */	bctrl 
/* 80A80930  48 00 00 78 */	b lbl_80A809A8
lbl_80A80934:
/* 80A80934  7F A3 EB 78 */	mr r3, r29
/* 80A80938  38 80 00 12 */	li r4, 0x12
/* 80A8093C  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80940  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80944  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80948  7D 89 03 A6 */	mtctr r12
/* 80A8094C  4E 80 04 21 */	bctrl 
/* 80A80950  7F A3 EB 78 */	mr r3, r29
/* 80A80954  38 80 00 27 */	li r4, 0x27
/* 80A80958  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A8095C  38 A0 00 00 */	li r5, 0
/* 80A80960  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80964  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80968  7D 89 03 A6 */	mtctr r12
/* 80A8096C  4E 80 04 21 */	bctrl 
/* 80A80970  38 00 00 00 */	li r0, 0
/* 80A80974  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80978  38 00 01 08 */	li r0, 0x108
/* 80A8097C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80A80980  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80A80984  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80A80988  38 81 00 0A */	addi r4, r1, 0xa
/* 80A8098C  4B 59 8E 6C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A80990  28 03 00 00 */	cmplwi r3, 0
/* 80A80994  41 82 00 0C */	beq lbl_80A809A0
/* 80A80998  38 00 00 01 */	li r0, 1
/* 80A8099C  B0 03 05 FE */	sth r0, 0x5fe(r3)
lbl_80A809A0:
/* 80A809A0  38 00 00 5A */	li r0, 0x5a
/* 80A809A4  90 1D 0D FC */	stw r0, 0xdfc(r29)
lbl_80A809A8:
/* 80A809A8  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80A809AC  7F A3 EB 78 */	mr r3, r29
/* 80A809B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A809B4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80A809B8  7F A6 EB 78 */	mr r6, r29
/* 80A809BC  38 E0 00 00 */	li r7, 0
/* 80A809C0  4B 6D 2D 58 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A809C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A809C8  41 82 00 44 */	beq lbl_80A80A0C
/* 80A809CC  7F A3 EB 78 */	mr r3, r29
/* 80A809D0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A809D4  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A809D8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A809DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A809E0  7D 89 03 A6 */	mtctr r12
/* 80A809E4  4E 80 04 21 */	bctrl 
/* 80A809E8  7F A3 EB 78 */	mr r3, r29
/* 80A809EC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A809F0  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A809F4  38 A0 00 00 */	li r5, 0
/* 80A809F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A809FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80A00  7D 89 03 A6 */	mtctr r12
/* 80A80A04  4E 80 04 21 */	bctrl 
/* 80A80A08  48 00 00 90 */	b lbl_80A80A98
lbl_80A80A0C:
/* 80A80A0C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A80A10  41 82 00 88 */	beq lbl_80A80A98
/* 80A80A14  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80A80A18  2C 00 00 00 */	cmpwi r0, 0
/* 80A80A1C  40 82 00 7C */	bne lbl_80A80A98
/* 80A80A20  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80A80A24  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A80A28  41 82 00 34 */	beq lbl_80A80A5C
/* 80A80A2C  40 80 00 50 */	bge lbl_80A80A7C
/* 80A80A30  2C 00 00 03 */	cmpwi r0, 3
/* 80A80A34  41 82 00 08 */	beq lbl_80A80A3C
/* 80A80A38  48 00 00 44 */	b lbl_80A80A7C
lbl_80A80A3C:
/* 80A80A3C  7F A3 EB 78 */	mr r3, r29
/* 80A80A40  38 80 00 0E */	li r4, 0xe
/* 80A80A44  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80A48  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80A4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80A50  7D 89 03 A6 */	mtctr r12
/* 80A80A54  4E 80 04 21 */	bctrl 
/* 80A80A58  48 00 00 40 */	b lbl_80A80A98
lbl_80A80A5C:
/* 80A80A5C  7F A3 EB 78 */	mr r3, r29
/* 80A80A60  38 80 00 11 */	li r4, 0x11
/* 80A80A64  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80A68  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80A6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80A70  7D 89 03 A6 */	mtctr r12
/* 80A80A74  4E 80 04 21 */	bctrl 
/* 80A80A78  48 00 00 20 */	b lbl_80A80A98
lbl_80A80A7C:
/* 80A80A7C  7F A3 EB 78 */	mr r3, r29
/* 80A80A80  38 80 00 12 */	li r4, 0x12
/* 80A80A84  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80A88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80A8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80A90  7D 89 03 A6 */	mtctr r12
/* 80A80A94  4E 80 04 21 */	bctrl 
lbl_80A80A98:
/* 80A80A98  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A80A9C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80A80AA0  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80A80AA4  7C 04 00 00 */	cmpw r4, r0
/* 80A80AA8  41 82 05 14 */	beq lbl_80A80FBC
/* 80A80AAC  40 80 00 18 */	bge lbl_80A80AC4
/* 80A80AB0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A80AB4  7C 04 00 00 */	cmpw r4, r0
/* 80A80AB8  41 82 00 20 */	beq lbl_80A80AD8
/* 80A80ABC  40 80 02 6C */	bge lbl_80A80D28
/* 80A80AC0  48 00 05 68 */	b lbl_80A81028
lbl_80A80AC4:
/* 80A80AC4  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A80AC8  7C 04 00 00 */	cmpw r4, r0
/* 80A80ACC  41 82 05 10 */	beq lbl_80A80FDC
/* 80A80AD0  40 80 05 58 */	bge lbl_80A81028
/* 80A80AD4  48 00 04 F0 */	b lbl_80A80FC4
lbl_80A80AD8:
/* 80A80AD8  7F A3 EB 78 */	mr r3, r29
/* 80A80ADC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A80AE0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80A80AE4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A80AE8  4B 59 9C 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A80AEC  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80A80AF0  7C 60 07 34 */	extsh r0, r3
/* 80A80AF4  7C 04 00 00 */	cmpw r4, r0
/* 80A80AF8  40 82 00 28 */	bne lbl_80A80B20
/* 80A80AFC  7F A3 EB 78 */	mr r3, r29
/* 80A80B00  38 80 00 00 */	li r4, 0
/* 80A80B04  38 A0 00 01 */	li r5, 1
/* 80A80B08  38 C0 00 00 */	li r6, 0
/* 80A80B0C  4B 6D 32 78 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A80B10  2C 03 00 00 */	cmpwi r3, 0
/* 80A80B14  41 82 05 14 */	beq lbl_80A81028
/* 80A80B18  38 60 00 01 */	li r3, 1
/* 80A80B1C  48 00 05 10 */	b lbl_80A8102C
lbl_80A80B20:
/* 80A80B20  7F A3 EB 78 */	mr r3, r29
/* 80A80B24  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A80B28  4B 59 9B E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A80B2C  7C 7F 1B 78 */	mr r31, r3
/* 80A80B30  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A80B34  2C 00 00 00 */	cmpwi r0, 0
/* 80A80B38  40 82 01 2C */	bne lbl_80A80C64
/* 80A80B3C  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80A80B40  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80B44  7C 00 F8 50 */	subf r0, r0, r31
/* 80A80B48  7C 00 07 34 */	extsh r0, r0
/* 80A80B4C  C8 3E 05 08 */	lfd f1, 0x508(r30)
/* 80A80B50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A80B54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A80B58  3C 00 43 30 */	lis r0, 0x4330
/* 80A80B5C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A80B60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A80B64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A80B68  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A80B6C  FC 00 02 10 */	fabs f0, f0
/* 80A80B70  FC 00 00 18 */	frsp f0, f0
/* 80A80B74  FC 00 00 1E */	fctiwz f0, f0
/* 80A80B78  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A80B7C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A80B80  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A80B84  40 81 00 98 */	ble lbl_80A80C1C
/* 80A80B88  7F A3 EB 78 */	mr r3, r29
/* 80A80B8C  38 80 00 12 */	li r4, 0x12
/* 80A80B90  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80B94  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80B98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80B9C  7D 89 03 A6 */	mtctr r12
/* 80A80BA0  4E 80 04 21 */	bctrl 
/* 80A80BA4  3C 60 80 A8 */	lis r3, lit_4762@ha
/* 80A80BA8  38 83 3B C0 */	addi r4, r3, lit_4762@l
/* 80A80BAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A80BB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A80BB4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A80BB8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A80BBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A80BC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A80BC4  38 61 00 24 */	addi r3, r1, 0x24
/* 80A80BC8  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80A80BCC  4B 8E 14 7C */	b __ptmf_cmpr
/* 80A80BD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A80BD4  40 82 00 28 */	bne lbl_80A80BFC
/* 80A80BD8  7F A3 EB 78 */	mr r3, r29
/* 80A80BDC  38 80 00 26 */	li r4, 0x26
/* 80A80BE0  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80BE4  38 A0 00 00 */	li r5, 0
/* 80A80BE8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80BEC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80BF0  7D 89 03 A6 */	mtctr r12
/* 80A80BF4  4E 80 04 21 */	bctrl 
/* 80A80BF8  48 00 00 24 */	b lbl_80A80C1C
lbl_80A80BFC:
/* 80A80BFC  7F A3 EB 78 */	mr r3, r29
/* 80A80C00  38 80 00 2A */	li r4, 0x2a
/* 80A80C04  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80C08  38 A0 00 00 */	li r5, 0
/* 80A80C0C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80C10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80C14  7D 89 03 A6 */	mtctr r12
/* 80A80C18  4E 80 04 21 */	bctrl 
lbl_80A80C1C:
/* 80A80C1C  B3 FD 09 96 */	sth r31, 0x996(r29)
/* 80A80C20  38 00 00 00 */	li r0, 0
/* 80A80C24  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A80C28  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A80C2C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A80C30  7C 03 00 00 */	cmpw r3, r0
/* 80A80C34  40 82 00 10 */	bne lbl_80A80C44
/* 80A80C38  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80C3C  38 03 00 01 */	addi r0, r3, 1
/* 80A80C40  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A80C44:
/* 80A80C44  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80C48  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A80C4C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80C50  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80C54  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80C58  38 03 00 01 */	addi r0, r3, 1
/* 80A80C5C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80C60  48 00 00 90 */	b lbl_80A80CF0
lbl_80A80C64:
/* 80A80C64  2C 00 00 01 */	cmpwi r0, 1
/* 80A80C68  40 82 00 88 */	bne lbl_80A80CF0
/* 80A80C6C  7F A3 EB 78 */	mr r3, r29
/* 80A80C70  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A80C74  38 A0 00 00 */	li r5, 0
/* 80A80C78  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A80C7C  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A80C80  40 82 00 14 */	bne lbl_80A80C94
/* 80A80C84  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A80C88  2C 00 00 00 */	cmpwi r0, 0
/* 80A80C8C  41 81 00 08 */	bgt lbl_80A80C94
/* 80A80C90  38 A0 00 01 */	li r5, 1
lbl_80A80C94:
/* 80A80C94  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A80C98  41 82 00 0C */	beq lbl_80A80CA4
/* 80A80C9C  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80A80CA0  48 00 00 08 */	b lbl_80A80CA8
lbl_80A80CA4:
/* 80A80CA4  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
lbl_80A80CA8:
/* 80A80CA8  38 A0 00 00 */	li r5, 0
/* 80A80CAC  4B 6D 32 48 */	b turn__8daNpcF_cFsfi
/* 80A80CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A80CB4  41 82 00 2C */	beq lbl_80A80CE0
/* 80A80CB8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80CBC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80CC0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80CC4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A80CC8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80CCC  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A80CD0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80CD4  38 03 00 01 */	addi r0, r3, 1
/* 80A80CD8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80CDC  48 00 00 14 */	b lbl_80A80CF0
lbl_80A80CE0:
/* 80A80CE0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80CE4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80CE8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80CEC  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A80CF0:
/* 80A80CF0  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A80CF4  2C 00 00 01 */	cmpwi r0, 1
/* 80A80CF8  40 81 03 30 */	ble lbl_80A81028
/* 80A80CFC  7F A3 EB 78 */	mr r3, r29
/* 80A80D00  38 80 00 07 */	li r4, 7
/* 80A80D04  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80D08  38 A0 00 00 */	li r5, 0
/* 80A80D0C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80D10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80D14  7D 89 03 A6 */	mtctr r12
/* 80A80D18  4E 80 04 21 */	bctrl 
/* 80A80D1C  38 00 00 00 */	li r0, 0
/* 80A80D20  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80D24  48 00 03 04 */	b lbl_80A81028
lbl_80A80D28:
/* 80A80D28  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A80D2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A80D30  40 82 01 30 */	bne lbl_80A80E60
/* 80A80D34  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80A80D38  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80D3C  20 00 12 21 */	subfic r0, r0, 0x1221
/* 80A80D40  7C 00 07 34 */	extsh r0, r0
/* 80A80D44  C8 3E 05 08 */	lfd f1, 0x508(r30)
/* 80A80D48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A80D4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A80D50  3C 00 43 30 */	lis r0, 0x4330
/* 80A80D54  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A80D58  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A80D5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A80D60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A80D64  FC 00 02 10 */	fabs f0, f0
/* 80A80D68  FC 00 00 18 */	frsp f0, f0
/* 80A80D6C  FC 00 00 1E */	fctiwz f0, f0
/* 80A80D70  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A80D74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A80D78  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A80D7C  40 81 00 98 */	ble lbl_80A80E14
/* 80A80D80  7F A3 EB 78 */	mr r3, r29
/* 80A80D84  38 80 00 12 */	li r4, 0x12
/* 80A80D88  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80D8C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80D90  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80D94  7D 89 03 A6 */	mtctr r12
/* 80A80D98  4E 80 04 21 */	bctrl 
/* 80A80D9C  3C 60 80 A8 */	lis r3, lit_4762@ha
/* 80A80DA0  38 83 3B C0 */	addi r4, r3, lit_4762@l
/* 80A80DA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A80DA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A80DAC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A80DB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A80DB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A80DB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A80DBC  38 61 00 18 */	addi r3, r1, 0x18
/* 80A80DC0  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80A80DC4  4B 8E 12 84 */	b __ptmf_cmpr
/* 80A80DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80A80DCC  40 82 00 28 */	bne lbl_80A80DF4
/* 80A80DD0  7F A3 EB 78 */	mr r3, r29
/* 80A80DD4  38 80 00 26 */	li r4, 0x26
/* 80A80DD8  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80DDC  38 A0 00 00 */	li r5, 0
/* 80A80DE0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80DE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80DE8  7D 89 03 A6 */	mtctr r12
/* 80A80DEC  4E 80 04 21 */	bctrl 
/* 80A80DF0  48 00 00 24 */	b lbl_80A80E14
lbl_80A80DF4:
/* 80A80DF4  7F A3 EB 78 */	mr r3, r29
/* 80A80DF8  38 80 00 2A */	li r4, 0x2a
/* 80A80DFC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80E00  38 A0 00 00 */	li r5, 0
/* 80A80E04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80E08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80E0C  7D 89 03 A6 */	mtctr r12
/* 80A80E10  4E 80 04 21 */	bctrl 
lbl_80A80E14:
/* 80A80E14  38 00 12 21 */	li r0, 0x1221
/* 80A80E18  B0 1D 09 96 */	sth r0, 0x996(r29)
/* 80A80E1C  38 00 00 00 */	li r0, 0
/* 80A80E20  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A80E24  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A80E28  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A80E2C  7C 03 00 00 */	cmpw r3, r0
/* 80A80E30  40 82 00 10 */	bne lbl_80A80E40
/* 80A80E34  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80E38  38 03 00 01 */	addi r0, r3, 1
/* 80A80E3C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A80E40:
/* 80A80E40  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80E44  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A80E48  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80E4C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80E50  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80E54  38 03 00 01 */	addi r0, r3, 1
/* 80A80E58  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80E5C  48 00 00 90 */	b lbl_80A80EEC
lbl_80A80E60:
/* 80A80E60  2C 00 00 01 */	cmpwi r0, 1
/* 80A80E64  40 82 00 88 */	bne lbl_80A80EEC
/* 80A80E68  7F A3 EB 78 */	mr r3, r29
/* 80A80E6C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A80E70  38 A0 00 00 */	li r5, 0
/* 80A80E74  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A80E78  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A80E7C  40 82 00 14 */	bne lbl_80A80E90
/* 80A80E80  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A80E84  2C 00 00 00 */	cmpwi r0, 0
/* 80A80E88  41 81 00 08 */	bgt lbl_80A80E90
/* 80A80E8C  38 A0 00 01 */	li r5, 1
lbl_80A80E90:
/* 80A80E90  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A80E94  41 82 00 0C */	beq lbl_80A80EA0
/* 80A80E98  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80A80E9C  48 00 00 08 */	b lbl_80A80EA4
lbl_80A80EA0:
/* 80A80EA0  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
lbl_80A80EA4:
/* 80A80EA4  38 A0 00 00 */	li r5, 0
/* 80A80EA8  4B 6D 30 4C */	b turn__8daNpcF_cFsfi
/* 80A80EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A80EB0  41 82 00 2C */	beq lbl_80A80EDC
/* 80A80EB4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80EB8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80EBC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80EC0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A80EC4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80EC8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A80ECC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80ED0  38 03 00 01 */	addi r0, r3, 1
/* 80A80ED4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A80ED8  48 00 00 14 */	b lbl_80A80EEC
lbl_80A80EDC:
/* 80A80EDC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80EE0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80EE4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80EE8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A80EEC:
/* 80A80EEC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A80EF0  2C 00 00 01 */	cmpwi r0, 1
/* 80A80EF4  40 81 00 40 */	ble lbl_80A80F34
/* 80A80EF8  7F A3 EB 78 */	mr r3, r29
/* 80A80EFC  38 80 00 10 */	li r4, 0x10
/* 80A80F00  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80F04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80F08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80F0C  7D 89 03 A6 */	mtctr r12
/* 80A80F10  4E 80 04 21 */	bctrl 
/* 80A80F14  7F A3 EB 78 */	mr r3, r29
/* 80A80F18  38 80 00 28 */	li r4, 0x28
/* 80A80F1C  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A80F20  38 A0 00 00 */	li r5, 0
/* 80A80F24  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80F28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80F2C  7D 89 03 A6 */	mtctr r12
/* 80A80F30  4E 80 04 21 */	bctrl 
lbl_80A80F34:
/* 80A80F34  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A80F38  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A80F3C  40 82 00 EC */	bne lbl_80A81028
/* 80A80F40  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A80F44  2C 00 00 00 */	cmpwi r0, 0
/* 80A80F48  40 82 00 60 */	bne lbl_80A80FA8
/* 80A80F4C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A80F50  38 63 00 0C */	addi r3, r3, 0xc
/* 80A80F54  C0 3E 05 60 */	lfs f1, 0x560(r30)
/* 80A80F58  4B 8A 74 D4 */	b checkPass__12J3DFrameCtrlFf
/* 80A80F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A80F60  41 82 00 48 */	beq lbl_80A80FA8
/* 80A80F64  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001E@ha */
/* 80A80F68  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0002001E@l */
/* 80A80F6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A80F70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A80F74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A80F78  80 63 00 00 */	lwz r3, 0(r3)
/* 80A80F7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A80F80  38 A0 00 00 */	li r5, 0
/* 80A80F84  38 C0 00 00 */	li r6, 0
/* 80A80F88  38 E0 00 00 */	li r7, 0
/* 80A80F8C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80A80F90  FC 40 08 90 */	fmr f2, f1
/* 80A80F94  C0 7E 04 E4 */	lfs f3, 0x4e4(r30)
/* 80A80F98  FC 80 18 90 */	fmr f4, f3
/* 80A80F9C  39 00 00 00 */	li r8, 0
/* 80A80FA0  4B 82 A9 E4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A80FA4  48 00 00 84 */	b lbl_80A81028
lbl_80A80FA8:
/* 80A80FA8  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A80FAC  2C 00 00 00 */	cmpwi r0, 0
/* 80A80FB0  40 81 00 78 */	ble lbl_80A81028
/* 80A80FB4  38 60 00 01 */	li r3, 1
/* 80A80FB8  48 00 00 74 */	b lbl_80A8102C
lbl_80A80FBC:
/* 80A80FBC  38 60 00 01 */	li r3, 1
/* 80A80FC0  48 00 00 6C */	b lbl_80A8102C
lbl_80A80FC4:
/* 80A80FC4  38 7D 0D FC */	addi r3, r29, 0xdfc
/* 80A80FC8  48 00 21 25 */	bl func_80A830EC
/* 80A80FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80A80FD0  40 82 00 58 */	bne lbl_80A81028
/* 80A80FD4  38 60 00 01 */	li r3, 1
/* 80A80FD8  48 00 00 54 */	b lbl_80A8102C
lbl_80A80FDC:
/* 80A80FDC  7F A3 EB 78 */	mr r3, r29
/* 80A80FE0  38 80 00 00 */	li r4, 0
/* 80A80FE4  38 A0 00 01 */	li r5, 1
/* 80A80FE8  38 C0 00 00 */	li r6, 0
/* 80A80FEC  4B 6D 2D 98 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A80FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A80FF4  41 82 00 34 */	beq lbl_80A81028
/* 80A80FF8  38 00 01 08 */	li r0, 0x108
/* 80A80FFC  B0 01 00 08 */	sth r0, 8(r1)
/* 80A81000  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80A81004  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80A81008  38 81 00 08 */	addi r4, r1, 8
/* 80A8100C  4B 59 87 EC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A81010  28 03 00 00 */	cmplwi r3, 0
/* 80A81014  41 82 00 0C */	beq lbl_80A81020
/* 80A81018  38 00 00 01 */	li r0, 1
/* 80A8101C  B0 03 05 FE */	sth r0, 0x5fe(r3)
lbl_80A81020:
/* 80A81020  38 60 00 01 */	li r3, 1
/* 80A81024  48 00 00 08 */	b lbl_80A8102C
lbl_80A81028:
/* 80A81028  38 60 00 00 */	li r3, 0
lbl_80A8102C:
/* 80A8102C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A81030  4B 8E 11 F0 */	b _restgpr_27
/* 80A81034  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A81038  7C 08 03 A6 */	mtlr r0
/* 80A8103C  38 21 00 60 */	addi r1, r1, 0x60
/* 80A81040  4E 80 00 20 */	blr 
