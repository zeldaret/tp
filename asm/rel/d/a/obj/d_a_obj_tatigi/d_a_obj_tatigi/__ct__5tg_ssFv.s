lbl_80D08494:
/* 80D08494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08498  7C 08 02 A6 */	mflr r0
/* 80D0849C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D084A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D084A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D084A8  7C 7F 1B 78 */	mr r31, r3
/* 80D084AC  3B DF 00 20 */	addi r30, r31, 0x20
/* 80D084B0  7F C3 F3 78 */	mr r3, r30
/* 80D084B4  4B 37 B5 75 */	bl __ct__12dCcD_GObjInfFv
/* 80D084B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D084BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D084C0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D084C4  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D086BC@ha */
/* 80D084C8  38 03 86 BC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D086BC@l */
/* 80D084CC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D084D0  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D086C8@ha */
/* 80D084D4  38 03 86 C8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D086C8@l */
/* 80D084D8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D084DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D084E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D084E4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D084E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D084EC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D084F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D084F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D084F8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D084FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D08500  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D08504  38 03 00 84 */	addi r0, r3, 0x84
/* 80D08508  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0850C  7F E3 FB 78 */	mr r3, r31
/* 80D08510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D08514  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D08518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0851C  7C 08 03 A6 */	mtlr r0
/* 80D08520  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08524  4E 80 00 20 */	blr 
