lbl_806A114C:
/* 806A114C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1150  7C 08 02 A6 */	mflr r0
/* 806A1154  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A115C  7C 7F 1B 78 */	mr r31, r3
/* 806A1160  4B 9E 28 C8 */	b __ct__12dCcD_GObjInfFv
/* 806A1164  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806A1168  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806A116C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806A1170  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha
/* 806A1174  38 03 1D 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806A1178  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806A117C  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha
/* 806A1180  38 03 1D 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806A1184  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A1188  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806A118C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806A1190  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806A1194  38 03 00 58 */	addi r0, r3, 0x58
/* 806A1198  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A119C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806A11A0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806A11A4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806A11A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A11AC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806A11B0  38 03 00 84 */	addi r0, r3, 0x84
/* 806A11B4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A11B8  7F E3 FB 78 */	mr r3, r31
/* 806A11BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A11C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A11C4  7C 08 03 A6 */	mtlr r0
/* 806A11C8  38 21 00 10 */	addi r1, r1, 0x10
/* 806A11CC  4E 80 00 20 */	blr 
