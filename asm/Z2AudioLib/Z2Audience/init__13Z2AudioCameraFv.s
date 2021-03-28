lbl_802BC788:
/* 802BC788  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BC78C  7C 08 02 A6 */	mflr r0
/* 802BC790  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BC794  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802BC798  7C 7F 1B 78 */	mr r31, r3
/* 802BC79C  38 61 00 14 */	addi r3, r1, 0x14
/* 802BC7A0  48 08 9C E5 */	bl PSMTXIdentity
/* 802BC7A4  C0 02 C1 04 */	lfs f0, lit_1135(r2)
/* 802BC7A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BC7AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BC7B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BC7B4  7F E3 FB 78 */	mr r3, r31
/* 802BC7B8  38 81 00 14 */	addi r4, r1, 0x14
/* 802BC7BC  38 A1 00 08 */	addi r5, r1, 8
/* 802BC7C0  38 C0 00 01 */	li r6, 1
/* 802BC7C4  48 00 00 19 */	bl setCameraState__13Z2AudioCameraFPA4_CfR3Vecb
/* 802BC7C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802BC7CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BC7D0  7C 08 03 A6 */	mtlr r0
/* 802BC7D4  38 21 00 50 */	addi r1, r1, 0x50
/* 802BC7D8  4E 80 00 20 */	blr 
