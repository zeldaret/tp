lbl_8002F19C:
/* 8002F19C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8002F1A0  7C 08 02 A6 */	mflr r0
/* 8002F1A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8002F1A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8002F1AC  48 33 30 25 */	bl _savegpr_26
/* 8002F1B0  7C 7A 1B 78 */	mr r26, r3
/* 8002F1B4  7C 9B 23 78 */	mr r27, r4
/* 8002F1B8  7C BC 2B 78 */	mr r28, r5
/* 8002F1BC  7C DD 33 78 */	mr r29, r6
/* 8002F1C0  7C FE 3B 78 */	mr r30, r7
/* 8002F1C4  7D 1F 43 78 */	mr r31, r8
/* 8002F1C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8002F1CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8002F1D0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8002F1D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8002F1D8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8002F1DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8002F1E0  38 60 00 00 */	li r3, 0
/* 8002F1E4  7F 44 D3 78 */	mr r4, r26
/* 8002F1E8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8002F1EC  7F 86 E3 78 */	mr r6, r28
/* 8002F1F0  7F A7 EB 78 */	mr r7, r29
/* 8002F1F4  7F C8 F3 78 */	mr r8, r30
/* 8002F1F8  7F E9 FB 78 */	mr r9, r31
/* 8002F1FC  4B FF FE E5 */	bl dComIfGs_setWarpItemData__FiPCc4cXyzsScUcUc
/* 8002F200  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8002F204  D0 01 00 08 */	stfs f0, 8(r1)
/* 8002F208  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8002F20C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8002F210  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8002F214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8002F218  7F 43 D3 78 */	mr r3, r26
/* 8002F21C  38 81 00 08 */	addi r4, r1, 8
/* 8002F220  7F 85 E3 78 */	mr r5, r28
/* 8002F224  7F A6 EB 78 */	mr r6, r29
/* 8002F228  7F C7 F3 78 */	mr r7, r30
/* 8002F22C  7F E8 FB 78 */	mr r8, r31
/* 8002F230  48 00 00 1D */	bl dComIfGs_setLastWarpMarkItemData__FPCc4cXyzsScUcUc
/* 8002F234  39 61 00 40 */	addi r11, r1, 0x40
/* 8002F238  48 33 2F E5 */	bl _restgpr_26
/* 8002F23C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8002F240  7C 08 03 A6 */	mtlr r0
/* 8002F244  38 21 00 40 */	addi r1, r1, 0x40
/* 8002F248  4E 80 00 20 */	blr 
