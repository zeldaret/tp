lbl_8054E8FC:
/* 8054E8FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E900  7C 08 02 A6 */	mflr r0
/* 8054E904  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E90C  7C 7F 1B 78 */	mr r31, r3
/* 8054E910  4B B3 51 19 */	bl __ct__12dCcD_GObjInfFv
/* 8054E914  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054E918  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8054E91C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8054E920  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha /* 0x8054F0B0@ha */
/* 8054E924  38 03 F0 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8054F0B0@l */
/* 8054E928  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8054E92C  3C 60 80 55 */	lis r3, __vt__8cM3dGSph@ha /* 0x8054F02C@ha */
/* 8054E930  38 03 F0 2C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8054F02C@l */
/* 8054E934  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8054E938  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8054E93C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8054E940  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8054E944  38 03 00 58 */	addi r0, r3, 0x58
/* 8054E948  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8054E94C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8054E950  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8054E954  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8054E958  38 03 00 2C */	addi r0, r3, 0x2c
/* 8054E95C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8054E960  38 03 00 84 */	addi r0, r3, 0x84
/* 8054E964  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8054E968  7F E3 FB 78 */	mr r3, r31
/* 8054E96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E974  7C 08 03 A6 */	mtlr r0
/* 8054E978  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E97C  4E 80 00 20 */	blr 
