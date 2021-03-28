lbl_80D0CC58:
/* 80D0CC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CC5C  7C 08 02 A6 */	mflr r0
/* 80D0CC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CC68  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0CC6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0CC70  7C 9F 23 78 */	mr r31, r4
/* 80D0CC74  41 82 00 94 */	beq lbl_80D0CD08
/* 80D0CC78  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80D0CC7C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80D0CC80  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D0CC84  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0CC88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0CC8C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0CC90  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D0CC94  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0CC98  41 82 00 54 */	beq lbl_80D0CCEC
/* 80D0CC9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80D0CCA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80D0CCA4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D0CCA8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0CCAC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D0CCB0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D0CCB4  41 82 00 10 */	beq lbl_80D0CCC4
/* 80D0CCB8  3C 60 80 D1 */	lis r3, __vt__8cM3dGSph@ha
/* 80D0CCBC  38 03 D3 AC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80D0CCC0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80D0CCC4:
/* 80D0CCC4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0CCC8  41 82 00 24 */	beq lbl_80D0CCEC
/* 80D0CCCC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D0CCD0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D0CCD4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0CCD8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0CCDC  41 82 00 10 */	beq lbl_80D0CCEC
/* 80D0CCE0  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha
/* 80D0CCE4  38 03 D3 C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D0CCE8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D0CCEC:
/* 80D0CCEC  7F C3 F3 78 */	mr r3, r30
/* 80D0CCF0  38 80 00 00 */	li r4, 0
/* 80D0CCF4  4B 37 73 F0 */	b __dt__12dCcD_GObjInfFv
/* 80D0CCF8  7F E0 07 35 */	extsh. r0, r31
/* 80D0CCFC  40 81 00 0C */	ble lbl_80D0CD08
/* 80D0CD00  7F C3 F3 78 */	mr r3, r30
/* 80D0CD04  4B 5C 20 38 */	b __dl__FPv
lbl_80D0CD08:
/* 80D0CD08  7F C3 F3 78 */	mr r3, r30
/* 80D0CD0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CD10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0CD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CD18  7C 08 03 A6 */	mtlr r0
/* 80D0CD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CD20  4E 80 00 20 */	blr 
