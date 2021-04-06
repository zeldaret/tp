lbl_8061D7E4:
/* 8061D7E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D7E8  7C 08 02 A6 */	mflr r0
/* 8061D7EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D7F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D7F4  7C 7F 1B 78 */	mr r31, r3
/* 8061D7F8  4B A6 62 31 */	bl __ct__12dCcD_GObjInfFv
/* 8061D7FC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8061D800  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8061D804  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8061D808  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha /* 0x8061DB3C@ha */
/* 8061D80C  38 03 DB 3C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8061DB3C@l */
/* 8061D810  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8061D814  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha /* 0x8061DB48@ha */
/* 8061D818  38 03 DB 48 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8061DB48@l */
/* 8061D81C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8061D820  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8061D824  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8061D828  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8061D82C  38 03 00 58 */	addi r0, r3, 0x58
/* 8061D830  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8061D834  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8061D838  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8061D83C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8061D840  38 03 00 2C */	addi r0, r3, 0x2c
/* 8061D844  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8061D848  38 03 00 84 */	addi r0, r3, 0x84
/* 8061D84C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8061D850  7F E3 FB 78 */	mr r3, r31
/* 8061D854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D85C  7C 08 03 A6 */	mtlr r0
/* 8061D860  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D864  4E 80 00 20 */	blr 
