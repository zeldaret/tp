lbl_80C4E394:
/* 80C4E394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E398  7C 08 02 A6 */	mflr r0
/* 80C4E39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E3A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4E3A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C4E3AC  7C 9F 23 78 */	mr r31, r4
/* 80C4E3B0  41 82 00 94 */	beq lbl_80C4E444
/* 80C4E3B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C4E3B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C4E3BC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C4E3C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C4E3C4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C4E3C8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C4E3CC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C4E3D0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C4E3D4  41 82 00 54 */	beq lbl_80C4E428
/* 80C4E3D8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C4E3DC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C4E3E0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C4E3E4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C4E3E8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C4E3EC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80C4E3F0  41 82 00 10 */	beq lbl_80C4E400
/* 80C4E3F4  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C4E994@ha */
/* 80C4E3F8  38 03 E9 94 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C4E994@l */
/* 80C4E3FC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C4E400:
/* 80C4E400  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C4E404  41 82 00 24 */	beq lbl_80C4E428
/* 80C4E408  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C4E40C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C4E410  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C4E414  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80C4E418  41 82 00 10 */	beq lbl_80C4E428
/* 80C4E41C  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C4E988@ha */
/* 80C4E420  38 03 E9 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C4E988@l */
/* 80C4E424  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80C4E428:
/* 80C4E428  7F C3 F3 78 */	mr r3, r30
/* 80C4E42C  38 80 00 00 */	li r4, 0
/* 80C4E430  4B 43 5C B5 */	bl __dt__12dCcD_GObjInfFv
/* 80C4E434  7F E0 07 35 */	extsh. r0, r31
/* 80C4E438  40 81 00 0C */	ble lbl_80C4E444
/* 80C4E43C  7F C3 F3 78 */	mr r3, r30
/* 80C4E440  4B 68 08 FD */	bl __dl__FPv
lbl_80C4E444:
/* 80C4E444  7F C3 F3 78 */	mr r3, r30
/* 80C4E448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E44C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4E450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E454  7C 08 03 A6 */	mtlr r0
/* 80C4E458  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E45C  4E 80 00 20 */	blr 
