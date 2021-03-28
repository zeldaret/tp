lbl_8032AE18:
/* 8032AE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032AE1C  7C 08 02 A6 */	mflr r0
/* 8032AE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032AE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032AE28  7C 7F 1B 78 */	mr r31, r3
/* 8032AE2C  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032AE30  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032AE34  90 1F 00 00 */	stw r0, 0(r31)
/* 8032AE38  38 00 00 00 */	li r0, 0
/* 8032AE3C  98 1F 00 04 */	stb r0, 4(r31)
/* 8032AE40  98 1F 00 05 */	stb r0, 5(r31)
/* 8032AE44  B0 1F 00 06 */	sth r0, 6(r31)
/* 8032AE48  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032AE4C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8032AE50  3C 60 80 3D */	lis r3, __vt__15J3DAnmTevRegKey@ha
/* 8032AE54  38 03 ED 60 */	addi r0, r3, __vt__15J3DAnmTevRegKey@l
/* 8032AE58  90 1F 00 00 */	stw r0, 0(r31)
/* 8032AE5C  38 7F 00 24 */	addi r3, r31, 0x24
/* 8032AE60  4B FB 3B 41 */	bl __ct__10JUTNameTabFv
/* 8032AE64  38 7F 00 38 */	addi r3, r31, 0x38
/* 8032AE68  4B FB 3B 39 */	bl __ct__10JUTNameTabFv
/* 8032AE6C  38 00 00 00 */	li r0, 0
/* 8032AE70  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8032AE74  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8032AE78  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 8032AE7C  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8032AE80  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8032AE84  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 8032AE88  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 8032AE8C  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 8032AE90  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 8032AE94  B0 1F 00 18 */	sth r0, 0x18(r31)
/* 8032AE98  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8032AE9C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8032AEA0  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8032AEA4  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8032AEA8  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8032AEAC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8032AEB0  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8032AEB4  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8032AEB8  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8032AEBC  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8032AEC0  7F E3 FB 78 */	mr r3, r31
/* 8032AEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032AEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032AECC  7C 08 03 A6 */	mtlr r0
/* 8032AED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8032AED4  4E 80 00 20 */	blr 
