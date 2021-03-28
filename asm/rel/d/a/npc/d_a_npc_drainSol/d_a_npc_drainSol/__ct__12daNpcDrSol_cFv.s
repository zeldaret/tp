lbl_809ADE6C:
/* 809ADE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADE70  7C 08 02 A6 */	mflr r0
/* 809ADE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ADE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 809ADE80  7C 7F 1B 78 */	mr r31, r3
/* 809ADE84  48 00 16 51 */	bl __ct__8daNpcF_cFv
/* 809ADE88  3C 60 80 9B */	lis r3, __vt__12daNpcDrSol_c@ha
/* 809ADE8C  38 03 FB 68 */	addi r0, r3, __vt__12daNpcDrSol_c@l
/* 809ADE90  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809ADE94  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809ADE98  4B 91 25 30 */	b __ct__10Z2CreatureFv
/* 809ADE9C  3B DF 0B E0 */	addi r30, r31, 0xbe0
/* 809ADEA0  7F C3 F3 78 */	mr r3, r30
/* 809ADEA4  4B 6D 5B 84 */	b __ct__12dCcD_GObjInfFv
/* 809ADEA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809ADEAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809ADEB0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809ADEB4  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha
/* 809ADEB8  38 03 FC 1C */	addi r0, r3, __vt__8cM3dGAab@l
/* 809ADEBC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809ADEC0  3C 60 80 9B */	lis r3, __vt__8cM3dGCyl@ha
/* 809ADEC4  38 03 FC 10 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809ADEC8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809ADECC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809ADED0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809ADED4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809ADED8  38 03 00 58 */	addi r0, r3, 0x58
/* 809ADEDC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809ADEE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809ADEE4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809ADEE8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809ADEEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809ADEF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809ADEF4  38 03 00 84 */	addi r0, r3, 0x84
/* 809ADEF8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809ADEFC  7F E3 FB 78 */	mr r3, r31
/* 809ADF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ADF04  83 C1 00 08 */	lwz r30, 8(r1)
/* 809ADF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ADF0C  7C 08 03 A6 */	mtlr r0
/* 809ADF10  38 21 00 10 */	addi r1, r1, 0x10
/* 809ADF14  4E 80 00 20 */	blr 
