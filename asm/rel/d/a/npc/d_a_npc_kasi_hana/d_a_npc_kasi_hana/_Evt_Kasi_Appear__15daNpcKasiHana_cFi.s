lbl_80A1F384:
/* 80A1F384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1F388  7C 08 02 A6 */	mflr r0
/* 80A1F38C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1F390  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1F394  4B 94 2E 48 */	b _savegpr_29
/* 80A1F398  7C 7D 1B 78 */	mr r29, r3
/* 80A1F39C  7C 9E 23 78 */	mr r30, r4
/* 80A1F3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1F3A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1F3A8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A1F3AC  38 00 FF FF */	li r0, -1
/* 80A1F3B0  90 01 00 08 */	stw r0, 8(r1)
/* 80A1F3B4  7F E3 FB 78 */	mr r3, r31
/* 80A1F3B8  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1F3BC  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1F3C0  38 A5 00 65 */	addi r5, r5, 0x65
/* 80A1F3C4  38 C0 00 03 */	li r6, 3
/* 80A1F3C8  4B 62 8D 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1F3CC  28 03 00 00 */	cmplwi r3, 0
/* 80A1F3D0  41 82 00 10 */	beq lbl_80A1F3E0
/* 80A1F3D4  80 03 00 00 */	lwz r0, 0(r3)
/* 80A1F3D8  90 01 00 08 */	stw r0, 8(r1)
/* 80A1F3DC  48 00 00 0C */	b lbl_80A1F3E8
lbl_80A1F3E0:
/* 80A1F3E0  38 60 00 01 */	li r3, 1
/* 80A1F3E4  48 00 00 30 */	b lbl_80A1F414
lbl_80A1F3E8:
/* 80A1F3E8  7F E3 FB 78 */	mr r3, r31
/* 80A1F3EC  7F C4 F3 78 */	mr r4, r30
/* 80A1F3F0  4B 62 89 5C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A1F3F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F3F8  41 82 00 10 */	beq lbl_80A1F408
/* 80A1F3FC  7F A3 EB 78 */	mr r3, r29
/* 80A1F400  38 81 00 08 */	addi r4, r1, 8
/* 80A1F404  48 00 00 29 */	bl _Evt_Kasi_Appear_CutInit__15daNpcKasiHana_cFRCi
lbl_80A1F408:
/* 80A1F408  7F A3 EB 78 */	mr r3, r29
/* 80A1F40C  38 81 00 08 */	addi r4, r1, 8
/* 80A1F410  48 00 00 FD */	bl _Evt_Kasi_Appear_CutMain__15daNpcKasiHana_cFRCi
lbl_80A1F414:
/* 80A1F414  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1F418  4B 94 2E 10 */	b _restgpr_29
/* 80A1F41C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1F420  7C 08 03 A6 */	mtlr r0
/* 80A1F424  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1F428  4E 80 00 20 */	blr 
