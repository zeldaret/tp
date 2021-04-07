lbl_804FB7C4:
/* 804FB7C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB7C8  7C 08 02 A6 */	mflr r0
/* 804FB7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB7D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB7D4  4B E6 6A 01 */	bl _savegpr_27
/* 804FB7D8  7C 7B 1B 78 */	mr r27, r3
/* 804FB7DC  3C 60 80 50 */	lis r3, d_a_e_ga__stringBase0@ha /* 0x804FBBD4@ha */
/* 804FB7E0  38 63 BB D4 */	addi r3, r3, d_a_e_ga__stringBase0@l /* 0x804FBBD4@l */
/* 804FB7E4  38 63 00 05 */	addi r3, r3, 5
/* 804FB7E8  38 80 00 03 */	li r4, 3
/* 804FB7EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FB7F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FB7F4  3C A5 00 02 */	addis r5, r5, 2
/* 804FB7F8  38 C0 00 80 */	li r6, 0x80
/* 804FB7FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804FB800  4B B4 0A ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FB804  7C 7D 1B 78 */	mr r29, r3
/* 804FB808  3B 80 00 00 */	li r28, 0
/* 804FB80C  3B E0 00 00 */	li r31, 0
/* 804FB810  3F C0 11 00 */	lis r30, 0x1100
/* 804FB814  48 00 00 38 */	b lbl_804FB84C
lbl_804FB818:
/* 804FB818  7F A3 EB 78 */	mr r3, r29
/* 804FB81C  3C 80 00 02 */	lis r4, 2
/* 804FB820  38 BE 00 84 */	addi r5, r30, 0x84
/* 804FB824  4B B1 94 31 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804FB828  38 1F 05 74 */	addi r0, r31, 0x574
/* 804FB82C  7C 7B 01 2E */	stwx r3, r27, r0
/* 804FB830  7C 1B 00 2E */	lwzx r0, r27, r0
/* 804FB834  28 00 00 00 */	cmplwi r0, 0
/* 804FB838  40 82 00 0C */	bne lbl_804FB844
/* 804FB83C  38 60 00 00 */	li r3, 0
/* 804FB840  48 00 00 1C */	b lbl_804FB85C
lbl_804FB844:
/* 804FB844  3B 9C 00 01 */	addi r28, r28, 1
/* 804FB848  3B FF 00 48 */	addi r31, r31, 0x48
lbl_804FB84C:
/* 804FB84C  80 1B 4D 74 */	lwz r0, 0x4d74(r27)
/* 804FB850  7C 1C 00 00 */	cmpw r28, r0
/* 804FB854  41 80 FF C4 */	blt lbl_804FB818
/* 804FB858  38 60 00 01 */	li r3, 1
lbl_804FB85C:
/* 804FB85C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB860  4B E6 69 C1 */	bl _restgpr_27
/* 804FB864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB868  7C 08 03 A6 */	mtlr r0
/* 804FB86C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB870  4E 80 00 20 */	blr 
