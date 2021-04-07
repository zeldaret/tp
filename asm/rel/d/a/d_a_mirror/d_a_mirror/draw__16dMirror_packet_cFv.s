lbl_80871D84:
/* 80871D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80871D88  7C 08 02 A6 */	mflr r0
/* 80871D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80871D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80871D94  93 C1 00 08 */	stw r30, 8(r1)
/* 80871D98  7C 7E 1B 78 */	mr r30, r3
/* 80871D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80871DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80871DA4  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80871DA8  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80871DAC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 80871DB0  3B E3 D8 E4 */	addi r31, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80871DB4  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80871DB8  7F E3 FB 78 */	mr r3, r31
/* 80871DBC  4B A0 19 D1 */	bl calcViewFrustum__11J3DUClipperFv
/* 80871DC0  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 80871DC4  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80871DC8  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80871DCC  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80871DD0  38 BE 01 70 */	addi r5, r30, 0x170
/* 80871DD4  38 DE 01 64 */	addi r6, r30, 0x164
/* 80871DD8  4B A0 1C 6D */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 80871DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80871DE0  40 82 00 0C */	bne lbl_80871DEC
/* 80871DE4  7F C3 F3 78 */	mr r3, r30
/* 80871DE8  4B FF F6 85 */	bl mainDraw__16dMirror_packet_cFv
lbl_80871DEC:
/* 80871DEC  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha /* 0x80450C70@ha */
/* 80871DF0  C0 03 0C 70 */	lfs f0, mSystemFar__14mDoLib_clipper@l(r3)  /* 0x80450C70@l */
/* 80871DF4  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80871DF8  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 80871DFC  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80871E00  4B A0 19 8D */	bl calcViewFrustum__11J3DUClipperFv
/* 80871E04  7F C3 F3 78 */	mr r3, r30
/* 80871E08  4B FF EE 8D */	bl reset__16dMirror_packet_cFv
/* 80871E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80871E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80871E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80871E18  7C 08 03 A6 */	mtlr r0
/* 80871E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80871E20  4E 80 00 20 */	blr 
