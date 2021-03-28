lbl_80267D5C:
/* 80267D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267D60  7C 08 02 A6 */	mflr r0
/* 80267D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267D6C  7C 7F 1B 78 */	mr r31, r3
/* 80267D70  4B FF FD DD */	bl __ct__8cBgS_ChkFv
/* 80267D74  38 7F 00 14 */	addi r3, r31, 0x14
/* 80267D78  48 00 02 FD */	bl __ct__13cBgS_PolyInfoFv
/* 80267D7C  3C 60 80 3C */	lis r3, __vt__11cBgS_LinChk@ha
/* 80267D80  38 63 3F A8 */	addi r3, r3, __vt__11cBgS_LinChk@l
/* 80267D84  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80267D88  38 03 00 0C */	addi r0, r3, 0xc
/* 80267D8C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80267D90  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80267D94  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80267D98  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80267D9C  7F E3 FB 78 */	mr r3, r31
/* 80267DA0  48 00 00 A9 */	bl ct__11cBgS_LinChkFv
/* 80267DA4  7F E3 FB 78 */	mr r3, r31
/* 80267DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267DB0  7C 08 03 A6 */	mtlr r0
/* 80267DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80267DB8  4E 80 00 20 */	blr 
