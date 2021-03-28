lbl_80D5939C:
/* 80D5939C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D593A0  7C 08 02 A6 */	mflr r0
/* 80D593A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D593A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D593AC  7C 7F 1B 78 */	mr r31, r3
/* 80D593B0  4B 32 A6 78 */	b __ct__12dCcD_GObjInfFv
/* 80D593B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D593B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D593BC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D593C0  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D593C4  38 03 95 A4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D593C8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D593CC  3C 60 80 D6 */	lis r3, __vt__8cM3dGSph@ha
/* 80D593D0  38 03 95 B0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D593D4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D593D8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D593DC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D593E0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D593E4  38 03 00 58 */	addi r0, r3, 0x58
/* 80D593E8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D593EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D593F0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D593F4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D593F8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D593FC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D59400  38 03 00 84 */	addi r0, r3, 0x84
/* 80D59404  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D59408  7F E3 FB 78 */	mr r3, r31
/* 80D5940C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D59410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59414  7C 08 03 A6 */	mtlr r0
/* 80D59418  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5941C  4E 80 00 20 */	blr 
