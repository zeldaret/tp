lbl_80A1F9F4:
/* 80A1F9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1F9F8  7C 08 02 A6 */	mflr r0
/* 80A1F9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1FA00  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1FA04  4B 94 27 D9 */	bl _savegpr_29
/* 80A1FA08  7C 7D 1B 78 */	mr r29, r3
/* 80A1FA0C  7C 9E 23 78 */	mr r30, r4
/* 80A1FA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1FA14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1FA18  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A1FA1C  38 00 FF FF */	li r0, -1
/* 80A1FA20  90 01 00 08 */	stw r0, 8(r1)
/* 80A1FA24  7F E3 FB 78 */	mr r3, r31
/* 80A1FA28  3C A0 80 A2 */	lis r5, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A1FA2C  38 A5 13 58 */	addi r5, r5, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A1FA30  38 A5 00 65 */	addi r5, r5, 0x65
/* 80A1FA34  38 C0 00 03 */	li r6, 3
/* 80A1FA38  4B 62 86 B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1FA3C  28 03 00 00 */	cmplwi r3, 0
/* 80A1FA40  41 82 00 10 */	beq lbl_80A1FA50
/* 80A1FA44  80 03 00 00 */	lwz r0, 0(r3)
/* 80A1FA48  90 01 00 08 */	stw r0, 8(r1)
/* 80A1FA4C  48 00 00 0C */	b lbl_80A1FA58
lbl_80A1FA50:
/* 80A1FA50  38 60 00 01 */	li r3, 1
/* 80A1FA54  48 00 00 30 */	b lbl_80A1FA84
lbl_80A1FA58:
/* 80A1FA58  7F E3 FB 78 */	mr r3, r31
/* 80A1FA5C  7F C4 F3 78 */	mr r4, r30
/* 80A1FA60  4B 62 82 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A1FA64  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FA68  41 82 00 10 */	beq lbl_80A1FA78
/* 80A1FA6C  7F A3 EB 78 */	mr r3, r29
/* 80A1FA70  38 81 00 08 */	addi r4, r1, 8
/* 80A1FA74  48 00 00 29 */	bl _Evt_Kasi_CutInit__15daNpcKasiHana_cFRCi
lbl_80A1FA78:
/* 80A1FA78  7F A3 EB 78 */	mr r3, r29
/* 80A1FA7C  38 81 00 08 */	addi r4, r1, 8
/* 80A1FA80  48 00 01 45 */	bl _Evt_Kasi_CutMain__15daNpcKasiHana_cFRCi
lbl_80A1FA84:
/* 80A1FA84  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1FA88  4B 94 27 A1 */	bl _restgpr_29
/* 80A1FA8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1FA90  7C 08 03 A6 */	mtlr r0
/* 80A1FA94  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1FA98  4E 80 00 20 */	blr 
