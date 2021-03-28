lbl_807EEC04:
/* 807EEC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EEC08  7C 08 02 A6 */	mflr r0
/* 807EEC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EEC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EEC14  7C 7F 1B 78 */	mr r31, r3
/* 807EEC18  4B 89 4E 10 */	b __ct__12dCcD_GObjInfFv
/* 807EEC1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807EEC20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807EEC24  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807EEC28  3C 60 80 7F */	lis r3, __vt__8cM3dGAab@ha
/* 807EEC2C  38 03 FA F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807EEC30  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807EEC34  3C 60 80 7F */	lis r3, __vt__8cM3dGSph@ha
/* 807EEC38  38 03 FB 00 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807EEC3C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807EEC40  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807EEC44  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807EEC48  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807EEC4C  38 03 00 58 */	addi r0, r3, 0x58
/* 807EEC50  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807EEC54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807EEC58  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807EEC5C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807EEC60  38 03 00 2C */	addi r0, r3, 0x2c
/* 807EEC64  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807EEC68  38 03 00 84 */	addi r0, r3, 0x84
/* 807EEC6C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807EEC70  7F E3 FB 78 */	mr r3, r31
/* 807EEC74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEC7C  7C 08 03 A6 */	mtlr r0
/* 807EEC80  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEC84  4E 80 00 20 */	blr 
