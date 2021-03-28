lbl_80C82790:
/* 80C82790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82794  7C 08 02 A6 */	mflr r0
/* 80C82798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8279C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C827A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C827A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C827A8  7C 9F 23 78 */	mr r31, r4
/* 80C827AC  41 82 00 94 */	beq lbl_80C82840
/* 80C827B0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C827B4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C827B8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C827BC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C827C0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C827C4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C827C8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C827CC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C827D0  41 82 00 54 */	beq lbl_80C82824
/* 80C827D4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C827D8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C827DC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C827E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C827E4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C827E8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C827EC  41 82 00 10 */	beq lbl_80C827FC
/* 80C827F0  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C827F4  38 03 2C 6C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C827F8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C827FC:
/* 80C827FC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C82800  41 82 00 24 */	beq lbl_80C82824
/* 80C82804  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C82808  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C8280C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C82810  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C82814  41 82 00 10 */	beq lbl_80C82824
/* 80C82818  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C8281C  38 03 2C 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C82820  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C82824:
/* 80C82824  7F C3 F3 78 */	mr r3, r30
/* 80C82828  38 80 00 00 */	li r4, 0
/* 80C8282C  4B 40 18 B8 */	b __dt__12dCcD_GObjInfFv
/* 80C82830  7F E0 07 35 */	extsh. r0, r31
/* 80C82834  40 81 00 0C */	ble lbl_80C82840
/* 80C82838  7F C3 F3 78 */	mr r3, r30
/* 80C8283C  4B 64 C5 00 */	b __dl__FPv
lbl_80C82840:
/* 80C82840  7F C3 F3 78 */	mr r3, r30
/* 80C82844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82848  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8284C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82850  7C 08 03 A6 */	mtlr r0
/* 80C82854  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82858  4E 80 00 20 */	blr 
