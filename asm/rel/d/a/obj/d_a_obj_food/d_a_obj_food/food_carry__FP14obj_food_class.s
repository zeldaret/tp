lbl_80BF09A4:
/* 80BF09A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF09A8  7C 08 02 A6 */	mflr r0
/* 80BF09AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF09B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF09B4  7C 7F 1B 78 */	mr r31, r3
/* 80BF09B8  3C 60 80 BF */	lis r3, lit_3647@ha /* 0x80BF1D90@ha */
/* 80BF09BC  39 03 1D 90 */	addi r8, r3, lit_3647@l /* 0x80BF1D90@l */
/* 80BF09C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF09C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF09C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BF09CC  C0 28 00 0C */	lfs f1, 0xc(r8)
/* 80BF09D0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80BF09D4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80BF09D8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BF09DC  40 82 00 B8 */	bne lbl_80BF0A94
/* 80BF09E0  80 1F 08 48 */	lwz r0, 0x848(r31)
/* 80BF09E4  60 00 00 01 */	ori r0, r0, 1
/* 80BF09E8  90 1F 08 48 */	stw r0, 0x848(r31)
/* 80BF09EC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80BF09F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BF09F4  40 81 00 48 */	ble lbl_80BF0A3C
/* 80BF09F8  C0 08 00 1C */	lfs f0, 0x1c(r8)
/* 80BF09FC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80BF0A00  C0 08 00 04 */	lfs f0, 4(r8)
/* 80BF0A04  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80BF0A08  38 00 00 01 */	li r0, 1
/* 80BF0A0C  98 1F 05 67 */	stb r0, 0x567(r31)
/* 80BF0A10  38 00 EE 00 */	li r0, -4608
/* 80BF0A14  B0 1F 05 8C */	sth r0, 0x58c(r31)
/* 80BF0A18  38 80 00 00 */	li r4, 0
/* 80BF0A1C  B0 9F 05 8A */	sth r4, 0x58a(r31)
/* 80BF0A20  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80BF0A24  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80BF0A28  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80BF0A2C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BF0A30  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BF0A34  B0 9F 05 7E */	sth r4, 0x57e(r31)
/* 80BF0A38  48 00 00 54 */	b lbl_80BF0A8C
lbl_80BF0A3C:
/* 80BF0A3C  38 00 00 00 */	li r0, 0
/* 80BF0A40  98 1F 05 67 */	stb r0, 0x567(r31)
/* 80BF0A44  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080282@ha */
/* 80BF0A48  38 03 02 82 */	addi r0, r3, 0x0282 /* 0x00080282@l */
/* 80BF0A4C  90 01 00 08 */	stw r0, 8(r1)
/* 80BF0A50  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF0A54  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF0A58  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF0A5C  38 81 00 08 */	addi r4, r1, 8
/* 80BF0A60  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BF0A64  38 C0 00 00 */	li r6, 0
/* 80BF0A68  38 E0 00 00 */	li r7, 0
/* 80BF0A6C  C0 28 00 00 */	lfs f1, 0(r8)
/* 80BF0A70  FC 40 08 90 */	fmr f2, f1
/* 80BF0A74  C0 68 00 20 */	lfs f3, 0x20(r8)
/* 80BF0A78  FC 80 18 90 */	fmr f4, f3
/* 80BF0A7C  39 00 00 00 */	li r8, 0
/* 80BF0A80  4B 6B AF 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF0A84  38 00 00 03 */	li r0, 3
/* 80BF0A88  B0 1F 05 7E */	sth r0, 0x57e(r31)
lbl_80BF0A8C:
/* 80BF0A8C  7F E3 FB 78 */	mr r3, r31
/* 80BF0A90  4B 42 C7 6D */	bl fopAcM_carryOffRevise__FP10fopAc_ac_c
lbl_80BF0A94:
/* 80BF0A94  38 7F 05 8E */	addi r3, r31, 0x58e
/* 80BF0A98  38 80 00 00 */	li r4, 0
/* 80BF0A9C  38 A0 00 01 */	li r5, 1
/* 80BF0AA0  38 C0 08 00 */	li r6, 0x800
/* 80BF0AA4  4B 67 FB 65 */	bl cLib_addCalcAngleS2__FPssss
/* 80BF0AA8  38 7F 05 90 */	addi r3, r31, 0x590
/* 80BF0AAC  38 80 00 00 */	li r4, 0
/* 80BF0AB0  38 A0 00 01 */	li r5, 1
/* 80BF0AB4  38 C0 08 00 */	li r6, 0x800
/* 80BF0AB8  4B 67 FB 51 */	bl cLib_addCalcAngleS2__FPssss
/* 80BF0ABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF0AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF0AC4  7C 08 03 A6 */	mtlr r0
/* 80BF0AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF0ACC  4E 80 00 20 */	blr 
