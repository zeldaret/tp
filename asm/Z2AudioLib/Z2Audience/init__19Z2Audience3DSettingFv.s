lbl_802BC284:
/* 802BC284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC288  7C 08 02 A6 */	mflr r0
/* 802BC28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BC294  7C 7F 1B 78 */	mr r31, r3
/* 802BC298  C0 0D 8D B8 */	lfs f0, MIN_DISTANCE_VOLUME__7Z2Param(r13)
/* 802BC29C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 802BC2A0  C0 0D 82 68 */	lfs f0, DOLBY_BEHIND_DISTANCE_MAX__7Z2Param(r13)
/* 802BC2A4  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802BC2A8  C0 0D 82 64 */	lfs f0, DOLBY_FLONT_DISTANCE_MAX__7Z2Param(r13)
/* 802BC2AC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BC2B0  C0 0D 82 6C */	lfs f0, DISTANCE_FX_PARAM__7Z2Param(r13)
/* 802BC2B4  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802BC2B8  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC2BC  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802BC2C0  C0 0D 82 60 */	lfs f0, DOLBY_CENTER_VALUE__7Z2Param(r13)
/* 802BC2C4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802BC2C8  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BC2CC  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802BC2D0  38 00 00 FF */	li r0, 0xff
/* 802BC2D4  90 03 00 64 */	stw r0, 0x64(r3)
/* 802BC2D8  C0 0D 82 70 */	lfs f0, SONIC_SPEED__7Z2Param(r13)
/* 802BC2DC  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802BC2E0  C0 02 C0 D8 */	lfs f0, lit_1036(r2)
/* 802BC2E4  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 802BC2E8  48 00 00 21 */	bl initVolumeDist__19Z2Audience3DSettingFv
/* 802BC2EC  7F E3 FB 78 */	mr r3, r31
/* 802BC2F0  48 00 03 B5 */	bl initDolbyDist__19Z2Audience3DSettingFv
/* 802BC2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BC2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC2FC  7C 08 03 A6 */	mtlr r0
/* 802BC300  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC304  4E 80 00 20 */	blr 
