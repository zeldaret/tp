lbl_80077678:
/* 80077678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007767C  7C 08 02 A6 */	mflr r0
/* 80077680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077688  7C 7F 1B 78 */	mr r31, r3
/* 8007768C  4B FF FE F1 */	bl __ct__11dBgS_GndChkFv
/* 80077690  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x803A382C@ha */
/* 80077694  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x803A382C@l */
/* 80077698  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8007769C  38 03 00 0C */	addi r0, r3, 0xc
/* 800776A0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800776A4  38 03 00 18 */	addi r0, r3, 0x18
/* 800776A8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800776AC  38 03 00 24 */	addi r0, r3, 0x24
/* 800776B0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800776B4  38 7F 00 3C */	addi r3, r31, 0x3c
/* 800776B8  48 00 17 B1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 800776BC  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_Wtr@ha /* 0x803AB748@ha */
/* 800776C0  38 63 B7 48 */	addi r3, r3, __vt__18dBgS_ObjGndChk_Wtr@l /* 0x803AB748@l */
/* 800776C4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800776C8  38 03 00 0C */	addi r0, r3, 0xc
/* 800776CC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800776D0  38 03 00 18 */	addi r0, r3, 0x18
/* 800776D4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800776D8  38 03 00 24 */	addi r0, r3, 0x24
/* 800776DC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800776E0  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800776E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800776E8  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800776EC  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 800776F0  60 00 00 02 */	ori r0, r0, 2
/* 800776F4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800776F8  7F E3 FB 78 */	mr r3, r31
/* 800776FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077704  7C 08 03 A6 */	mtlr r0
/* 80077708  38 21 00 10 */	addi r1, r1, 0x10
/* 8007770C  4E 80 00 20 */	blr 
