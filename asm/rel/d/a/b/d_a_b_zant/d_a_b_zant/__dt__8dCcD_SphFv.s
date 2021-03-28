lbl_8063F3C8:
/* 8063F3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F3CC  7C 08 02 A6 */	mflr r0
/* 8063F3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F3D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F3D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8063F3DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8063F3E0  7C 9F 23 78 */	mr r31, r4
/* 8063F3E4  41 82 00 94 */	beq lbl_8063F478
/* 8063F3E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8063F3EC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8063F3F0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8063F3F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8063F3F8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8063F3FC  38 03 00 84 */	addi r0, r3, 0x84
/* 8063F400  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8063F404  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8063F408  41 82 00 54 */	beq lbl_8063F45C
/* 8063F40C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8063F410  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8063F414  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8063F418  38 03 00 58 */	addi r0, r3, 0x58
/* 8063F41C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8063F420  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8063F424  41 82 00 10 */	beq lbl_8063F434
/* 8063F428  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha
/* 8063F42C  38 03 F5 8C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8063F430  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8063F434:
/* 8063F434  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8063F438  41 82 00 24 */	beq lbl_8063F45C
/* 8063F43C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8063F440  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8063F444  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8063F448  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8063F44C  41 82 00 10 */	beq lbl_8063F45C
/* 8063F450  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 8063F454  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8063F458  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8063F45C:
/* 8063F45C  7F C3 F3 78 */	mr r3, r30
/* 8063F460  38 80 00 00 */	li r4, 0
/* 8063F464  4B A4 4C 80 */	b __dt__12dCcD_GObjInfFv
/* 8063F468  7F E0 07 35 */	extsh. r0, r31
/* 8063F46C  40 81 00 0C */	ble lbl_8063F478
/* 8063F470  7F C3 F3 78 */	mr r3, r30
/* 8063F474  4B C8 F8 C8 */	b __dl__FPv
lbl_8063F478:
/* 8063F478  7F C3 F3 78 */	mr r3, r30
/* 8063F47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F480  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063F484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F488  7C 08 03 A6 */	mtlr r0
/* 8063F48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F490  4E 80 00 20 */	blr 
