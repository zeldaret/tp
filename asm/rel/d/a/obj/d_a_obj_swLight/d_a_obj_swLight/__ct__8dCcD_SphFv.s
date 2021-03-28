lbl_80CF7DD4:
/* 80CF7DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7DD8  7C 08 02 A6 */	mflr r0
/* 80CF7DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7DE4  7C 7F 1B 78 */	mr r31, r3
/* 80CF7DE8  4B 38 BC 40 */	b __ct__12dCcD_GObjInfFv
/* 80CF7DEC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CF7DF0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CF7DF4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CF7DF8  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CF7DFC  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CF7E00  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CF7E04  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha
/* 80CF7E08  38 03 85 BC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CF7E0C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CF7E10  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CF7E14  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CF7E18  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CF7E1C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF7E20  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CF7E24  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CF7E28  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CF7E2C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CF7E30  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF7E34  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CF7E38  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF7E3C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CF7E40  7F E3 FB 78 */	mr r3, r31
/* 80CF7E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7E4C  7C 08 03 A6 */	mtlr r0
/* 80CF7E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7E54  4E 80 00 20 */	blr 
