lbl_8061A658:
/* 8061A658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A65C  7C 08 02 A6 */	mflr r0
/* 8061A660  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A668  93 C1 00 08 */	stw r30, 8(r1)
/* 8061A66C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8061A670  7C 9F 23 78 */	mr r31, r4
/* 8061A674  41 82 00 9C */	beq lbl_8061A710
/* 8061A678  34 1E 00 40 */	addic. r0, r30, 0x40
/* 8061A67C  41 82 00 84 */	beq lbl_8061A700
/* 8061A680  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A684  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8061A688  90 7E 00 7C */	stw r3, 0x7c(r30)
/* 8061A68C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8061A690  90 1E 01 60 */	stw r0, 0x160(r30)
/* 8061A694  38 03 00 84 */	addi r0, r3, 0x84
/* 8061A698  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8061A69C  34 1E 01 44 */	addic. r0, r30, 0x144
/* 8061A6A0  41 82 00 54 */	beq lbl_8061A6F4
/* 8061A6A4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A6A8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8061A6AC  90 7E 01 60 */	stw r3, 0x160(r30)
/* 8061A6B0  38 03 00 58 */	addi r0, r3, 0x58
/* 8061A6B4  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8061A6B8  34 1E 01 64 */	addic. r0, r30, 0x164
/* 8061A6BC  41 82 00 10 */	beq lbl_8061A6CC
/* 8061A6C0  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A6C4  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A6C8  90 1E 01 74 */	stw r0, 0x174(r30)
lbl_8061A6CC:
/* 8061A6CC  34 1E 01 44 */	addic. r0, r30, 0x144
/* 8061A6D0  41 82 00 24 */	beq lbl_8061A6F4
/* 8061A6D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A6D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A6DC  90 1E 01 60 */	stw r0, 0x160(r30)
/* 8061A6E0  34 1E 01 44 */	addic. r0, r30, 0x144
/* 8061A6E4  41 82 00 10 */	beq lbl_8061A6F4
/* 8061A6E8  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A6EC  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A6F0  90 1E 01 5C */	stw r0, 0x15c(r30)
lbl_8061A6F4:
/* 8061A6F4  38 7E 00 40 */	addi r3, r30, 0x40
/* 8061A6F8  38 80 00 00 */	li r4, 0
/* 8061A6FC  4B A6 99 E8 */	b __dt__12dCcD_GObjInfFv
lbl_8061A700:
/* 8061A700  7F E0 07 35 */	extsh. r0, r31
/* 8061A704  40 81 00 0C */	ble lbl_8061A710
/* 8061A708  7F C3 F3 78 */	mr r3, r30
/* 8061A70C  4B CB 46 30 */	b __dl__FPv
lbl_8061A710:
/* 8061A710  7F C3 F3 78 */	mr r3, r30
/* 8061A714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A718  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061A71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A720  7C 08 03 A6 */	mtlr r0
/* 8061A724  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A728  4E 80 00 20 */	blr 
