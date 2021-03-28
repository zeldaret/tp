lbl_805EC77C:
/* 805EC77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC780  7C 08 02 A6 */	mflr r0
/* 805EC784  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC78C  93 C1 00 08 */	stw r30, 8(r1)
/* 805EC790  7C 7E 1B 79 */	or. r30, r3, r3
/* 805EC794  7C 9F 23 78 */	mr r31, r4
/* 805EC798  41 82 00 94 */	beq lbl_805EC82C
/* 805EC79C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805EC7A0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805EC7A4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805EC7A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 805EC7AC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805EC7B0  38 03 00 84 */	addi r0, r3, 0x84
/* 805EC7B4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805EC7B8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805EC7BC  41 82 00 54 */	beq lbl_805EC810
/* 805EC7C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805EC7C4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805EC7C8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805EC7CC  38 03 00 58 */	addi r0, r3, 0x58
/* 805EC7D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 805EC7D4  34 1E 01 24 */	addic. r0, r30, 0x124
/* 805EC7D8  41 82 00 10 */	beq lbl_805EC7E8
/* 805EC7DC  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805EC7E0  38 03 D6 78 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805EC7E4  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_805EC7E8:
/* 805EC7E8  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805EC7EC  41 82 00 24 */	beq lbl_805EC810
/* 805EC7F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805EC7F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805EC7F8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805EC7FC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 805EC800  41 82 00 10 */	beq lbl_805EC810
/* 805EC804  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805EC808  38 03 D6 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805EC80C  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_805EC810:
/* 805EC810  7F C3 F3 78 */	mr r3, r30
/* 805EC814  38 80 00 00 */	li r4, 0
/* 805EC818  4B A9 78 CC */	b __dt__12dCcD_GObjInfFv
/* 805EC81C  7F E0 07 35 */	extsh. r0, r31
/* 805EC820  40 81 00 0C */	ble lbl_805EC82C
/* 805EC824  7F C3 F3 78 */	mr r3, r30
/* 805EC828  4B CE 25 14 */	b __dl__FPv
lbl_805EC82C:
/* 805EC82C  7F C3 F3 78 */	mr r3, r30
/* 805EC830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC834  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EC838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC83C  7C 08 03 A6 */	mtlr r0
/* 805EC840  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC844  4E 80 00 20 */	blr 
