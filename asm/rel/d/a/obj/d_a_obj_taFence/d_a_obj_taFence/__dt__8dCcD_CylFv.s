lbl_80D05314:
/* 80D05314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05318  7C 08 02 A6 */	mflr r0
/* 80D0531C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D05324  93 C1 00 08 */	stw r30, 8(r1)
/* 80D05328  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0532C  7C 9F 23 78 */	mr r31, r4
/* 80D05330  41 82 00 94 */	beq lbl_80D053C4
/* 80D05334  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D05338  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D0533C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D05340  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D05344  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D05348  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0534C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D05350  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D05354  41 82 00 54 */	beq lbl_80D053A8
/* 80D05358  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D0535C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D05360  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D05364  38 03 00 58 */	addi r0, r3, 0x58
/* 80D05368  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0536C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D05370  41 82 00 10 */	beq lbl_80D05380
/* 80D05374  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D05378  38 03 62 DC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D0537C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80D05380:
/* 80D05380  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D05384  41 82 00 24 */	beq lbl_80D053A8
/* 80D05388  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D0538C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D05390  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D05394  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D05398  41 82 00 10 */	beq lbl_80D053A8
/* 80D0539C  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80D053A0  38 03 62 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D053A4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D053A8:
/* 80D053A8  7F C3 F3 78 */	mr r3, r30
/* 80D053AC  38 80 00 00 */	li r4, 0
/* 80D053B0  4B 37 ED 34 */	b __dt__12dCcD_GObjInfFv
/* 80D053B4  7F E0 07 35 */	extsh. r0, r31
/* 80D053B8  40 81 00 0C */	ble lbl_80D053C4
/* 80D053BC  7F C3 F3 78 */	mr r3, r30
/* 80D053C0  4B 5C 99 7C */	b __dl__FPv
lbl_80D053C4:
/* 80D053C4  7F C3 F3 78 */	mr r3, r30
/* 80D053C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D053CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D053D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D053D4  7C 08 03 A6 */	mtlr r0
/* 80D053D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D053DC  4E 80 00 20 */	blr 
