lbl_80A001FC:
/* 80A001FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A00200  7C 08 02 A6 */	mflr r0
/* 80A00204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A00208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0020C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A00210  7C 7F 1B 78 */	mr r31, r3
/* 80A00214  3B DF 00 30 */	addi r30, r31, 0x30
/* 80A00218  7F C3 F3 78 */	mr r3, r30
/* 80A0021C  4B 68 38 0D */	bl __ct__12dCcD_GObjInfFv
/* 80A00220  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A00224  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A00228  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A0022C  3C 60 80 A0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A01188@ha */
/* 80A00230  38 03 11 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A01188@l */
/* 80A00234  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A00238  3C 60 80 A0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80A01104@ha */
/* 80A0023C  38 03 11 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80A01104@l */
/* 80A00240  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80A00244  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80A00248  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80A0024C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A00250  38 03 00 58 */	addi r0, r3, 0x58
/* 80A00254  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80A00258  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80A0025C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80A00260  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A00264  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A00268  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A0026C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A00270  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80A00274  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 80A00278  C0 23 06 FC */	lfs f1, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 80A0027C  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80A00280  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80A00284  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80A00288  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A0028C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A00290  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A00294  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80A00298  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A0029C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80A002A0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80A002A4  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80A002A8  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80A002AC  38 00 00 00 */	li r0, 0
/* 80A002B0  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 80A002B4  B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 80A002B8  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 80A002BC  D0 3F 01 68 */	stfs f1, 0x168(r31)
/* 80A002C0  3C 60 80 A0 */	lis r3, lit_4212@ha /* 0x80A00704@ha */
/* 80A002C4  C0 03 07 04 */	lfs f0, lit_4212@l(r3)  /* 0x80A00704@l */
/* 80A002C8  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 80A002CC  90 1F 01 70 */	stw r0, 0x170(r31)
/* 80A002D0  7F E3 FB 78 */	mr r3, r31
/* 80A002D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A002D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A002DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A002E0  7C 08 03 A6 */	mtlr r0
/* 80A002E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A002E8  4E 80 00 20 */	blr 
