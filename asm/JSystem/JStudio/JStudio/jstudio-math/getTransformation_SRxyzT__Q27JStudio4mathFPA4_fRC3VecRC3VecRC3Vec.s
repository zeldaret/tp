lbl_80285B44:
/* 80285B44  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80285B48  7C 08 02 A6 */	mflr r0
/* 80285B4C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80285B50  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80285B54  48 0D C6 89 */	bl _savegpr_29
/* 80285B58  7C 7D 1B 78 */	mr r29, r3
/* 80285B5C  7C BE 2B 78 */	mr r30, r5
/* 80285B60  7C DF 33 78 */	mr r31, r6
/* 80285B64  38 61 00 68 */	addi r3, r1, 0x68
/* 80285B68  C0 24 00 00 */	lfs f1, 0(r4)
/* 80285B6C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80285B70  C0 64 00 08 */	lfs f3, 8(r4)
/* 80285B74  48 0C 0D F5 */	bl PSMTXScale
/* 80285B78  38 61 00 08 */	addi r3, r1, 8
/* 80285B7C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80285B80  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80285B84  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80285B88  4B FF FE 55 */	bl getRotation_xyz__Q27JStudio4mathFPA4_ffff
/* 80285B8C  38 61 00 08 */	addi r3, r1, 8
/* 80285B90  38 81 00 68 */	addi r4, r1, 0x68
/* 80285B94  38 A1 00 38 */	addi r5, r1, 0x38
/* 80285B98  48 0C 09 4D */	bl PSMTXConcat
/* 80285B9C  38 61 00 38 */	addi r3, r1, 0x38
/* 80285BA0  7F A4 EB 78 */	mr r4, r29
/* 80285BA4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80285BA8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80285BAC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80285BB0  48 0C 0D 6D */	bl PSMTXTransApply
/* 80285BB4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80285BB8  48 0D C6 71 */	bl _restgpr_29
/* 80285BBC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80285BC0  7C 08 03 A6 */	mtlr r0
/* 80285BC4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80285BC8  4E 80 00 20 */	blr 
