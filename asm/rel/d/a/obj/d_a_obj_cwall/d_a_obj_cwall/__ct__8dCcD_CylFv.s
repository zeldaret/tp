lbl_80BD9B74:
/* 80BD9B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9B78  7C 08 02 A6 */	mflr r0
/* 80BD9B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9B84  7C 7F 1B 78 */	mr r31, r3
/* 80BD9B88  4B 4A 9E A1 */	bl __ct__12dCcD_GObjInfFv
/* 80BD9B8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BD9B90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BD9B94  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BD9B98  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BDA2C0@ha */
/* 80BD9B9C  38 03 A2 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BDA2C0@l */
/* 80BD9BA0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BD9BA4  3C 60 80 BE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BDA2B4@ha */
/* 80BD9BA8  38 03 A2 B4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BDA2B4@l */
/* 80BD9BAC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BD9BB0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BD9BB4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BD9BB8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BD9BBC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD9BC0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BD9BC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BD9BC8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BD9BCC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BD9BD0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD9BD4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BD9BD8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD9BDC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BD9BE0  7F E3 FB 78 */	mr r3, r31
/* 80BD9BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9BEC  7C 08 03 A6 */	mtlr r0
/* 80BD9BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9BF4  4E 80 00 20 */	blr 
