lbl_80077DA4:
/* 80077DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077DA8  7C 08 02 A6 */	mflr r0
/* 80077DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077DB4  7C 7F 1B 78 */	mr r31, r3
/* 80077DB8  4B FF FE B1 */	bl __ct__11dBgS_LinChkFv
/* 80077DBC  3C 60 80 3B */	lis r3, __vt__14dBgS_CamLinChk@ha /* 0x803AB940@ha */
/* 80077DC0  38 63 B9 40 */	addi r3, r3, __vt__14dBgS_CamLinChk@l /* 0x803AB940@l */
/* 80077DC4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077DC8  38 03 00 0C */	addi r0, r3, 0xc
/* 80077DCC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077DD0  38 03 00 18 */	addi r0, r3, 0x18
/* 80077DD4  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077DD8  38 03 00 24 */	addi r0, r3, 0x24
/* 80077DDC  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077DE0  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077DE4  48 00 10 9D */	bl SetCam__16dBgS_PolyPassChkFv
/* 80077DE8  7F E3 FB 78 */	mr r3, r31
/* 80077DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077DF4  7C 08 03 A6 */	mtlr r0
/* 80077DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80077DFC  4E 80 00 20 */	blr 
