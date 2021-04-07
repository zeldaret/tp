lbl_8003C85C:
/* 8003C85C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003C860  7C 08 02 A6 */	mflr r0
/* 8003C864  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003C868  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C86C  48 32 59 65 */	bl _savegpr_26
/* 8003C870  7C 7A 1B 78 */	mr r26, r3
/* 8003C874  3B 60 00 00 */	li r27, 0
/* 8003C878  3B E0 00 00 */	li r31, 0
/* 8003C87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003C880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003C884  3F 83 00 02 */	addis r28, r3, 2
/* 8003C888  3C 60 80 38 */	lis r3, d_map_d_map_path__stringBase0@ha /* 0x80379C4C@ha */
/* 8003C88C  3B A3 9C 4C */	addi r29, r3, d_map_d_map_path__stringBase0@l /* 0x80379C4C@l */
/* 8003C890  3C 60 80 38 */	lis r3, data@ha /* 0x80379C30@ha */
/* 8003C894  3B C3 9C 30 */	addi r30, r3, data@l /* 0x80379C30@l */
/* 8003C898  3B 9C C2 F8 */	addi r28, r28, -15624
lbl_8003C89C:
/* 8003C89C  38 60 00 20 */	li r3, 0x20
/* 8003C8A0  48 29 23 AD */	bl __nw__FUl
/* 8003C8A4  7C 7A F9 2E */	stwx r3, r26, r31
/* 8003C8A8  7F A3 EB 78 */	mr r3, r29
/* 8003C8AC  7C 9E F8 2E */	lwzx r4, r30, r31
/* 8003C8B0  7F 85 E3 78 */	mr r5, r28
/* 8003C8B4  38 C0 00 80 */	li r6, 0x80
/* 8003C8B8  4B FF FA 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8003C8BC  7C 9A F8 2E */	lwzx r4, r26, r31
/* 8003C8C0  38 A0 00 00 */	li r5, 0
/* 8003C8C4  38 C0 00 00 */	li r6, 0
/* 8003C8C8  4B FD 88 75 */	bl mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj
/* 8003C8CC  3B 7B 00 01 */	addi r27, r27, 1
/* 8003C8D0  2C 1B 00 07 */	cmpwi r27, 7
/* 8003C8D4  3B FF 00 04 */	addi r31, r31, 4
/* 8003C8D8  41 80 FF C4 */	blt lbl_8003C89C
/* 8003C8DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C8E0  48 32 59 3D */	bl _restgpr_26
/* 8003C8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003C8E8  7C 08 03 A6 */	mtlr r0
/* 8003C8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003C8F0  4E 80 00 20 */	blr 
