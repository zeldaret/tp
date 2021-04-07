lbl_807F7240:
/* 807F7240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7244  7C 08 02 A6 */	mflr r0
/* 807F7248  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F724C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F7250  7C 7F 1B 78 */	mr r31, r3
/* 807F7254  4B 88 C7 D5 */	bl __ct__12dCcD_GObjInfFv
/* 807F7258  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807F725C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807F7260  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807F7264  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha /* 0x807F7D28@ha */
/* 807F7268  38 03 7D 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807F7D28@l */
/* 807F726C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807F7270  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha /* 0x807F7D1C@ha */
/* 807F7274  38 03 7D 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807F7D1C@l */
/* 807F7278  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807F727C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807F7280  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807F7284  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807F7288  38 03 00 58 */	addi r0, r3, 0x58
/* 807F728C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807F7290  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807F7294  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807F7298  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807F729C  38 03 00 2C */	addi r0, r3, 0x2c
/* 807F72A0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807F72A4  38 03 00 84 */	addi r0, r3, 0x84
/* 807F72A8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807F72AC  7F E3 FB 78 */	mr r3, r31
/* 807F72B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F72B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F72B8  7C 08 03 A6 */	mtlr r0
/* 807F72BC  38 21 00 10 */	addi r1, r1, 0x10
/* 807F72C0  4E 80 00 20 */	blr 
