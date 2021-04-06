lbl_80BDCFDC:
/* 80BDCFDC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BDCFE0  7C 08 02 A6 */	mflr r0
/* 80BDCFE4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BDCFE8  39 61 00 80 */	addi r11, r1, 0x80
/* 80BDCFEC  4B 78 51 E9 */	bl _savegpr_27
/* 80BDCFF0  7C 7C 1B 78 */	mr r28, r3
/* 80BDCFF4  3B 61 00 08 */	addi r27, r1, 8
/* 80BDCFF8  7F 63 DB 78 */	mr r3, r27
/* 80BDCFFC  4B 49 A5 81 */	bl __ct__11dBgS_GndChkFv
/* 80BDD000  3C 60 80 BE */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80BDD804@ha */
/* 80BDD004  38 63 D8 04 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80BDD804@l */
/* 80BDD008  90 61 00 18 */	stw r3, 0x18(r1)
/* 80BDD00C  3B E3 00 0C */	addi r31, r3, 0xc
/* 80BDD010  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80BDD014  3B C3 00 18 */	addi r30, r3, 0x18
/* 80BDD018  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80BDD01C  3B A3 00 24 */	addi r29, r3, 0x24
/* 80BDD020  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80BDD024  38 7B 00 3C */	addi r3, r27, 0x3c
/* 80BDD028  4B 49 BE 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BDD02C  80 1C 00 04 */	lwz r0, 4(r28)
/* 80BDD030  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BDD034  7F 63 DB 78 */	mr r3, r27
/* 80BDD038  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BDD03C  4B 68 AC ED */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80BDD040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDD044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDD048  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BDD04C  7F 64 DB 78 */	mr r4, r27
/* 80BDD050  4B 49 74 51 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BDD054  3C 60 80 BE */	lis r3, lit_3744@ha /* 0x80BDD6C8@ha */
/* 80BDD058  C0 03 D6 C8 */	lfs f0, lit_3744@l(r3)  /* 0x80BDD6C8@l */
/* 80BDD05C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BDD060  41 82 00 08 */	beq lbl_80BDD068
/* 80BDD064  D0 3C 09 40 */	stfs f1, 0x940(r28)
lbl_80BDD068:
/* 80BDD068  38 00 00 01 */	li r0, 1
/* 80BDD06C  98 1C 09 3D */	stb r0, 0x93d(r28)
/* 80BDD070  3C 60 80 BE */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80BDD804@ha */
/* 80BDD074  38 03 D8 04 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80BDD804@l */
/* 80BDD078  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BDD07C  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80BDD080  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80BDD084  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80BDD088  38 61 00 08 */	addi r3, r1, 8
/* 80BDD08C  38 80 00 00 */	li r4, 0
/* 80BDD090  4B 49 A5 61 */	bl __dt__11dBgS_GndChkFv
/* 80BDD094  39 61 00 80 */	addi r11, r1, 0x80
/* 80BDD098  4B 78 51 89 */	bl _restgpr_27
/* 80BDD09C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BDD0A0  7C 08 03 A6 */	mtlr r0
/* 80BDD0A4  38 21 00 80 */	addi r1, r1, 0x80
/* 80BDD0A8  4E 80 00 20 */	blr 
