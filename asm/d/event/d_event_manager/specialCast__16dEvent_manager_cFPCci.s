lbl_80048618:
/* 80048618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004861C  7C 08 02 A6 */	mflr r0
/* 80048620  90 01 00 24 */	stw r0, 0x24(r1)
/* 80048624  39 61 00 20 */	addi r11, r1, 0x20
/* 80048628  48 31 9B B5 */	bl _savegpr_29
/* 8004862C  7C 7D 1B 78 */	mr r29, r3
/* 80048630  7C BE 2B 78 */	mr r30, r5
/* 80048634  3B E0 00 00 */	li r31, 0
/* 80048638  28 04 00 00 */	cmplwi r4, 0
/* 8004863C  40 82 00 0C */	bne lbl_80048648
/* 80048640  38 60 00 00 */	li r3, 0
/* 80048644  48 00 00 EC */	b lbl_80048730
lbl_80048648:
/* 80048648  7C 83 23 78 */	mr r3, r4
/* 8004864C  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80048650  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80048654  38 84 01 7E */	addi r4, r4, 0x17e
/* 80048658  48 32 03 3D */	bl strcmp
/* 8004865C  2C 03 00 00 */	cmpwi r3, 0
/* 80048660  40 82 00 A0 */	bne lbl_80048700
/* 80048664  7F A3 EB 78 */	mr r3, r29
/* 80048668  38 80 02 26 */	li r4, 0x226
/* 8004866C  7F C5 F3 78 */	mr r5, r30
/* 80048670  4B FF FE B1 */	bl specialCast_Shutter__16dEvent_manager_cFsi
/* 80048674  7C 7F 1B 79 */	or. r31, r3, r3
/* 80048678  40 82 00 18 */	bne lbl_80048690
/* 8004867C  7F A3 EB 78 */	mr r3, r29
/* 80048680  38 80 02 28 */	li r4, 0x228
/* 80048684  7F C5 F3 78 */	mr r5, r30
/* 80048688  4B FF FE 99 */	bl specialCast_Shutter__16dEvent_manager_cFsi
/* 8004868C  7C 7F 1B 78 */	mr r31, r3
lbl_80048690:
/* 80048690  28 1F 00 00 */	cmplwi r31, 0
/* 80048694  40 82 00 18 */	bne lbl_800486AC
/* 80048698  7F A3 EB 78 */	mr r3, r29
/* 8004869C  38 80 02 29 */	li r4, 0x229
/* 800486A0  7F C5 F3 78 */	mr r5, r30
/* 800486A4  4B FF FE 7D */	bl specialCast_Shutter__16dEvent_manager_cFsi
/* 800486A8  7C 7F 1B 78 */	mr r31, r3
lbl_800486AC:
/* 800486AC  28 1F 00 00 */	cmplwi r31, 0
/* 800486B0  40 82 00 18 */	bne lbl_800486C8
/* 800486B4  7F A3 EB 78 */	mr r3, r29
/* 800486B8  38 80 02 2A */	li r4, 0x22a
/* 800486BC  7F C5 F3 78 */	mr r5, r30
/* 800486C0  4B FF FE 61 */	bl specialCast_Shutter__16dEvent_manager_cFsi
/* 800486C4  7C 7F 1B 78 */	mr r31, r3
lbl_800486C8:
/* 800486C8  28 1F 00 00 */	cmplwi r31, 0
/* 800486CC  40 82 00 18 */	bne lbl_800486E4
/* 800486D0  7F A3 EB 78 */	mr r3, r29
/* 800486D4  38 80 02 2B */	li r4, 0x22b
/* 800486D8  7F C5 F3 78 */	mr r5, r30
/* 800486DC  4B FF FE 45 */	bl specialCast_Shutter__16dEvent_manager_cFsi
/* 800486E0  7C 7F 1B 78 */	mr r31, r3
lbl_800486E4:
/* 800486E4  28 1F 00 00 */	cmplwi r31, 0
/* 800486E8  41 82 00 18 */	beq lbl_80048700
/* 800486EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800486F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800486F4  A0 03 4F A0 */	lhz r0, 0x4fa0(r3)
/* 800486F8  60 00 00 10 */	ori r0, r0, 0x10
/* 800486FC  B0 03 4F A0 */	sth r0, 0x4fa0(r3)
lbl_80048700:
/* 80048700  28 1F 00 00 */	cmplwi r31, 0
/* 80048704  41 82 00 28 */	beq lbl_8004872C
/* 80048708  2C 1E 00 00 */	cmpwi r30, 0
/* 8004870C  41 82 00 14 */	beq lbl_80048720
/* 80048710  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80048714  60 00 10 00 */	ori r0, r0, 0x1000
/* 80048718  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8004871C  48 00 00 10 */	b lbl_8004872C
lbl_80048720:
/* 80048720  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80048724  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80048728  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_8004872C:
/* 8004872C  7F E3 FB 78 */	mr r3, r31
lbl_80048730:
/* 80048730  39 61 00 20 */	addi r11, r1, 0x20
/* 80048734  48 31 9A F5 */	bl _restgpr_29
/* 80048738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004873C  7C 08 03 A6 */	mtlr r0
/* 80048740  38 21 00 20 */	addi r1, r1, 0x20
/* 80048744  4E 80 00 20 */	blr 
