lbl_80D2F770:
/* 80D2F770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F774  7C 08 02 A6 */	mflr r0
/* 80D2F778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F77C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F780  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2F784  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D2F788  7C 9F 23 78 */	mr r31, r4
/* 80D2F78C  41 82 00 A8 */	beq lbl_80D2F834
/* 80D2F790  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha /* 0x803AC0E0@ha */
/* 80D2F794  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l /* 0x803AC0E0@l */
/* 80D2F798  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D2F79C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2F7A0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2F7A4  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2F7A8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D2F7AC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D2F7B0  41 82 00 68 */	beq lbl_80D2F818
/* 80D2F7B4  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha /* 0x803C366C@ha */
/* 80D2F7B8  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l /* 0x803C366C@l */
/* 80D2F7BC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D2F7C0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2F7C4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D2F7C8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D2F7CC  41 82 00 24 */	beq lbl_80D2F7F0
/* 80D2F7D0  3C 60 80 D3 */	lis r3, __vt__8cM3dGTri@ha /* 0x80D2FE28@ha */
/* 80D2F7D4  38 03 FE 28 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x80D2FE28@l */
/* 80D2F7D8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D2F7DC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D2F7E0  41 82 00 10 */	beq lbl_80D2F7F0
/* 80D2F7E4  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D2FE1C@ha */
/* 80D2F7E8  38 03 FE 1C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D2FE1C@l */
/* 80D2F7EC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80D2F7F0:
/* 80D2F7F0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D2F7F4  41 82 00 24 */	beq lbl_80D2F818
/* 80D2F7F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D2F7FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D2F800  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2F804  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D2F808  41 82 00 10 */	beq lbl_80D2F818
/* 80D2F80C  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D2FE40@ha */
/* 80D2F810  38 03 FE 40 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D2FE40@l */
/* 80D2F814  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D2F818:
/* 80D2F818  7F C3 F3 78 */	mr r3, r30
/* 80D2F81C  38 80 00 00 */	li r4, 0
/* 80D2F820  4B 35 48 C5 */	bl __dt__12dCcD_GObjInfFv
/* 80D2F824  7F E0 07 35 */	extsh. r0, r31
/* 80D2F828  40 81 00 0C */	ble lbl_80D2F834
/* 80D2F82C  7F C3 F3 78 */	mr r3, r30
/* 80D2F830  4B 59 F5 0D */	bl __dl__FPv
lbl_80D2F834:
/* 80D2F834  7F C3 F3 78 */	mr r3, r30
/* 80D2F838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2F840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F844  7C 08 03 A6 */	mtlr r0
/* 80D2F848  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F84C  4E 80 00 20 */	blr 
