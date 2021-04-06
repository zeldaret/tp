lbl_801F2840:
/* 801F2840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2844  7C 08 02 A6 */	mflr r0
/* 801F2848  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F284C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2850  48 16 F9 8D */	bl _savegpr_29
/* 801F2854  7C 7D 1B 78 */	mr r29, r3
/* 801F2858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F285C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F2860  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801F2864  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801F2868  7D 89 03 A6 */	mtctr r12
/* 801F286C  4E 80 04 21 */	bctrl 
/* 801F2870  88 03 00 09 */	lbz r0, 9(r3)
/* 801F2874  54 04 FE FE */	rlwinm r4, r0, 0x1f, 0x1b, 0x1f
/* 801F2878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F287C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F2880  4B E4 28 71 */	bl putSave__10dSv_info_cFi
/* 801F2884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F2888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F288C  38 9D 01 D0 */	addi r4, r29, 0x1d0
/* 801F2890  88 BD 00 54 */	lbz r5, 0x54(r29)
/* 801F2894  4B E4 2F 05 */	bl memory_to_card__10dSv_info_cFPci
/* 801F2898  38 7D 01 D0 */	addi r3, r29, 0x1d0
/* 801F289C  88 9D 00 54 */	lbz r4, 0x54(r29)
/* 801F28A0  4B E2 54 99 */	bl mDoMemCdRWm_SetCheckSumGameData__FPUcUc
/* 801F28A4  3B FD 01 D0 */	addi r31, r29, 0x1d0
/* 801F28A8  3B C0 00 00 */	li r30, 0
lbl_801F28AC:
/* 801F28AC  7F E3 FB 78 */	mr r3, r31
/* 801F28B0  4B E2 54 3D */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 801F28B4  3B DE 00 01 */	addi r30, r30, 1
/* 801F28B8  2C 1E 00 03 */	cmpwi r30, 3
/* 801F28BC  3B FF 0A 94 */	addi r31, r31, 0xa94
/* 801F28C0  41 80 FF EC */	blt lbl_801F28AC
/* 801F28C4  7F A3 EB 78 */	mr r3, r29
/* 801F28C8  48 00 3E F1 */	bl dataSave__12dMenu_save_cFv
/* 801F28CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801F28D0  48 16 F9 59 */	bl _restgpr_29
/* 801F28D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F28D8  7C 08 03 A6 */	mtlr r0
/* 801F28DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F28E0  4E 80 00 20 */	blr 
