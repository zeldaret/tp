lbl_80A2016C:
/* 80A2016C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A20170  7C 08 02 A6 */	mflr r0
/* 80A20174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A20178  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2017C  4B 94 20 5D */	bl _savegpr_28
/* 80A20180  7C 7C 1B 78 */	mr r28, r3
/* 80A20184  7C 9D 23 78 */	mr r29, r4
/* 80A20188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2018C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A20190  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A20194  38 00 FF FF */	li r0, -1
/* 80A20198  90 01 00 08 */	stw r0, 8(r1)
/* 80A2019C  7F E3 FB 78 */	mr r3, r31
/* 80A201A0  3C A0 80 A2 */	lis r5, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A201A4  38 A5 13 58 */	addi r5, r5, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A201A8  38 A5 00 65 */	addi r5, r5, 0x65
/* 80A201AC  38 C0 00 03 */	li r6, 3
/* 80A201B0  4B 62 7F 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A201B4  28 03 00 00 */	cmplwi r3, 0
/* 80A201B8  41 82 00 10 */	beq lbl_80A201C8
/* 80A201BC  80 03 00 00 */	lwz r0, 0(r3)
/* 80A201C0  90 01 00 08 */	stw r0, 8(r1)
/* 80A201C4  48 00 00 0C */	b lbl_80A201D0
lbl_80A201C8:
/* 80A201C8  38 60 00 01 */	li r3, 1
/* 80A201CC  48 00 00 60 */	b lbl_80A2022C
lbl_80A201D0:
/* 80A201D0  7F E3 FB 78 */	mr r3, r31
/* 80A201D4  7F A4 EB 78 */	mr r4, r29
/* 80A201D8  4B 62 7B 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A201DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A201E0  41 82 00 10 */	beq lbl_80A201F0
/* 80A201E4  7F 83 E3 78 */	mr r3, r28
/* 80A201E8  38 81 00 08 */	addi r4, r1, 8
/* 80A201EC  48 00 00 59 */	bl _Evt_Kasi_Cheer2_CutInit__15daNpcKasiHana_cFRCi
lbl_80A201F0:
/* 80A201F0  3B C0 FF FF */	li r30, -1
/* 80A201F4  7F E3 FB 78 */	mr r3, r31
/* 80A201F8  7F A4 EB 78 */	mr r4, r29
/* 80A201FC  3C A0 80 A2 */	lis r5, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A20200  38 A5 13 58 */	addi r5, r5, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A20204  38 A5 00 72 */	addi r5, r5, 0x72
/* 80A20208  38 C0 00 03 */	li r6, 3
/* 80A2020C  4B 62 7E E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A20210  28 03 00 00 */	cmplwi r3, 0
/* 80A20214  41 82 00 08 */	beq lbl_80A2021C
/* 80A20218  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A2021C:
/* 80A2021C  7F 83 E3 78 */	mr r3, r28
/* 80A20220  38 81 00 08 */	addi r4, r1, 8
/* 80A20224  7F C5 F3 78 */	mr r5, r30
/* 80A20228  48 00 01 29 */	bl _Evt_Kasi_Cheer2_CutMain__15daNpcKasiHana_cFRCii
lbl_80A2022C:
/* 80A2022C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A20230  4B 94 1F F5 */	bl _restgpr_28
/* 80A20234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A20238  7C 08 03 A6 */	mtlr r0
/* 80A2023C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A20240  4E 80 00 20 */	blr 
