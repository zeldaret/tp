lbl_80077A00:
/* 80077A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077A04  7C 08 02 A6 */	mflr r0
/* 80077A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077A10  7C 7F 1B 78 */	mr r31, r3
/* 80077A14  4B FF FB 69 */	bl __ct__11dBgS_GndChkFv
/* 80077A18  3C 60 80 3B */	lis r3, __vt__14dBgS_CamGndChk@ha /* 0x803AB6B8@ha */
/* 80077A1C  38 63 B6 B8 */	addi r3, r3, __vt__14dBgS_CamGndChk@l /* 0x803AB6B8@l */
/* 80077A20  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077A24  38 03 00 0C */	addi r0, r3, 0xc
/* 80077A28  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077A2C  38 03 00 18 */	addi r0, r3, 0x18
/* 80077A30  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80077A34  38 03 00 24 */	addi r0, r3, 0x24
/* 80077A38  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80077A3C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80077A40  48 00 14 41 */	bl SetCam__16dBgS_PolyPassChkFv
/* 80077A44  3C 60 80 3B */	lis r3, __vt__18dBgS_CamGndChk_Wtr@ha /* 0x803AB688@ha */
/* 80077A48  38 63 B6 88 */	addi r3, r3, __vt__18dBgS_CamGndChk_Wtr@l /* 0x803AB688@l */
/* 80077A4C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80077A50  38 03 00 0C */	addi r0, r3, 0xc
/* 80077A54  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80077A58  38 03 00 18 */	addi r0, r3, 0x18
/* 80077A5C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80077A60  38 03 00 24 */	addi r0, r3, 0x24
/* 80077A64  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80077A68  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80077A6C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80077A70  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80077A74  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80077A78  60 00 00 02 */	ori r0, r0, 2
/* 80077A7C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80077A80  7F E3 FB 78 */	mr r3, r31
/* 80077A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077A8C  7C 08 03 A6 */	mtlr r0
/* 80077A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80077A94  4E 80 00 20 */	blr 
