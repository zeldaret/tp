lbl_80D56BD8:
/* 80D56BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56BDC  7C 08 02 A6 */	mflr r0
/* 80D56BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D56BEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D56BF0  7C 9F 23 78 */	mr r31, r4
/* 80D56BF4  41 82 01 88 */	beq lbl_80D56D7C
/* 80D56BF8  34 1E 07 A4 */	addic. r0, r30, 0x7a4
/* 80D56BFC  41 82 00 84 */	beq lbl_80D56C80
/* 80D56C00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D56C04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D56C08  90 7E 07 E0 */	stw r3, 0x7e0(r30)
/* 80D56C0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D56C10  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 80D56C14  38 03 00 84 */	addi r0, r3, 0x84
/* 80D56C18  90 1E 08 DC */	stw r0, 0x8dc(r30)
/* 80D56C1C  34 1E 08 A8 */	addic. r0, r30, 0x8a8
/* 80D56C20  41 82 00 54 */	beq lbl_80D56C74
/* 80D56C24  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D56C28  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D56C2C  90 7E 08 C4 */	stw r3, 0x8c4(r30)
/* 80D56C30  38 03 00 58 */	addi r0, r3, 0x58
/* 80D56C34  90 1E 08 DC */	stw r0, 0x8dc(r30)
/* 80D56C38  34 1E 08 C8 */	addic. r0, r30, 0x8c8
/* 80D56C3C  41 82 00 10 */	beq lbl_80D56C4C
/* 80D56C40  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D56C44  38 03 87 54 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D56C48  90 1E 08 DC */	stw r0, 0x8dc(r30)
lbl_80D56C4C:
/* 80D56C4C  34 1E 08 A8 */	addic. r0, r30, 0x8a8
/* 80D56C50  41 82 00 24 */	beq lbl_80D56C74
/* 80D56C54  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D56C58  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D56C5C  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 80D56C60  34 1E 08 A8 */	addic. r0, r30, 0x8a8
/* 80D56C64  41 82 00 10 */	beq lbl_80D56C74
/* 80D56C68  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D56C6C  38 03 87 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D56C70  90 1E 08 C0 */	stw r0, 0x8c0(r30)
lbl_80D56C74:
/* 80D56C74  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80D56C78  38 80 00 00 */	li r4, 0
/* 80D56C7C  4B 32 D4 68 */	b __dt__12dCcD_GObjInfFv
lbl_80D56C80:
/* 80D56C80  34 1E 06 68 */	addic. r0, r30, 0x668
/* 80D56C84  41 82 00 84 */	beq lbl_80D56D08
/* 80D56C88  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D56C8C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D56C90  90 7E 06 A4 */	stw r3, 0x6a4(r30)
/* 80D56C94  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D56C98  90 1E 07 88 */	stw r0, 0x788(r30)
/* 80D56C9C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D56CA0  90 1E 07 A0 */	stw r0, 0x7a0(r30)
/* 80D56CA4  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80D56CA8  41 82 00 54 */	beq lbl_80D56CFC
/* 80D56CAC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D56CB0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D56CB4  90 7E 07 88 */	stw r3, 0x788(r30)
/* 80D56CB8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D56CBC  90 1E 07 A0 */	stw r0, 0x7a0(r30)
/* 80D56CC0  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80D56CC4  41 82 00 10 */	beq lbl_80D56CD4
/* 80D56CC8  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D56CCC  38 03 87 54 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D56CD0  90 1E 07 A0 */	stw r0, 0x7a0(r30)
lbl_80D56CD4:
/* 80D56CD4  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80D56CD8  41 82 00 24 */	beq lbl_80D56CFC
/* 80D56CDC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D56CE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D56CE4  90 1E 07 88 */	stw r0, 0x788(r30)
/* 80D56CE8  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80D56CEC  41 82 00 10 */	beq lbl_80D56CFC
/* 80D56CF0  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D56CF4  38 03 87 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D56CF8  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_80D56CFC:
/* 80D56CFC  38 7E 06 68 */	addi r3, r30, 0x668
/* 80D56D00  38 80 00 00 */	li r4, 0
/* 80D56D04  4B 32 D3 E0 */	b __dt__12dCcD_GObjInfFv
lbl_80D56D08:
/* 80D56D08  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80D56D0C  41 82 00 54 */	beq lbl_80D56D60
/* 80D56D10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D56D14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D56D18  90 7E 06 44 */	stw r3, 0x644(r30)
/* 80D56D1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D56D20  90 1E 06 48 */	stw r0, 0x648(r30)
/* 80D56D24  34 1E 06 48 */	addic. r0, r30, 0x648
/* 80D56D28  41 82 00 24 */	beq lbl_80D56D4C
/* 80D56D2C  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D56D30  38 03 87 3C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D56D34  90 1E 06 48 */	stw r0, 0x648(r30)
/* 80D56D38  34 1E 06 48 */	addic. r0, r30, 0x648
/* 80D56D3C  41 82 00 10 */	beq lbl_80D56D4C
/* 80D56D40  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D56D44  38 03 87 30 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D56D48  90 1E 06 48 */	stw r0, 0x648(r30)
lbl_80D56D4C:
/* 80D56D4C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80D56D50  41 82 00 10 */	beq lbl_80D56D60
/* 80D56D54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D56D58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D56D5C  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80D56D60:
/* 80D56D60  7F C3 F3 78 */	mr r3, r30
/* 80D56D64  38 80 00 00 */	li r4, 0
/* 80D56D68  4B 2C 1F 24 */	b __dt__10fopAc_ac_cFv
/* 80D56D6C  7F E0 07 35 */	extsh. r0, r31
/* 80D56D70  40 81 00 0C */	ble lbl_80D56D7C
/* 80D56D74  7F C3 F3 78 */	mr r3, r30
/* 80D56D78  4B 57 7F C4 */	b __dl__FPv
lbl_80D56D7C:
/* 80D56D7C  7F C3 F3 78 */	mr r3, r30
/* 80D56D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D56D84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D56D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56D8C  7C 08 03 A6 */	mtlr r0
/* 80D56D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56D94  4E 80 00 20 */	blr 
