lbl_8000C2A0:
/* 8000C2A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8000C2A4  7C 08 02 A6 */	mflr r0
/* 8000C2A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8000C2AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C2B0  48 35 5F 2D */	bl _savegpr_29
/* 8000C2B4  7C 7D 1B 78 */	mr r29, r3
/* 8000C2B8  7C 9E 23 78 */	mr r30, r4
/* 8000C2BC  7C DF 33 78 */	mr r31, r6
/* 8000C2C0  7C A0 07 35 */	extsh. r0, r5
/* 8000C2C4  41 82 00 20 */	beq lbl_8000C2E4
/* 8000C2C8  38 61 00 08 */	addi r3, r1, 8
/* 8000C2CC  7C A4 2B 78 */	mr r4, r5
/* 8000C2D0  48 00 01 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 8000C2D4  7F A3 EB 78 */	mr r3, r29
/* 8000C2D8  38 81 00 08 */	addi r4, r1, 8
/* 8000C2DC  7F A5 EB 78 */	mr r5, r29
/* 8000C2E0  48 33 A2 05 */	bl PSMTXConcat
lbl_8000C2E4:
/* 8000C2E4  7F C0 07 35 */	extsh. r0, r30
/* 8000C2E8  41 82 00 20 */	beq lbl_8000C308
/* 8000C2EC  38 61 00 08 */	addi r3, r1, 8
/* 8000C2F0  7F C4 F3 78 */	mr r4, r30
/* 8000C2F4  48 00 00 51 */	bl mDoMtx_XrotS__FPA4_fs
/* 8000C2F8  7F A3 EB 78 */	mr r3, r29
/* 8000C2FC  38 81 00 08 */	addi r4, r1, 8
/* 8000C300  7F A5 EB 78 */	mr r5, r29
/* 8000C304  48 33 A1 E1 */	bl PSMTXConcat
lbl_8000C308:
/* 8000C308  7F E0 07 35 */	extsh. r0, r31
/* 8000C30C  41 82 00 20 */	beq lbl_8000C32C
/* 8000C310  38 61 00 08 */	addi r3, r1, 8
/* 8000C314  7F E4 FB 78 */	mr r4, r31
/* 8000C318  48 00 01 5D */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C31C  7F A3 EB 78 */	mr r3, r29
/* 8000C320  38 81 00 08 */	addi r4, r1, 8
/* 8000C324  7F A5 EB 78 */	mr r5, r29
/* 8000C328  48 33 A1 BD */	bl PSMTXConcat
lbl_8000C32C:
/* 8000C32C  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C330  48 35 5E F9 */	bl _restgpr_29
/* 8000C334  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8000C338  7C 08 03 A6 */	mtlr r0
/* 8000C33C  38 21 00 50 */	addi r1, r1, 0x50
/* 8000C340  4E 80 00 20 */	blr 
