lbl_80CA7068:
/* 80CA7068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA706C  7C 08 02 A6 */	mflr r0
/* 80CA7070  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA7074  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CA7078  7C 7F 1B 78 */	mr r31, r3
/* 80CA707C  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80CA7080  38 04 00 24 */	addi r0, r4, 0x24
/* 80CA7084  90 03 05 04 */	stw r0, 0x504(r3)
/* 80CA7088  80 83 05 74 */	lwz r4, 0x574(r3)
/* 80CA708C  38 04 00 24 */	addi r0, r4, 0x24
/* 80CA7090  90 03 05 04 */	stw r0, 0x504(r3)
/* 80CA7094  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80CA7098  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA709C  4B 37 34 DC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CA70A0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CA70A4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CA70A8  7F E3 FB 78 */	mr r3, r31
/* 80CA70AC  4B 37 34 CC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CA70B0  7F E3 FB 78 */	mr r3, r31
/* 80CA70B4  4B FF FF 35 */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA70B8  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80CA70BC  38 00 00 00 */	li r0, 0
/* 80CA70C0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CA70C4  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 80CA70C8  3C 80 80 CA */	lis r4, lit_3864@ha
/* 80CA70CC  C0 24 79 2C */	lfs f1, lit_3864@l(r4)
/* 80CA70D0  3C 80 80 CA */	lis r4, lit_3865@ha
/* 80CA70D4  C0 44 79 30 */	lfs f2, lit_3865@l(r4)
/* 80CA70D8  4B 3C EE 80 */	b SetWall__12dBgS_AcchCirFff
/* 80CA70DC  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80CA70E0  90 01 00 08 */	stw r0, 8(r1)
/* 80CA70E4  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CA70E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CA70EC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80CA70F0  7F E6 FB 78 */	mr r6, r31
/* 80CA70F4  38 E0 00 01 */	li r7, 1
/* 80CA70F8  39 1F 07 A4 */	addi r8, r31, 0x7a4
/* 80CA70FC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80CA7100  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80CA7104  4B 3C F1 44 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CA7108  38 7F 07 68 */	addi r3, r31, 0x768
/* 80CA710C  38 80 00 FF */	li r4, 0xff
/* 80CA7110  38 A0 00 00 */	li r5, 0
/* 80CA7114  7F E6 FB 78 */	mr r6, r31
/* 80CA7118  4B 3D C7 48 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CA711C  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80CA7120  3C 80 80 CA */	lis r4, mCcDCyl__15daObj_Oiltubo_c@ha
/* 80CA7124  38 84 79 B8 */	addi r4, r4, mCcDCyl__15daObj_Oiltubo_c@l
/* 80CA7128  4B 3D D7 8C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CA712C  38 1F 07 68 */	addi r0, r31, 0x768
/* 80CA7130  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80CA7134  38 7F 09 20 */	addi r3, r31, 0x920
/* 80CA7138  3C 80 80 CA */	lis r4, mCcDCyl__15daObj_Oiltubo_c@ha
/* 80CA713C  38 84 79 B8 */	addi r4, r4, mCcDCyl__15daObj_Oiltubo_c@l
/* 80CA7140  4B 3D D7 74 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CA7144  38 1F 07 68 */	addi r0, r31, 0x768
/* 80CA7148  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80CA714C  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CA7150  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CA7154  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CA7158  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CA715C  4B 3C F9 50 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CA7160  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80CA7164  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80CA7168  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80CA716C  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 80CA7170  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80CA7174  90 1F 0A 64 */	stw r0, 0xa64(r31)
/* 80CA7178  88 1F 06 78 */	lbz r0, 0x678(r31)
/* 80CA717C  98 1F 0A 68 */	stb r0, 0xa68(r31)
/* 80CA7180  A0 1F 06 80 */	lhz r0, 0x680(r31)
/* 80CA7184  B0 1F 0A 70 */	sth r0, 0xa70(r31)
/* 80CA7188  A0 1F 06 82 */	lhz r0, 0x682(r31)
/* 80CA718C  B0 1F 0A 72 */	sth r0, 0xa72(r31)
/* 80CA7190  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80CA7194  90 1F 0A 74 */	stw r0, 0xa74(r31)
/* 80CA7198  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80CA719C  90 1F 0A 78 */	stw r0, 0xa78(r31)
/* 80CA71A0  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80CA71A4  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80CA71A8  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80CA71AC  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80CA71B0  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80CA71B4  D0 1F 0A 88 */	stfs f0, 0xa88(r31)
/* 80CA71B8  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 80CA71BC  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80CA71C0  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80CA71C4  D0 1F 0A 90 */	stfs f0, 0xa90(r31)
/* 80CA71C8  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 80CA71CC  90 1F 0A 94 */	stw r0, 0xa94(r31)
/* 80CA71D0  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80CA71D4  D0 1F 0A C4 */	stfs f0, 0xac4(r31)
/* 80CA71D8  7F E3 FB 78 */	mr r3, r31
/* 80CA71DC  48 00 01 3D */	bl setEnvTevColor__15daObj_Oiltubo_cFv
/* 80CA71E0  7F E3 FB 78 */	mr r3, r31
/* 80CA71E4  48 00 01 91 */	bl setRoomNo__15daObj_Oiltubo_cFv
/* 80CA71E8  7F E3 FB 78 */	mr r3, r31
/* 80CA71EC  4B FF FE 0D */	bl restart__15daObj_Oiltubo_cFv
/* 80CA71F0  7F E3 FB 78 */	mr r3, r31
/* 80CA71F4  4B FF FA AD */	bl Execute__15daObj_Oiltubo_cFv
/* 80CA71F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CA71FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA7200  7C 08 03 A6 */	mtlr r0
/* 80CA7204  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA7208  4E 80 00 20 */	blr 
