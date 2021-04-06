lbl_806525A0:
/* 806525A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806525A4  7C 08 02 A6 */	mflr r0
/* 806525A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806525AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806525B0  7C 7F 1B 78 */	mr r31, r3
/* 806525B4  4B A3 14 75 */	bl __ct__12dCcD_GObjInfFv
/* 806525B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806525BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806525C0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806525C4  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x806528BC@ha */
/* 806525C8  38 03 28 BC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806528BC@l */
/* 806525CC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806525D0  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha /* 0x806528B0@ha */
/* 806525D4  38 03 28 B0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806528B0@l */
/* 806525D8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806525DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806525E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806525E4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806525E8  38 03 00 58 */	addi r0, r3, 0x58
/* 806525EC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806525F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806525F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806525F8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806525FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80652600  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80652604  38 03 00 84 */	addi r0, r3, 0x84
/* 80652608  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8065260C  7F E3 FB 78 */	mr r3, r31
/* 80652610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652618  7C 08 03 A6 */	mtlr r0
/* 8065261C  38 21 00 10 */	addi r1, r1, 0x10
/* 80652620  4E 80 00 20 */	blr 
