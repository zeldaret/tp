lbl_80D1488C:
/* 80D1488C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D14890  7C 08 02 A6 */	mflr r0
/* 80D14894  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D14898  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1489C  4B 64 D9 34 */	b _savegpr_26
/* 80D148A0  7C 7F 1B 78 */	mr r31, r3
/* 80D148A4  88 03 63 71 */	lbz r0, 0x6371(r3)
/* 80D148A8  28 00 00 00 */	cmplwi r0, 0
/* 80D148AC  41 82 00 F0 */	beq lbl_80D1499C
/* 80D148B0  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D148B4  28 00 00 00 */	cmplwi r0, 0
/* 80D148B8  40 82 00 98 */	bne lbl_80D14950
/* 80D148BC  3B 40 00 00 */	li r26, 0
/* 80D148C0  3B C0 00 00 */	li r30, 0
/* 80D148C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D148C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D148CC  3F 83 00 02 */	addis r28, r3, 2
/* 80D148D0  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80D148D4  3C 60 80 D1 */	lis r3, l_bmdidx_4300@ha
/* 80D148D8  3B A3 56 64 */	addi r29, r3, l_bmdidx_4300@l
/* 80D148DC  3B 9C C2 F8 */	addi r28, r28, -15624
lbl_80D148E0:
/* 80D148E0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D148E4  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80D148E8  7F 85 E3 78 */	mr r5, r28
/* 80D148EC  38 C0 00 80 */	li r6, 0x80
/* 80D148F0  4B 32 79 FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D148F4  7C 64 1B 78 */	mr r4, r3
/* 80D148F8  7F 63 DB 78 */	mr r3, r27
/* 80D148FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D14900  7C 05 07 74 */	extsb r5, r0
/* 80D14904  4B 31 82 2C */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
/* 80D14908  3B 5A 00 01 */	addi r26, r26, 1
/* 80D1490C  28 1A 00 02 */	cmplwi r26, 2
/* 80D14910  3B DE 00 04 */	addi r30, r30, 4
/* 80D14914  41 80 FF CC */	blt lbl_80D148E0
/* 80D14918  3B 5F 05 8C */	addi r26, r31, 0x58c
/* 80D1491C  3B 80 00 00 */	li r28, 0
/* 80D14920  48 00 00 20 */	b lbl_80D14940
lbl_80D14924:
/* 80D14924  80 9A 00 70 */	lwz r4, 0x70(r26)
/* 80D14928  28 04 00 00 */	cmplwi r4, 0
/* 80D1492C  41 82 00 0C */	beq lbl_80D14938
/* 80D14930  7F 63 DB 78 */	mr r3, r27
/* 80D14934  4B 35 F9 1C */	b Release__4cBgSFP9dBgW_Base
lbl_80D14938:
/* 80D14938  3B 9C 00 01 */	addi r28, r28, 1
/* 80D1493C  3B 5A 00 78 */	addi r26, r26, 0x78
lbl_80D14940:
/* 80D14940  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D14944  7C 1C 00 00 */	cmpw r28, r0
/* 80D14948  41 80 FF DC */	blt lbl_80D14924
/* 80D1494C  48 00 00 48 */	b lbl_80D14994
lbl_80D14950:
/* 80D14950  28 00 00 01 */	cmplwi r0, 1
/* 80D14954  40 82 00 40 */	bne lbl_80D14994
/* 80D14958  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1495C  38 80 00 06 */	li r4, 6
/* 80D14960  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D14964  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D14968  3C A5 00 02 */	addis r5, r5, 2
/* 80D1496C  38 C0 00 80 */	li r6, 0x80
/* 80D14970  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D14974  4B 32 79 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D14978  7C 64 1B 78 */	mr r4, r3
/* 80D1497C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D14980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D14984  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D14988  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1498C  7C 05 07 74 */	extsb r5, r0
/* 80D14990  4B 31 81 A0 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80D14994:
/* 80D14994  38 00 00 00 */	li r0, 0
/* 80D14998  98 1F 63 71 */	stb r0, 0x6371(r31)
lbl_80D1499C:
/* 80D1499C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D149A0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D149A4  4B 31 86 64 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D149A8  88 1F 63 70 */	lbz r0, 0x6370(r31)
/* 80D149AC  28 00 00 00 */	cmplwi r0, 0
/* 80D149B0  41 82 00 10 */	beq lbl_80D149C0
/* 80D149B4  38 00 00 00 */	li r0, 0
/* 80D149B8  3C 60 80 D1 */	lis r3, struct_80D158F4+0x1@ha
/* 80D149BC  98 03 58 F5 */	stb r0, struct_80D158F4+0x1@l(r3)
lbl_80D149C0:
/* 80D149C0  38 60 00 01 */	li r3, 1
/* 80D149C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D149C8  4B 64 D8 54 */	b _restgpr_26
/* 80D149CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D149D0  7C 08 03 A6 */	mtlr r0
/* 80D149D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D149D8  4E 80 00 20 */	blr 
