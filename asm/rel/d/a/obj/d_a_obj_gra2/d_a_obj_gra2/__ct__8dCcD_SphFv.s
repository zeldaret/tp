lbl_80C04D48:
/* 80C04D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04D4C  7C 08 02 A6 */	mflr r0
/* 80C04D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04D58  7C 7F 1B 78 */	mr r31, r3
/* 80C04D5C  4B 47 EC CD */	bl __ct__12dCcD_GObjInfFv
/* 80C04D60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C04D64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C04D68  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C04D6C  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C1087C@ha */
/* 80C04D70  38 03 08 7C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C1087C@l */
/* 80C04D74  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C04D78  3C 60 80 C1 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C10858@ha */
/* 80C04D7C  38 03 08 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C10858@l */
/* 80C04D80  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C04D84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C04D88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C04D8C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C04D90  38 03 00 58 */	addi r0, r3, 0x58
/* 80C04D94  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C04D98  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C04D9C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C04DA0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C04DA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C04DA8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C04DAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C04DB0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C04DB4  7F E3 FB 78 */	mr r3, r31
/* 80C04DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04DC0  7C 08 03 A6 */	mtlr r0
/* 80C04DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04DC8  4E 80 00 20 */	blr 
