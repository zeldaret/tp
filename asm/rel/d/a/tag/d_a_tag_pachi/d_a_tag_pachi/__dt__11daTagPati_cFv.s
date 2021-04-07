lbl_80D5D438:
/* 80D5D438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D43C  7C 08 02 A6 */	mflr r0
/* 80D5D440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D448  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5D44C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5D450  7C 9F 23 78 */	mr r31, r4
/* 80D5D454  41 82 01 00 */	beq lbl_80D5D554
/* 80D5D458  34 1E 06 A4 */	addic. r0, r30, 0x6a4
/* 80D5D45C  41 82 00 54 */	beq lbl_80D5D4B0
/* 80D5D460  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D5D464  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D5D468  90 7E 06 BC */	stw r3, 0x6bc(r30)
/* 80D5D46C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D5D470  90 1E 06 C0 */	stw r0, 0x6c0(r30)
/* 80D5D474  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80D5D478  41 82 00 24 */	beq lbl_80D5D49C
/* 80D5D47C  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D5D9D4@ha */
/* 80D5D480  38 03 D9 D4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D5D9D4@l */
/* 80D5D484  90 1E 06 C0 */	stw r0, 0x6c0(r30)
/* 80D5D488  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80D5D48C  41 82 00 10 */	beq lbl_80D5D49C
/* 80D5D490  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D5D9C8@ha */
/* 80D5D494  38 03 D9 C8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D5D9C8@l */
/* 80D5D498  90 1E 06 C0 */	stw r0, 0x6c0(r30)
lbl_80D5D49C:
/* 80D5D49C  34 1E 06 A4 */	addic. r0, r30, 0x6a4
/* 80D5D4A0  41 82 00 10 */	beq lbl_80D5D4B0
/* 80D5D4A4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D5D4A8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D5D4AC  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_80D5D4B0:
/* 80D5D4B0  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80D5D4B4  41 82 00 84 */	beq lbl_80D5D538
/* 80D5D4B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D5D4BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D5D4C0  90 7E 05 A4 */	stw r3, 0x5a4(r30)
/* 80D5D4C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D5D4C8  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80D5D4CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D5D4D0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80D5D4D4  34 1E 06 6C */	addic. r0, r30, 0x66c
/* 80D5D4D8  41 82 00 54 */	beq lbl_80D5D52C
/* 80D5D4DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D5D4E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D5D4E4  90 7E 06 88 */	stw r3, 0x688(r30)
/* 80D5D4E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D5D4EC  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80D5D4F0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80D5D4F4  41 82 00 10 */	beq lbl_80D5D504
/* 80D5D4F8  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D5D9BC@ha */
/* 80D5D4FC  38 03 D9 BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D5D9BC@l */
/* 80D5D500  90 1E 06 A0 */	stw r0, 0x6a0(r30)
lbl_80D5D504:
/* 80D5D504  34 1E 06 6C */	addic. r0, r30, 0x66c
/* 80D5D508  41 82 00 24 */	beq lbl_80D5D52C
/* 80D5D50C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D5D510  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D5D514  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80D5D518  34 1E 06 6C */	addic. r0, r30, 0x66c
/* 80D5D51C  41 82 00 10 */	beq lbl_80D5D52C
/* 80D5D520  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D5D9B0@ha */
/* 80D5D524  38 03 D9 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D5D9B0@l */
/* 80D5D528  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_80D5D52C:
/* 80D5D52C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5D530  38 80 00 00 */	li r4, 0
/* 80D5D534  4B 32 6B B1 */	bl __dt__12dCcD_GObjInfFv
lbl_80D5D538:
/* 80D5D538  7F C3 F3 78 */	mr r3, r30
/* 80D5D53C  38 80 00 00 */	li r4, 0
/* 80D5D540  4B 2B B7 4D */	bl __dt__10fopAc_ac_cFv
/* 80D5D544  7F E0 07 35 */	extsh. r0, r31
/* 80D5D548  40 81 00 0C */	ble lbl_80D5D554
/* 80D5D54C  7F C3 F3 78 */	mr r3, r30
/* 80D5D550  4B 57 17 ED */	bl __dl__FPv
lbl_80D5D554:
/* 80D5D554  7F C3 F3 78 */	mr r3, r30
/* 80D5D558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D55C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5D560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D564  7C 08 03 A6 */	mtlr r0
/* 80D5D568  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D56C  4E 80 00 20 */	blr 
