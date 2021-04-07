lbl_80077C68:
/* 80077C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077C6C  7C 08 02 A6 */	mflr r0
/* 80077C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077C78  7C 7F 1B 78 */	mr r31, r3
/* 80077C7C  48 1F 00 E1 */	bl __ct__11cBgS_LinChkFv
/* 80077C80  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077C84  4B FF F8 19 */	bl __ct__8dBgS_ChkFv
/* 80077C88  3C 60 80 3B */	lis r3, __vt__11dBgS_LinChk@ha /* 0x803AB970@ha */
/* 80077C8C  38 63 B9 70 */	addi r3, r3, __vt__11dBgS_LinChk@l /* 0x803AB970@l */
/* 80077C90  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077C94  38 03 00 0C */	addi r0, r3, 0xc
/* 80077C98  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077C9C  38 03 00 18 */	addi r0, r3, 0x18
/* 80077CA0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077CA4  38 03 00 24 */	addi r0, r3, 0x24
/* 80077CA8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077CAC  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077CB0  4B FF F8 B1 */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 80077CB4  90 7F 00 00 */	stw r3, 0(r31)
/* 80077CB8  38 7F 00 58 */	addi r3, r31, 0x58
/* 80077CBC  4B FF F8 A9 */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 80077CC0  90 7F 00 04 */	stw r3, 4(r31)
/* 80077CC4  7F E3 FB 78 */	mr r3, r31
/* 80077CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077CD0  7C 08 03 A6 */	mtlr r0
/* 80077CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80077CD8  4E 80 00 20 */	blr 
