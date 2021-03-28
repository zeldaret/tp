lbl_80C727D4:
/* 80C727D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C727D8  7C 08 02 A6 */	mflr r0
/* 80C727DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C727E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C727E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C727E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C727EC  7C 9F 23 78 */	mr r31, r4
/* 80C727F0  41 82 00 94 */	beq lbl_80C72884
/* 80C727F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C727F8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C727FC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C72800  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C72804  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C72808  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7280C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C72810  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C72814  41 82 00 54 */	beq lbl_80C72868
/* 80C72818  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C7281C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C72820  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C72824  38 03 00 58 */	addi r0, r3, 0x58
/* 80C72828  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C7282C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C72830  41 82 00 10 */	beq lbl_80C72840
/* 80C72834  3C 60 80 C7 */	lis r3, __vt__8cM3dGSph@ha
/* 80C72838  38 03 32 70 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C7283C  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C72840:
/* 80C72840  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C72844  41 82 00 24 */	beq lbl_80C72868
/* 80C72848  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C7284C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C72850  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C72854  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C72858  41 82 00 10 */	beq lbl_80C72868
/* 80C7285C  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C72860  38 03 32 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C72864  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C72868:
/* 80C72868  7F C3 F3 78 */	mr r3, r30
/* 80C7286C  38 80 00 00 */	li r4, 0
/* 80C72870  4B 41 18 74 */	b __dt__12dCcD_GObjInfFv
/* 80C72874  7F E0 07 35 */	extsh. r0, r31
/* 80C72878  40 81 00 0C */	ble lbl_80C72884
/* 80C7287C  7F C3 F3 78 */	mr r3, r30
/* 80C72880  4B 65 C4 BC */	b __dl__FPv
lbl_80C72884:
/* 80C72884  7F C3 F3 78 */	mr r3, r30
/* 80C72888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7288C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C72890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72894  7C 08 03 A6 */	mtlr r0
/* 80C72898  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7289C  4E 80 00 20 */	blr 
