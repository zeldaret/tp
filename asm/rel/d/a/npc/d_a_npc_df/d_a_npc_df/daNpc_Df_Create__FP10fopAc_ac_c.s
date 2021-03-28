lbl_809A6564:
/* 809A6564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A6568  7C 08 02 A6 */	mflr r0
/* 809A656C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A6570  39 61 00 20 */	addi r11, r1, 0x20
/* 809A6574  4B 9B BC 64 */	b _savegpr_28
/* 809A6578  7C 7F 1B 78 */	mr r31, r3
/* 809A657C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809A6580  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809A6584  40 82 00 40 */	bne lbl_809A65C4
/* 809A6588  7F E0 FB 79 */	or. r0, r31, r31
/* 809A658C  41 82 00 2C */	beq lbl_809A65B8
/* 809A6590  7C 1C 03 78 */	mr r28, r0
/* 809A6594  4B 67 25 D0 */	b __ct__10fopAc_ac_cFv
/* 809A6598  38 7C 05 74 */	addi r3, r28, 0x574
/* 809A659C  3C 80 80 9A */	lis r4, __ct__4df_sFv@ha
/* 809A65A0  38 84 67 64 */	addi r4, r4, __ct__4df_sFv@l
/* 809A65A4  3C A0 80 9A */	lis r5, __dt__4df_sFv@ha
/* 809A65A8  38 A5 67 28 */	addi r5, r5, __dt__4df_sFv@l
/* 809A65AC  38 C0 00 7C */	li r6, 0x7c
/* 809A65B0  38 E0 00 10 */	li r7, 0x10
/* 809A65B4  4B 9B B7 AC */	b __construct_array
lbl_809A65B8:
/* 809A65B8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 809A65BC  60 00 00 08 */	ori r0, r0, 8
/* 809A65C0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_809A65C4:
/* 809A65C4  38 7F 05 68 */	addi r3, r31, 0x568
/* 809A65C8  3C 80 80 9A */	lis r4, stringBase0@ha
/* 809A65CC  38 84 69 7C */	addi r4, r4, stringBase0@l
/* 809A65D0  4B 68 68 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809A65D4  7C 7E 1B 78 */	mr r30, r3
/* 809A65D8  2C 1E 00 04 */	cmpwi r30, 4
/* 809A65DC  40 82 01 30 */	bne lbl_809A670C
/* 809A65E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809A65E4  98 1F 05 70 */	stb r0, 0x570(r31)
/* 809A65E8  88 7F 05 70 */	lbz r3, 0x570(r31)
/* 809A65EC  38 03 00 01 */	addi r0, r3, 1
/* 809A65F0  90 1F 0D 40 */	stw r0, 0xd40(r31)
/* 809A65F4  80 1F 0D 40 */	lwz r0, 0xd40(r31)
/* 809A65F8  2C 00 00 10 */	cmpwi r0, 0x10
/* 809A65FC  40 81 00 0C */	ble lbl_809A6608
/* 809A6600  38 00 00 10 */	li r0, 0x10
/* 809A6604  90 1F 0D 40 */	stw r0, 0xd40(r31)
lbl_809A6608:
/* 809A6608  7F E3 FB 78 */	mr r3, r31
/* 809A660C  3C 80 80 9A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 809A6610  38 84 64 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 809A6614  38 A0 3B 90 */	li r5, 0x3b90
/* 809A6618  4B 67 3E 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809A661C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A6620  40 82 00 0C */	bne lbl_809A662C
/* 809A6624  38 60 00 05 */	li r3, 5
/* 809A6628  48 00 00 E8 */	b lbl_809A6710
lbl_809A662C:
/* 809A662C  38 C0 00 00 */	li r6, 0
/* 809A6630  38 60 00 00 */	li r3, 0
/* 809A6634  38 A0 00 01 */	li r5, 1
/* 809A6638  3C 80 80 9A */	lis r4, lit_3891@ha
/* 809A663C  C0 04 69 20 */	lfs f0, lit_3891@l(r4)
/* 809A6640  48 00 00 34 */	b lbl_809A6674
lbl_809A6644:
/* 809A6644  7C 9F 1A 14 */	add r4, r31, r3
/* 809A6648  98 C4 05 EB */	stb r6, 0x5eb(r4)
/* 809A664C  98 A4 05 E8 */	stb r5, 0x5e8(r4)
/* 809A6650  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 809A6654  D0 24 05 7C */	stfs f1, 0x57c(r4)
/* 809A6658  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 809A665C  D0 24 05 80 */	stfs f1, 0x580(r4)
/* 809A6660  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 809A6664  D0 24 05 84 */	stfs f1, 0x584(r4)
/* 809A6668  D0 04 05 CC */	stfs f0, 0x5cc(r4)
/* 809A666C  38 C6 00 01 */	addi r6, r6, 1
/* 809A6670  38 63 00 7C */	addi r3, r3, 0x7c
lbl_809A6674:
/* 809A6674  80 1F 0D 40 */	lwz r0, 0xd40(r31)
/* 809A6678  7C 06 00 00 */	cmpw r6, r0
/* 809A667C  41 80 FF C8 */	blt lbl_809A6644
/* 809A6680  7F E3 FB 78 */	mr r3, r31
/* 809A6684  4B FF FC DD */	bl daNpc_Df_Execute__FP12npc_df_class
/* 809A6688  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A668C  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A6690  38 80 00 03 */	li r4, 3
/* 809A6694  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809A6698  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809A669C  3F A5 00 02 */	addis r29, r5, 2
/* 809A66A0  3B BD C2 F8 */	addi r29, r29, -15624
/* 809A66A4  7F A5 EB 78 */	mr r5, r29
/* 809A66A8  38 C0 00 80 */	li r6, 0x80
/* 809A66AC  4B 69 5C 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A66B0  7C 64 1B 78 */	mr r4, r3
/* 809A66B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A66B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A66BC  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 809A66C0  7F 83 E3 78 */	mr r3, r28
/* 809A66C4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A66C8  7C 05 07 74 */	extsb r5, r0
/* 809A66CC  38 C0 00 00 */	li r6, 0
/* 809A66D0  4B 68 64 20 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 809A66D4  3C 60 80 9A */	lis r3, stringBase0@ha
/* 809A66D8  38 63 69 7C */	addi r3, r3, stringBase0@l
/* 809A66DC  38 80 00 04 */	li r4, 4
/* 809A66E0  7F A5 EB 78 */	mr r5, r29
/* 809A66E4  38 C0 00 80 */	li r6, 0x80
/* 809A66E8  4B 69 5C 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A66EC  7C 64 1B 78 */	mr r4, r3
/* 809A66F0  7F 83 E3 78 */	mr r3, r28
/* 809A66F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809A66F8  7C 05 07 74 */	extsb r5, r0
/* 809A66FC  38 C0 00 00 */	li r6, 0
/* 809A6700  4B 68 63 F0 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 809A6704  38 00 00 01 */	li r0, 1
/* 809A6708  98 1F 05 73 */	stb r0, 0x573(r31)
lbl_809A670C:
/* 809A670C  7F C3 F3 78 */	mr r3, r30
lbl_809A6710:
/* 809A6710  39 61 00 20 */	addi r11, r1, 0x20
/* 809A6714  4B 9B BB 10 */	b _restgpr_28
/* 809A6718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A671C  7C 08 03 A6 */	mtlr r0
/* 809A6720  38 21 00 20 */	addi r1, r1, 0x20
/* 809A6724  4E 80 00 20 */	blr 
