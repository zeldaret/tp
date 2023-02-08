lbl_800760A0:
/* 800760A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800760A4  7C 08 02 A6 */	mflr r0
/* 800760A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800760AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800760B0  7C 7F 1B 78 */	mr r31, r3
/* 800760B4  48 1F 1A 99 */	bl __ct__8cBgS_ChkFv
/* 800760B8  38 7F 00 14 */	addi r3, r31, 0x14
/* 800760BC  48 00 13 E1 */	bl __ct__8dBgS_ChkFv
/* 800760C0  3C 60 80 3B */	lis r3, __vt__9dBgS_Acch@ha /* 0x803AB640@ha */
/* 800760C4  38 63 B6 40 */	addi r3, r3, __vt__9dBgS_Acch@l /* 0x803AB640@l */
/* 800760C8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800760CC  38 03 00 0C */	addi r0, r3, 0xc
/* 800760D0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800760D4  38 03 00 18 */	addi r0, r3, 0x18
/* 800760D8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800760DC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha /* 0x803A78F8@ha */
/* 800760E0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x803A78F8@l */
/* 800760E4  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 800760E8  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 800760EC  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 800760F0  90 1F 00 74 */	stw r0, 0x74(r31)
/* 800760F4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800760F8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800760FC  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80076100  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80076104  48 00 14 79 */	bl __ct__11dBgS_GndChkFv
/* 80076108  38 7F 01 30 */	addi r3, r31, 0x130
/* 8007610C  48 00 2E E9 */	bl __ct__12dBgS_RoofChkFv
/* 80076110  38 7F 01 80 */	addi r3, r31, 0x180
/* 80076114  48 00 30 51 */	bl __ct__11dBgS_WtrChkFv
/* 80076118  38 7F 00 14 */	addi r3, r31, 0x14
/* 8007611C  48 00 14 45 */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 80076120  90 7F 00 00 */	stw r3, 0(r31)
/* 80076124  38 7F 00 14 */	addi r3, r31, 0x14
/* 80076128  48 00 14 3D */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 8007612C  90 7F 00 04 */	stw r3, 4(r31)
/* 80076130  38 60 00 00 */	li r3, 0
/* 80076134  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80076138  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8007613C  60 00 00 08 */	ori r0, r0, 8
/* 80076140  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80076144  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80076148  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8007614C  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80076150  C0 42 8C C4 */	lfs f2, lit_4089(r2)
/* 80076154  D0 5F 00 98 */	stfs f2, 0x98(r31)
/* 80076158  C0 22 8C C0 */	lfs f1, lit_4025(r2)
/* 8007615C  D0 3F 00 90 */	stfs f1, 0x90(r31)
/* 80076160  C0 02 8C C8 */	lfs f0, lit_4090(r2)
/* 80076164  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 80076168  D0 3F 00 94 */	stfs f1, 0x94(r31)
/* 8007616C  98 7F 00 B4 */	stb r3, 0xb4(r31)
/* 80076170  D0 3F 00 B8 */	stfs f1, 0xb8(r31)
/* 80076174  D0 3F 00 BC */	stfs f1, 0xbc(r31)
/* 80076178  90 7F 00 88 */	stw r3, 0x88(r31)
/* 8007617C  90 7F 00 8C */	stw r3, 0x8c(r31)
/* 80076180  C0 02 8C CC */	lfs f0, lit_4091(r2)
/* 80076184  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 80076188  D0 3F 00 C8 */	stfs f1, 0xc8(r31)
/* 8007618C  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 80076190  38 00 00 01 */	li r0, 1
/* 80076194  98 1F 01 D4 */	stb r0, 0x1d4(r31)
/* 80076198  C0 02 8C D0 */	lfs f0, lit_4092(r2)
/* 8007619C  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 800761A0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 800761A4  90 7F 00 40 */	stw r3, 0x40(r31)
/* 800761A8  90 7F 00 84 */	stw r3, 0x84(r31)
/* 800761AC  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 800761B0  D0 5F 00 D8 */	stfs f2, 0xd8(r31)
/* 800761B4  7F E3 FB 78 */	mr r3, r31
/* 800761B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800761BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800761C0  7C 08 03 A6 */	mtlr r0
/* 800761C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800761C8  4E 80 00 20 */	blr 
