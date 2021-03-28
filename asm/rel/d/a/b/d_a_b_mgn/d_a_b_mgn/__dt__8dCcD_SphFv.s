lbl_8060F5D8:
/* 8060F5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F5DC  7C 08 02 A6 */	mflr r0
/* 8060F5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F5E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8060F5EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8060F5F0  7C 9F 23 78 */	mr r31, r4
/* 8060F5F4  41 82 00 94 */	beq lbl_8060F688
/* 8060F5F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8060F5FC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8060F600  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8060F604  38 03 00 2C */	addi r0, r3, 0x2c
/* 8060F608  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8060F60C  38 03 00 84 */	addi r0, r3, 0x84
/* 8060F610  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8060F614  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8060F618  41 82 00 54 */	beq lbl_8060F66C
/* 8060F61C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8060F620  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8060F624  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8060F628  38 03 00 58 */	addi r0, r3, 0x58
/* 8060F62C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8060F630  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8060F634  41 82 00 10 */	beq lbl_8060F644
/* 8060F638  3C 60 80 61 */	lis r3, __vt__8cM3dGSph@ha
/* 8060F63C  38 03 03 D8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8060F640  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8060F644:
/* 8060F644  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8060F648  41 82 00 24 */	beq lbl_8060F66C
/* 8060F64C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8060F650  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8060F654  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8060F658  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8060F65C  41 82 00 10 */	beq lbl_8060F66C
/* 8060F660  3C 60 80 61 */	lis r3, __vt__8cM3dGAab@ha
/* 8060F664  38 03 03 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8060F668  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8060F66C:
/* 8060F66C  7F C3 F3 78 */	mr r3, r30
/* 8060F670  38 80 00 00 */	li r4, 0
/* 8060F674  4B A7 4A 70 */	b __dt__12dCcD_GObjInfFv
/* 8060F678  7F E0 07 35 */	extsh. r0, r31
/* 8060F67C  40 81 00 0C */	ble lbl_8060F688
/* 8060F680  7F C3 F3 78 */	mr r3, r30
/* 8060F684  4B CB F6 B8 */	b __dl__FPv
lbl_8060F688:
/* 8060F688  7F C3 F3 78 */	mr r3, r30
/* 8060F68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F690  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060F694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F698  7C 08 03 A6 */	mtlr r0
/* 8060F69C  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F6A0  4E 80 00 20 */	blr 
