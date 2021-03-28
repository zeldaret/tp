lbl_80C32144:
/* 80C32144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C32148  7C 08 02 A6 */	mflr r0
/* 80C3214C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C32150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C32154  7C 7F 1B 78 */	mr r31, r3
/* 80C32158  4B 45 18 D0 */	b __ct__12dCcD_GObjInfFv
/* 80C3215C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C32160  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C32164  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C32168  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha
/* 80C3216C  38 03 3E 74 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C32170  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C32174  3C 60 80 C3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C32178  38 03 3E 80 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C3217C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C32180  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C32184  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C32188  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C3218C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C32190  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C32194  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C32198  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C3219C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C321A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C321A4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C321A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C321AC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C321B0  7F E3 FB 78 */	mr r3, r31
/* 80C321B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C321B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C321BC  7C 08 03 A6 */	mtlr r0
/* 80C321C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C321C4  4E 80 00 20 */	blr 
