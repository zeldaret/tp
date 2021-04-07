lbl_806FED20:
/* 806FED20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FED24  7C 08 02 A6 */	mflr r0
/* 806FED28  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FED2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FED30  7C 7F 1B 78 */	mr r31, r3
/* 806FED34  4B 98 4C F5 */	bl __ct__12dCcD_GObjInfFv
/* 806FED38  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806FED3C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806FED40  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806FED44  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x806FF838@ha */
/* 806FED48  38 03 F8 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806FF838@l */
/* 806FED4C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806FED50  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x806FF820@ha */
/* 806FED54  38 03 F8 20 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806FF820@l */
/* 806FED58  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806FED5C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806FED60  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806FED64  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806FED68  38 03 00 58 */	addi r0, r3, 0x58
/* 806FED6C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806FED70  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806FED74  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806FED78  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806FED7C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806FED80  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806FED84  38 03 00 84 */	addi r0, r3, 0x84
/* 806FED88  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806FED8C  7F E3 FB 78 */	mr r3, r31
/* 806FED90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FED94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FED98  7C 08 03 A6 */	mtlr r0
/* 806FED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806FEDA0  4E 80 00 20 */	blr 
