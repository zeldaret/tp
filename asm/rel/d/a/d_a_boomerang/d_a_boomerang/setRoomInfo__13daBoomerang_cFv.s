lbl_8049F9F0:
/* 8049F9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F9F4  7C 08 02 A6 */	mflr r0
/* 8049F9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F9FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FA00  4B EC 27 DD */	bl _savegpr_29
/* 8049FA04  7C 7D 1B 78 */	mr r29, r3
/* 8049FA08  38 7D 0D 6C */	addi r3, r29, 0xd6c
/* 8049FA0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8049FA10  4B DC 83 19 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8049FA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049FA18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049FA1C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8049FA20  7F E3 FB 78 */	mr r3, r31
/* 8049FA24  38 9D 0D 6C */	addi r4, r29, 0xd6c
/* 8049FA28  4B BD 4A 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8049FA2C  D0 3D 09 80 */	stfs f1, 0x980(r29)
/* 8049FA30  3C 60 80 4A */	lis r3, lit_4886@ha /* 0x804A2900@ha */
/* 8049FA34  C0 23 29 00 */	lfs f1, lit_4886@l(r3)  /* 0x804A2900@l */
/* 8049FA38  C0 1D 09 80 */	lfs f0, 0x980(r29)
/* 8049FA3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8049FA40  41 82 00 28 */	beq lbl_8049FA68
/* 8049FA44  7F E3 FB 78 */	mr r3, r31
/* 8049FA48  38 9D 0D 80 */	addi r4, r29, 0xd80
/* 8049FA4C  4B BD 56 B5 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8049FA50  7C 7E 1B 78 */	mr r30, r3
/* 8049FA54  7F E3 FB 78 */	mr r3, r31
/* 8049FA58  38 9D 0D 80 */	addi r4, r29, 0xd80
/* 8049FA5C  4B BD 51 8D */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 8049FA60  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 8049FA64  48 00 00 10 */	b lbl_8049FA74
lbl_8049FA68:
/* 8049FA68  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8049FA6C  8B C3 0D 64 */	lbz r30, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8049FA70  7F DE 07 74 */	extsb r30, r30
lbl_8049FA74:
/* 8049FA74  9B DD 04 8C */	stb r30, 0x48c(r29)
/* 8049FA78  7F C3 F3 78 */	mr r3, r30
/* 8049FA7C  4B B8 D5 F1 */	bl dComIfGp_getReverb__Fi
/* 8049FA80  98 7D 09 53 */	stb r3, 0x953(r29)
/* 8049FA84  9B DD 09 F2 */	stb r30, 0x9f2(r29)
/* 8049FA88  9B DD 04 E2 */	stb r30, 0x4e2(r29)
/* 8049FA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FA90  4B EC 27 99 */	bl _restgpr_29
/* 8049FA94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049FA98  7C 08 03 A6 */	mtlr r0
/* 8049FA9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8049FAA0  4E 80 00 20 */	blr 
