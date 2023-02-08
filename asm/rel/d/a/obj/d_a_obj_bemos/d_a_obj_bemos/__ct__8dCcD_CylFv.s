lbl_80BB3144:
/* 80BB3144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3148  7C 08 02 A6 */	mflr r0
/* 80BB314C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3154  7C 7F 1B 78 */	mr r31, r3
/* 80BB3158  4B 4D 08 D1 */	bl __ct__12dCcD_GObjInfFv
/* 80BB315C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB3160  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB3164  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB3168  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB3E10@ha */
/* 80BB316C  38 03 3E 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB3E10@l */
/* 80BB3170  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BB3174  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BB3DF8@ha */
/* 80BB3178  38 03 3D F8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BB3DF8@l */
/* 80BB317C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB3180  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BB3184  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BB3188  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BB318C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB3190  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB3194  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BB3198  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BB319C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BB31A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB31A4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB31A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB31AC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB31B0  7F E3 FB 78 */	mr r3, r31
/* 80BB31B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB31B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB31BC  7C 08 03 A6 */	mtlr r0
/* 80BB31C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB31C4  4E 80 00 20 */	blr 
