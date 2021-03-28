lbl_8000C39C:
/* 8000C39C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000C3A0  7C 08 02 A6 */	mflr r0
/* 8000C3A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000C3A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8000C3AC  7C 7F 1B 78 */	mr r31, r3
/* 8000C3B0  38 61 00 08 */	addi r3, r1, 8
/* 8000C3B4  4B FF FF 91 */	bl mDoMtx_XrotS__FPA4_fs
/* 8000C3B8  7F E3 FB 78 */	mr r3, r31
/* 8000C3BC  38 81 00 08 */	addi r4, r1, 8
/* 8000C3C0  7F E5 FB 78 */	mr r5, r31
/* 8000C3C4  48 33 A1 21 */	bl PSMTXConcat
/* 8000C3C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8000C3CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000C3D0  7C 08 03 A6 */	mtlr r0
/* 8000C3D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8000C3D8  4E 80 00 20 */	blr 
