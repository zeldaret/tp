lbl_805B9D78:
/* 805B9D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9D7C  7C 08 02 A6 */	mflr r0
/* 805B9D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9D88  7C 7F 1B 78 */	mr r31, r3
/* 805B9D8C  4B AC 9C 9C */	b __ct__12dCcD_GObjInfFv
/* 805B9D90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805B9D94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805B9D98  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805B9D9C  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha
/* 805B9DA0  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805B9DA4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 805B9DA8  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha
/* 805B9DAC  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805B9DB0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805B9DB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805B9DB8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805B9DBC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 805B9DC0  38 03 00 58 */	addi r0, r3, 0x58
/* 805B9DC4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805B9DC8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805B9DCC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805B9DD0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805B9DD4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805B9DD8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805B9DDC  38 03 00 84 */	addi r0, r3, 0x84
/* 805B9DE0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805B9DE4  7F E3 FB 78 */	mr r3, r31
/* 805B9DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9DF0  7C 08 03 A6 */	mtlr r0
/* 805B9DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9DF8  4E 80 00 20 */	blr 
