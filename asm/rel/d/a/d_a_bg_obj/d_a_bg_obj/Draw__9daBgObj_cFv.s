lbl_8045C078:
/* 8045C078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045C07C  7C 08 02 A6 */	mflr r0
/* 8045C080  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045C084  39 61 00 20 */	addi r11, r1, 0x20
/* 8045C088  4B F0 61 4D */	bl _savegpr_27
/* 8045C08C  7C 7C 1B 78 */	mr r28, r3
/* 8045C090  38 A0 00 01 */	li r5, 1
/* 8045C094  38 60 00 00 */	li r3, 0
/* 8045C098  38 00 00 02 */	li r0, 2
/* 8045C09C  7C 09 03 A6 */	mtctr r0
lbl_8045C0A0:
/* 8045C0A0  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C0A4  54 00 18 38 */	slwi r0, r0, 3
/* 8045C0A8  7C 80 1A 14 */	add r4, r0, r3
/* 8045C0AC  38 04 05 A8 */	addi r0, r4, 0x5a8
/* 8045C0B0  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8045C0B4  28 00 00 00 */	cmplwi r0, 0
/* 8045C0B8  41 82 00 08 */	beq lbl_8045C0C0
/* 8045C0BC  38 A0 00 00 */	li r5, 0
lbl_8045C0C0:
/* 8045C0C0  38 63 00 04 */	addi r3, r3, 4
/* 8045C0C4  42 00 FF DC */	bdnz lbl_8045C0A0
/* 8045C0C8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8045C0CC  41 82 00 0C */	beq lbl_8045C0D8
/* 8045C0D0  38 60 00 01 */	li r3, 1
/* 8045C0D4  48 00 01 70 */	b lbl_8045C244
lbl_8045C0D8:
/* 8045C0D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045C0DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8045C0E0  38 80 00 20 */	li r4, 0x20
/* 8045C0E4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8045C0E8  38 DC 01 0C */	addi r6, r28, 0x10c
/* 8045C0EC  4B D4 76 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8045C0F0  3B C0 00 00 */	li r30, 0
/* 8045C0F4  3B 60 00 00 */	li r27, 0
/* 8045C0F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045C0FC  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_8045C100:
/* 8045C100  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C104  54 00 18 38 */	slwi r0, r0, 3
/* 8045C108  7C 60 DA 14 */	add r3, r0, r27
/* 8045C10C  38 03 05 A8 */	addi r0, r3, 0x5a8
/* 8045C110  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8045C114  28 04 00 00 */	cmplwi r4, 0
/* 8045C118  41 82 00 14 */	beq lbl_8045C12C
/* 8045C11C  7F A3 EB 78 */	mr r3, r29
/* 8045C120  80 84 00 04 */	lwz r4, 4(r4)
/* 8045C124  38 BC 01 0C */	addi r5, r28, 0x10c
/* 8045C128  4B D4 8C 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_8045C12C:
/* 8045C12C  3B DE 00 01 */	addi r30, r30, 1
/* 8045C130  2C 1E 00 02 */	cmpwi r30, 2
/* 8045C134  3B 7B 00 04 */	addi r27, r27, 4
/* 8045C138  41 80 FF C8 */	blt lbl_8045C100
/* 8045C13C  3B A0 00 00 */	li r29, 0
/* 8045C140  3B 60 00 00 */	li r27, 0
/* 8045C144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045C148  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045C14C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8045C150  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
lbl_8045C154:
/* 8045C154  80 1E 5F 70 */	lwz r0, 0x5f70(r30)
/* 8045C158  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8045C15C  80 1E 5F 74 */	lwz r0, 0x5f74(r30)
/* 8045C160  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8045C164  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C168  54 00 18 38 */	slwi r0, r0, 3
/* 8045C16C  7C 60 DA 14 */	add r3, r0, r27
/* 8045C170  38 03 05 A8 */	addi r0, r3, 0x5a8
/* 8045C174  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8045C178  28 04 00 00 */	cmplwi r4, 0
/* 8045C17C  41 82 00 9C */	beq lbl_8045C218
/* 8045C180  7F 83 E3 78 */	mr r3, r28
/* 8045C184  48 00 00 D9 */	bl indirectProc__9daBgObj_cFP8J3DModel
/* 8045C188  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C18C  54 00 18 38 */	slwi r0, r0, 3
/* 8045C190  7C 60 DA 14 */	add r3, r0, r27
/* 8045C194  38 03 05 A8 */	addi r0, r3, 0x5a8
/* 8045C198  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8045C19C  4B D5 0B 89 */	bl dKy_bg_MAxx_proc__FPv
/* 8045C1A0  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C1A4  54 00 18 38 */	slwi r0, r0, 3
/* 8045C1A8  7C 80 DA 14 */	add r4, r0, r27
/* 8045C1AC  7C 9C 22 14 */	add r4, r28, r4
/* 8045C1B0  80 64 05 B8 */	lwz r3, 0x5b8(r4)
/* 8045C1B4  28 03 00 00 */	cmplwi r3, 0
/* 8045C1B8  41 82 00 18 */	beq lbl_8045C1D0
/* 8045C1BC  80 84 05 A8 */	lwz r4, 0x5a8(r4)
/* 8045C1C0  80 84 00 04 */	lwz r4, 4(r4)
/* 8045C1C4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8045C1C8  38 84 00 58 */	addi r4, r4, 0x58
/* 8045C1CC  4B BB 15 0D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_8045C1D0:
/* 8045C1D0  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C1D4  54 00 18 38 */	slwi r0, r0, 3
/* 8045C1D8  7C 80 DA 14 */	add r4, r0, r27
/* 8045C1DC  7C 9C 22 14 */	add r4, r28, r4
/* 8045C1E0  80 64 05 C8 */	lwz r3, 0x5c8(r4)
/* 8045C1E4  28 03 00 00 */	cmplwi r3, 0
/* 8045C1E8  41 82 00 18 */	beq lbl_8045C200
/* 8045C1EC  80 84 05 A8 */	lwz r4, 0x5a8(r4)
/* 8045C1F0  80 84 00 04 */	lwz r4, 4(r4)
/* 8045C1F4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8045C1F8  38 84 00 58 */	addi r4, r4, 0x58
/* 8045C1FC  4B BB 15 AD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_8045C200:
/* 8045C200  88 1C 0C C8 */	lbz r0, 0xcc8(r28)
/* 8045C204  54 00 18 38 */	slwi r0, r0, 3
/* 8045C208  7C 60 DA 14 */	add r3, r0, r27
/* 8045C20C  38 03 05 A8 */	addi r0, r3, 0x5a8
/* 8045C210  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8045C214  4B BB 1A B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8045C218:
/* 8045C218  3B BD 00 01 */	addi r29, r29, 1
/* 8045C21C  2C 1D 00 02 */	cmpwi r29, 2
/* 8045C220  3B 7B 00 04 */	addi r27, r27, 4
/* 8045C224  41 80 FF 30 */	blt lbl_8045C154
/* 8045C228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045C22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045C230  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8045C234  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8045C238  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8045C23C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8045C240  38 60 00 01 */	li r3, 1
lbl_8045C244:
/* 8045C244  39 61 00 20 */	addi r11, r1, 0x20
/* 8045C248  4B F0 5F D9 */	bl _restgpr_27
/* 8045C24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045C250  7C 08 03 A6 */	mtlr r0
/* 8045C254  38 21 00 20 */	addi r1, r1, 0x20
/* 8045C258  4E 80 00 20 */	blr 
