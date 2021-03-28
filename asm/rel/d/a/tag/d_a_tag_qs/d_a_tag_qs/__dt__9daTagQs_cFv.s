lbl_80D5DE78:
/* 80D5DE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DE7C  7C 08 02 A6 */	mflr r0
/* 80D5DE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DE88  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5DE8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5DE90  7C 9F 23 78 */	mr r31, r4
/* 80D5DE94  41 82 01 00 */	beq lbl_80D5DF94
/* 80D5DE98  34 1E 06 B4 */	addic. r0, r30, 0x6b4
/* 80D5DE9C  41 82 00 54 */	beq lbl_80D5DEF0
/* 80D5DEA0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D5DEA4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D5DEA8  90 7E 06 CC */	stw r3, 0x6cc(r30)
/* 80D5DEAC  38 03 00 20 */	addi r0, r3, 0x20
/* 80D5DEB0  90 1E 06 D0 */	stw r0, 0x6d0(r30)
/* 80D5DEB4  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 80D5DEB8  41 82 00 24 */	beq lbl_80D5DEDC
/* 80D5DEBC  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D5DEC0  38 03 ED FC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D5DEC4  90 1E 06 D0 */	stw r0, 0x6d0(r30)
/* 80D5DEC8  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 80D5DECC  41 82 00 10 */	beq lbl_80D5DEDC
/* 80D5DED0  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D5DED4  38 03 ED F0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D5DED8  90 1E 06 D0 */	stw r0, 0x6d0(r30)
lbl_80D5DEDC:
/* 80D5DEDC  34 1E 06 B4 */	addic. r0, r30, 0x6b4
/* 80D5DEE0  41 82 00 10 */	beq lbl_80D5DEF0
/* 80D5DEE4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D5DEE8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D5DEEC  90 1E 06 CC */	stw r0, 0x6cc(r30)
lbl_80D5DEF0:
/* 80D5DEF0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80D5DEF4  41 82 00 84 */	beq lbl_80D5DF78
/* 80D5DEF8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D5DEFC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D5DF00  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 80D5DF04  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D5DF08  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80D5DF0C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D5DF10  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80D5DF14  34 1E 06 7C */	addic. r0, r30, 0x67c
/* 80D5DF18  41 82 00 54 */	beq lbl_80D5DF6C
/* 80D5DF1C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D5DF20  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D5DF24  90 7E 06 98 */	stw r3, 0x698(r30)
/* 80D5DF28  38 03 00 58 */	addi r0, r3, 0x58
/* 80D5DF2C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80D5DF30  34 1E 06 9C */	addic. r0, r30, 0x69c
/* 80D5DF34  41 82 00 10 */	beq lbl_80D5DF44
/* 80D5DF38  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D5DF3C  38 03 ED E4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D5DF40  90 1E 06 B0 */	stw r0, 0x6b0(r30)
lbl_80D5DF44:
/* 80D5DF44  34 1E 06 7C */	addic. r0, r30, 0x67c
/* 80D5DF48  41 82 00 24 */	beq lbl_80D5DF6C
/* 80D5DF4C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D5DF50  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D5DF54  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80D5DF58  34 1E 06 7C */	addic. r0, r30, 0x67c
/* 80D5DF5C  41 82 00 10 */	beq lbl_80D5DF6C
/* 80D5DF60  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D5DF64  38 03 ED D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D5DF68  90 1E 06 94 */	stw r0, 0x694(r30)
lbl_80D5DF6C:
/* 80D5DF6C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80D5DF70  38 80 00 00 */	li r4, 0
/* 80D5DF74  4B 32 61 70 */	b __dt__12dCcD_GObjInfFv
lbl_80D5DF78:
/* 80D5DF78  7F C3 F3 78 */	mr r3, r30
/* 80D5DF7C  38 80 00 00 */	li r4, 0
/* 80D5DF80  4B 2B AD 0C */	b __dt__10fopAc_ac_cFv
/* 80D5DF84  7F E0 07 35 */	extsh. r0, r31
/* 80D5DF88  40 81 00 0C */	ble lbl_80D5DF94
/* 80D5DF8C  7F C3 F3 78 */	mr r3, r30
/* 80D5DF90  4B 57 0D AC */	b __dl__FPv
lbl_80D5DF94:
/* 80D5DF94  7F C3 F3 78 */	mr r3, r30
/* 80D5DF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DF9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5DFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DFA4  7C 08 03 A6 */	mtlr r0
/* 80D5DFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DFAC  4E 80 00 20 */	blr 
