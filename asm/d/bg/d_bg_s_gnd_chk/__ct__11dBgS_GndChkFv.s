lbl_8007757C:
/* 8007757C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077580  7C 08 02 A6 */	mflr r0
/* 80077584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007758C  7C 7F 1B 78 */	mr r31, r3
/* 80077590  48 1F 06 8D */	bl __ct__11cBgS_GndChkFv
/* 80077594  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80077598  4B FF FF 05 */	bl __ct__8dBgS_ChkFv
/* 8007759C  3C 60 80 3B */	lis r3, __vt__11dBgS_GndChk@ha /* 0x803AB778@ha */
/* 800775A0  38 63 B7 78 */	addi r3, r3, __vt__11dBgS_GndChk@l /* 0x803AB778@l */
/* 800775A4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800775A8  38 03 00 0C */	addi r0, r3, 0xc
/* 800775AC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800775B0  38 03 00 18 */	addi r0, r3, 0x18
/* 800775B4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800775B8  38 03 00 24 */	addi r0, r3, 0x24
/* 800775BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800775C0  38 7F 00 3C */	addi r3, r31, 0x3c
/* 800775C4  4B FF FF 9D */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 800775C8  90 7F 00 00 */	stw r3, 0(r31)
/* 800775CC  38 7F 00 3C */	addi r3, r31, 0x3c
/* 800775D0  4B FF FF 95 */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 800775D4  90 7F 00 04 */	stw r3, 4(r31)
/* 800775D8  7F E3 FB 78 */	mr r3, r31
/* 800775DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800775E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800775E4  7C 08 03 A6 */	mtlr r0
/* 800775E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800775EC  4E 80 00 20 */	blr 
