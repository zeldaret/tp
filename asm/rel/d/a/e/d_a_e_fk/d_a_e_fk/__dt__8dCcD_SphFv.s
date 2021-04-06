lbl_806BB394:
/* 806BB394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB398  7C 08 02 A6 */	mflr r0
/* 806BB39C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB3A4  93 C1 00 08 */	stw r30, 8(r1)
/* 806BB3A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806BB3AC  7C 9F 23 78 */	mr r31, r4
/* 806BB3B0  41 82 00 94 */	beq lbl_806BB444
/* 806BB3B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806BB3B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806BB3BC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806BB3C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 806BB3C4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806BB3C8  38 03 00 84 */	addi r0, r3, 0x84
/* 806BB3CC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806BB3D0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806BB3D4  41 82 00 54 */	beq lbl_806BB428
/* 806BB3D8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806BB3DC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806BB3E0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806BB3E4  38 03 00 58 */	addi r0, r3, 0x58
/* 806BB3E8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806BB3EC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 806BB3F0  41 82 00 10 */	beq lbl_806BB400
/* 806BB3F4  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha /* 0x806BB888@ha */
/* 806BB3F8  38 03 B8 88 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806BB888@l */
/* 806BB3FC  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_806BB400:
/* 806BB400  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806BB404  41 82 00 24 */	beq lbl_806BB428
/* 806BB408  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806BB40C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806BB410  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806BB414  34 1E 01 04 */	addic. r0, r30, 0x104
/* 806BB418  41 82 00 10 */	beq lbl_806BB428
/* 806BB41C  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806BB87C@ha */
/* 806BB420  38 03 B8 7C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806BB87C@l */
/* 806BB424  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_806BB428:
/* 806BB428  7F C3 F3 78 */	mr r3, r30
/* 806BB42C  38 80 00 00 */	li r4, 0
/* 806BB430  4B 9C 8C B5 */	bl __dt__12dCcD_GObjInfFv
/* 806BB434  7F E0 07 35 */	extsh. r0, r31
/* 806BB438  40 81 00 0C */	ble lbl_806BB444
/* 806BB43C  7F C3 F3 78 */	mr r3, r30
/* 806BB440  4B C1 38 FD */	bl __dl__FPv
lbl_806BB444:
/* 806BB444  7F C3 F3 78 */	mr r3, r30
/* 806BB448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB44C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BB450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB454  7C 08 03 A6 */	mtlr r0
/* 806BB458  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB45C  4E 80 00 20 */	blr 
