lbl_80329E5C:
/* 80329E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80329E60  7C 08 02 A6 */	mflr r0
/* 80329E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80329E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80329E6C  7C 7F 1B 78 */	mr r31, r3
/* 80329E70  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 80329E74  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 80329E78  90 1F 00 00 */	stw r0, 0(r31)
/* 80329E7C  38 00 00 00 */	li r0, 0
/* 80329E80  98 1F 00 04 */	stb r0, 4(r31)
/* 80329E84  98 1F 00 05 */	stb r0, 5(r31)
/* 80329E88  B0 1F 00 06 */	sth r0, 6(r31)
/* 80329E8C  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 80329E90  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80329E94  3C 60 80 3D */	lis r3, __vt__19J3DAnmTextureSRTKey@ha
/* 80329E98  38 03 EE 24 */	addi r0, r3, __vt__19J3DAnmTextureSRTKey@l
/* 80329E9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80329EA0  38 7F 00 30 */	addi r3, r31, 0x30
/* 80329EA4  4B FB 4A FD */	bl __ct__10JUTNameTabFv
/* 80329EA8  38 7F 00 64 */	addi r3, r31, 0x64
/* 80329EAC  4B FB 4A F5 */	bl __ct__10JUTNameTabFv
/* 80329EB0  38 00 00 00 */	li r0, 0
/* 80329EB4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80329EB8  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 80329EBC  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 80329EC0  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 80329EC4  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 80329EC8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80329ECC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80329ED0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80329ED4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80329ED8  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 80329EDC  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 80329EE0  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 80329EE4  B0 1F 00 4A */	sth r0, 0x4a(r31)
/* 80329EE8  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80329EEC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80329EF0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80329EF4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80329EF8  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80329EFC  7F E3 FB 78 */	mr r3, r31
/* 80329F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80329F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80329F08  7C 08 03 A6 */	mtlr r0
/* 80329F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80329F10  4E 80 00 20 */	blr 
