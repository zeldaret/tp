lbl_8000C164:
/* 8000C164  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8000C168  7C 08 02 A6 */	mflr r0
/* 8000C16C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8000C170  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C174  48 35 60 69 */	bl _savegpr_29
/* 8000C178  7C 7D 1B 78 */	mr r29, r3
/* 8000C17C  7C 9E 23 78 */	mr r30, r4
/* 8000C180  7C BF 2B 78 */	mr r31, r5
/* 8000C184  7C C0 07 35 */	extsh. r0, r6
/* 8000C188  41 82 00 20 */	beq lbl_8000C1A8
/* 8000C18C  38 61 00 08 */	addi r3, r1, 8
/* 8000C190  7C C4 33 78 */	mr r4, r6
/* 8000C194  48 00 02 E1 */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C198  7F A3 EB 78 */	mr r3, r29
/* 8000C19C  38 81 00 08 */	addi r4, r1, 8
/* 8000C1A0  7F A5 EB 78 */	mr r5, r29
/* 8000C1A4  48 33 A3 41 */	bl PSMTXConcat
lbl_8000C1A8:
/* 8000C1A8  7F E0 07 35 */	extsh. r0, r31
/* 8000C1AC  41 82 00 20 */	beq lbl_8000C1CC
/* 8000C1B0  38 61 00 08 */	addi r3, r1, 8
/* 8000C1B4  7F E4 FB 78 */	mr r4, r31
/* 8000C1B8  48 00 02 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 8000C1BC  7F A3 EB 78 */	mr r3, r29
/* 8000C1C0  38 81 00 08 */	addi r4, r1, 8
/* 8000C1C4  7F A5 EB 78 */	mr r5, r29
/* 8000C1C8  48 33 A3 1D */	bl PSMTXConcat
lbl_8000C1CC:
/* 8000C1CC  7F C0 07 35 */	extsh. r0, r30
/* 8000C1D0  41 82 00 20 */	beq lbl_8000C1F0
/* 8000C1D4  38 61 00 08 */	addi r3, r1, 8
/* 8000C1D8  7F C4 F3 78 */	mr r4, r30
/* 8000C1DC  48 00 01 69 */	bl mDoMtx_XrotS__FPA4_fs
/* 8000C1E0  7F A3 EB 78 */	mr r3, r29
/* 8000C1E4  38 81 00 08 */	addi r4, r1, 8
/* 8000C1E8  7F A5 EB 78 */	mr r5, r29
/* 8000C1EC  48 33 A2 F9 */	bl PSMTXConcat
lbl_8000C1F0:
/* 8000C1F0  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C1F4  48 35 60 35 */	bl _restgpr_29
/* 8000C1F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8000C1FC  7C 08 03 A6 */	mtlr r0
/* 8000C200  38 21 00 50 */	addi r1, r1, 0x50
/* 8000C204  4E 80 00 20 */	blr 
