lbl_80BB69EC:
/* 80BB69EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB69F0  7C 08 02 A6 */	mflr r0
/* 80BB69F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB69F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB69FC  7C 7F 1B 78 */	mr r31, r3
/* 80BB6A00  4B 4C D0 29 */	bl __ct__12dCcD_GObjInfFv
/* 80BB6A04  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB6A08  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB6A0C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB6A10  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB80FC@ha */
/* 80BB6A14  38 03 80 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB80FC@l */
/* 80BB6A18  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BB6A1C  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BB8108@ha */
/* 80BB6A20  38 03 81 08 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BB8108@l */
/* 80BB6A24  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB6A28  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BB6A2C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BB6A30  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BB6A34  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB6A38  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB6A3C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BB6A40  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BB6A44  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BB6A48  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB6A4C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB6A50  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB6A54  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB6A58  7F E3 FB 78 */	mr r3, r31
/* 80BB6A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6A64  7C 08 03 A6 */	mtlr r0
/* 80BB6A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6A6C  4E 80 00 20 */	blr 
