lbl_80077E78:
/* 80077E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E7C  7C 08 02 A6 */	mflr r0
/* 80077E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077E88  7C 7F 1B 78 */	mr r31, r3
/* 80077E8C  4B FF FF 19 */	bl __ct__14dBgS_CamLinChkFv
/* 80077E90  3C 60 80 3B */	lis r3, __vt__21dBgS_CamLinChk_NorWtr@ha /* 0x803AB910@ha */
/* 80077E94  38 63 B9 10 */	addi r3, r3, __vt__21dBgS_CamLinChk_NorWtr@l /* 0x803AB910@l */
/* 80077E98  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077E9C  38 03 00 0C */	addi r0, r3, 0xc
/* 80077EA0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077EA4  38 03 00 18 */	addi r0, r3, 0x18
/* 80077EA8  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80077EAC  38 03 00 24 */	addi r0, r3, 0x24
/* 80077EB0  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80077EB4  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80077EB8  60 00 00 02 */	ori r0, r0, 2
/* 80077EBC  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80077EC0  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80077EC4  60 00 00 01 */	ori r0, r0, 1
/* 80077EC8  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80077ECC  7F E3 FB 78 */	mr r3, r31
/* 80077ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077ED8  7C 08 03 A6 */	mtlr r0
/* 80077EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80077EE0  4E 80 00 20 */	blr 
