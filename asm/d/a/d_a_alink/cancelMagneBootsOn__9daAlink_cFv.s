lbl_800E2DC4:
/* 800E2DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E2DC8  7C 08 02 A6 */	mflr r0
/* 800E2DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E2DD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E2DD8  7C 7E 1B 78 */	mr r30, r3
/* 800E2DDC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800E2DE0  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 800E2DE4  90 03 05 70 */	stw r0, 0x570(r3)
/* 800E2DE8  38 7E 2C A8 */	addi r3, r30, 0x2ca8
/* 800E2DEC  38 80 00 00 */	li r4, 0
/* 800E2DF0  48 1E 0C FD */	bl setMagnetized__14Z2CreatureLinkFb
/* 800E2DF4  A8 9E 31 14 */	lha r4, 0x3114(r30)
/* 800E2DF8  2C 04 80 00 */	cmpwi r4, -32768
/* 800E2DFC  40 82 00 18 */	bne lbl_800E2E14
/* 800E2E00  7F C3 F3 78 */	mr r3, r30
/* 800E2E04  38 A0 00 00 */	li r5, 0
/* 800E2E08  38 C0 00 00 */	li r6, 0
/* 800E2E0C  4B FC AD 6D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800E2E10  48 00 00 54 */	b lbl_800E2E64
lbl_800E2E14:
/* 800E2E14  A8 7E 31 16 */	lha r3, 0x3116(r30)
/* 800E2E18  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800E2E1C  7C 03 00 50 */	subf r0, r3, r0
/* 800E2E20  7C 1F 07 34 */	extsh r31, r0
/* 800E2E24  7F C3 F3 78 */	mr r3, r30
/* 800E2E28  38 80 00 00 */	li r4, 0
/* 800E2E2C  7F E5 FB 78 */	mr r5, r31
/* 800E2E30  38 C0 00 00 */	li r6, 0
/* 800E2E34  4B FC AD 45 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800E2E38  7F C3 F3 78 */	mr r3, r30
/* 800E2E3C  A8 9E 31 14 */	lha r4, 0x3114(r30)
/* 800E2E40  38 A0 00 00 */	li r5, 0
/* 800E2E44  38 C0 00 00 */	li r6, 0
/* 800E2E48  4B FC AD 31 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800E2E4C  7F C3 F3 78 */	mr r3, r30
/* 800E2E50  38 80 00 00 */	li r4, 0
/* 800E2E54  7C 1F 00 D0 */	neg r0, r31
/* 800E2E58  7C 05 07 34 */	extsh r5, r0
/* 800E2E5C  38 C0 00 00 */	li r6, 0
/* 800E2E60  4B FC AD 19 */	bl setOldRootQuaternion__9daAlink_cFsss
lbl_800E2E64:
/* 800E2E64  38 00 00 00 */	li r0, 0
/* 800E2E68  B0 1E 31 14 */	sth r0, 0x3114(r30)
/* 800E2E6C  C0 3E 36 AC */	lfs f1, 0x36ac(r30)
/* 800E2E70  48 18 53 75 */	bl cBgW_CheckBGround__Ff
/* 800E2E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E2E78  40 82 00 D8 */	bne lbl_800E2F50
/* 800E2E7C  38 61 00 08 */	addi r3, r1, 8
/* 800E2E80  38 9E 36 A8 */	addi r4, r30, 0x36a8
/* 800E2E84  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800E2E88  48 18 3C FD */	bl __ml__4cXyzCFf
/* 800E2E8C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E2E90  38 81 00 08 */	addi r4, r1, 8
/* 800E2E94  7C 65 1B 78 */	mr r5, r3
/* 800E2E98  48 26 41 F9 */	bl PSVECAdd
/* 800E2E9C  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800E2EA0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800E2EA4  48 18 4E 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800E2EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E2EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E2EB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E2EB4  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800E2EB8  4B F9 15 E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800E2EBC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800E2EC0  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800E2EC4  EC 02 00 28 */	fsubs f0, f2, f0
/* 800E2EC8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E2ECC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E2ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2ED4  40 81 00 08 */	ble lbl_800E2EDC
/* 800E2ED8  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
lbl_800E2EDC:
/* 800E2EDC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E2EE0  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 800E2EE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E2EE8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 800E2EEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800E2EF0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 800E2EF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800E2EF8  D0 1E 37 98 */	stfs f0, 0x3798(r30)
/* 800E2EFC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800E2F00  D0 1E 37 9C */	stfs f0, 0x379c(r30)
/* 800E2F04  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800E2F08  D0 1E 37 A0 */	stfs f0, 0x37a0(r30)
/* 800E2F0C  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800E2F10  C4 03 0D 24 */	lfsu f0, BaseY__4cXyz@l(r3)  /* 0x80430D24@l */
/* 800E2F14  D0 1E 36 A8 */	stfs f0, 0x36a8(r30)
/* 800E2F18  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E2F1C  D0 1E 36 AC */	stfs f0, 0x36ac(r30)
/* 800E2F20  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E2F24  D0 1E 36 B0 */	stfs f0, 0x36b0(r30)
/* 800E2F28  7F C3 F3 78 */	mr r3, r30
/* 800E2F2C  4B FD 80 55 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800E2F30  2C 03 00 00 */	cmpwi r3, 0
/* 800E2F34  41 82 00 14 */	beq lbl_800E2F48
/* 800E2F38  7F C3 F3 78 */	mr r3, r30
/* 800E2F3C  38 80 00 02 */	li r4, 2
/* 800E2F40  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800E2F44  4B FC A7 E1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800E2F48:
/* 800E2F48  38 60 00 01 */	li r3, 1
/* 800E2F4C  48 00 00 24 */	b lbl_800E2F70
lbl_800E2F50:
/* 800E2F50  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800E2F54  C4 03 0D 24 */	lfsu f0, BaseY__4cXyz@l(r3)  /* 0x80430D24@l */
/* 800E2F58  D0 1E 36 A8 */	stfs f0, 0x36a8(r30)
/* 800E2F5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E2F60  D0 1E 36 AC */	stfs f0, 0x36ac(r30)
/* 800E2F64  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E2F68  D0 1E 36 B0 */	stfs f0, 0x36b0(r30)
/* 800E2F6C  38 60 00 00 */	li r3, 0
lbl_800E2F70:
/* 800E2F70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E2F74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E2F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E2F7C  7C 08 03 A6 */	mtlr r0
/* 800E2F80  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2F84  4E 80 00 20 */	blr 
