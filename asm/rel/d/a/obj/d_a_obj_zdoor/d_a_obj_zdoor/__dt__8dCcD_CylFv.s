lbl_80D3FFA8:
/* 80D3FFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3FFAC  7C 08 02 A6 */	mflr r0
/* 80D3FFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3FFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3FFB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3FFBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3FFC0  7C 9F 23 78 */	mr r31, r4
/* 80D3FFC4  41 82 00 94 */	beq lbl_80D40058
/* 80D3FFC8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D3FFCC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D3FFD0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D3FFD4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3FFD8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D3FFDC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3FFE0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D3FFE4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D3FFE8  41 82 00 54 */	beq lbl_80D4003C
/* 80D3FFEC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D3FFF0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D3FFF4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D3FFF8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3FFFC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D40000  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D40004  41 82 00 10 */	beq lbl_80D40014
/* 80D40008  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D4040C@ha */
/* 80D4000C  38 03 04 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D4040C@l */
/* 80D40010  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80D40014:
/* 80D40014  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D40018  41 82 00 24 */	beq lbl_80D4003C
/* 80D4001C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D40020  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D40024  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D40028  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D4002C  41 82 00 10 */	beq lbl_80D4003C
/* 80D40030  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D40418@ha */
/* 80D40034  38 03 04 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D40418@l */
/* 80D40038  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D4003C:
/* 80D4003C  7F C3 F3 78 */	mr r3, r30
/* 80D40040  38 80 00 00 */	li r4, 0
/* 80D40044  4B 34 40 A1 */	bl __dt__12dCcD_GObjInfFv
/* 80D40048  7F E0 07 35 */	extsh. r0, r31
/* 80D4004C  40 81 00 0C */	ble lbl_80D40058
/* 80D40050  7F C3 F3 78 */	mr r3, r30
/* 80D40054  4B 58 EC E9 */	bl __dl__FPv
lbl_80D40058:
/* 80D40058  7F C3 F3 78 */	mr r3, r30
/* 80D4005C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40060  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D40064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40068  7C 08 03 A6 */	mtlr r0
/* 80D4006C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40070  4E 80 00 20 */	blr 
