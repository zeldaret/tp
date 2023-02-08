lbl_804FB110:
/* 804FB110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FB114  7C 08 02 A6 */	mflr r0
/* 804FB118  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FB11C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB120  4B E6 70 B5 */	bl _savegpr_27
/* 804FB124  7C 7B 1B 78 */	mr r27, r3
/* 804FB128  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804FB12C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804FB130  38 80 00 00 */	li r4, 0
/* 804FB134  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804FB138  38 DB 01 0C */	addi r6, r27, 0x10c
/* 804FB13C  4B CA 86 89 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804FB140  3B DB 05 74 */	addi r30, r27, 0x574
/* 804FB144  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804FB148  7C 00 07 74 */	extsb r0, r0
/* 804FB14C  7C 1D 03 78 */	mr r29, r0
/* 804FB150  3B 80 00 00 */	li r28, 0
/* 804FB154  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FB158  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FB15C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 804FB160  48 00 00 28 */	b lbl_804FB188
lbl_804FB164:
/* 804FB164  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 804FB168  7C 00 07 75 */	extsb. r0, r0
/* 804FB16C  41 82 00 14 */	beq lbl_804FB180
/* 804FB170  7F E3 FB 78 */	mr r3, r31
/* 804FB174  80 9E 00 00 */	lwz r4, 0(r30)
/* 804FB178  7F A5 EB 78 */	mr r5, r29
/* 804FB17C  4B B3 19 ED */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_804FB180:
/* 804FB180  3B 9C 00 01 */	addi r28, r28, 1
/* 804FB184  3B DE 00 48 */	addi r30, r30, 0x48
lbl_804FB188:
/* 804FB188  80 1B 4D 74 */	lwz r0, 0x4d74(r27)
/* 804FB18C  7C 1C 00 00 */	cmpw r28, r0
/* 804FB190  41 80 FF D4 */	blt lbl_804FB164
/* 804FB194  38 60 00 01 */	li r3, 1
/* 804FB198  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB19C  4B E6 70 85 */	bl _restgpr_27
/* 804FB1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FB1A4  7C 08 03 A6 */	mtlr r0
/* 804FB1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804FB1AC  4E 80 00 20 */	blr 
