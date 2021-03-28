lbl_80C6B924:
/* 80C6B924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B928  7C 08 02 A6 */	mflr r0
/* 80C6B92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6B934  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6B938  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6B93C  7C 9F 23 78 */	mr r31, r4
/* 80C6B940  41 82 00 94 */	beq lbl_80C6B9D4
/* 80C6B944  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C6B948  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C6B94C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C6B950  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6B954  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6B958  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6B95C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6B960  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6B964  41 82 00 54 */	beq lbl_80C6B9B8
/* 80C6B968  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C6B96C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C6B970  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C6B974  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6B978  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C6B97C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C6B980  41 82 00 10 */	beq lbl_80C6B990
/* 80C6B984  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C6B988  38 03 C7 D0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C6B98C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C6B990:
/* 80C6B990  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6B994  41 82 00 24 */	beq lbl_80C6B9B8
/* 80C6B998  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C6B99C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C6B9A0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C6B9A4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C6B9A8  41 82 00 10 */	beq lbl_80C6B9B8
/* 80C6B9AC  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C6B9B0  38 03 C7 C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C6B9B4  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C6B9B8:
/* 80C6B9B8  7F C3 F3 78 */	mr r3, r30
/* 80C6B9BC  38 80 00 00 */	li r4, 0
/* 80C6B9C0  4B 41 87 24 */	b __dt__12dCcD_GObjInfFv
/* 80C6B9C4  7F E0 07 35 */	extsh. r0, r31
/* 80C6B9C8  40 81 00 0C */	ble lbl_80C6B9D4
/* 80C6B9CC  7F C3 F3 78 */	mr r3, r30
/* 80C6B9D0  4B 66 33 6C */	b __dl__FPv
lbl_80C6B9D4:
/* 80C6B9D4  7F C3 F3 78 */	mr r3, r30
/* 80C6B9D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6B9DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6B9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B9E4  7C 08 03 A6 */	mtlr r0
/* 80C6B9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B9EC  4E 80 00 20 */	blr 
