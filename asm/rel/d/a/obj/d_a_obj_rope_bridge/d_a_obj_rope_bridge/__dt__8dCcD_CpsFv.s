lbl_80597B20:
/* 80597B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597B24  7C 08 02 A6 */	mflr r0
/* 80597B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597B30  93 C1 00 08 */	stw r30, 8(r1)
/* 80597B34  7C 7E 1B 79 */	or. r30, r3, r3
/* 80597B38  7C 9F 23 78 */	mr r31, r4
/* 80597B3C  41 82 00 8C */	beq lbl_80597BC8
/* 80597B40  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80597B44  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80597B48  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80597B4C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80597B50  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80597B54  38 03 00 84 */	addi r0, r3, 0x84
/* 80597B58  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80597B5C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80597B60  41 82 00 4C */	beq lbl_80597BAC
/* 80597B64  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80597B68  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80597B6C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80597B70  38 03 00 58 */	addi r0, r3, 0x58
/* 80597B74  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80597B78  38 7E 01 24 */	addi r3, r30, 0x124
/* 80597B7C  38 80 00 00 */	li r4, 0
/* 80597B80  4B CD 74 24 */	b __dt__8cM3dGCpsFv
/* 80597B84  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80597B88  41 82 00 24 */	beq lbl_80597BAC
/* 80597B8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80597B90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80597B94  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80597B98  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80597B9C  41 82 00 10 */	beq lbl_80597BAC
/* 80597BA0  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 80597BA4  38 03 80 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80597BA8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80597BAC:
/* 80597BAC  7F C3 F3 78 */	mr r3, r30
/* 80597BB0  38 80 00 00 */	li r4, 0
/* 80597BB4  4B AE C5 30 */	b __dt__12dCcD_GObjInfFv
/* 80597BB8  7F E0 07 35 */	extsh. r0, r31
/* 80597BBC  40 81 00 0C */	ble lbl_80597BC8
/* 80597BC0  7F C3 F3 78 */	mr r3, r30
/* 80597BC4  4B D3 71 78 */	b __dl__FPv
lbl_80597BC8:
/* 80597BC8  7F C3 F3 78 */	mr r3, r30
/* 80597BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597BD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80597BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597BD8  7C 08 03 A6 */	mtlr r0
/* 80597BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80597BE0  4E 80 00 20 */	blr 
