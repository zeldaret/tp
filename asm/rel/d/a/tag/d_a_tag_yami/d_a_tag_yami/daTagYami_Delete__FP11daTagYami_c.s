lbl_80D65F9C:
/* 80D65F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65FA0  7C 08 02 A6 */	mflr r0
/* 80D65FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D65FAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D65FB0  41 82 00 F0 */	beq lbl_80D660A0
/* 80D65FB4  34 1F 06 A4 */	addic. r0, r31, 0x6a4
/* 80D65FB8  41 82 00 54 */	beq lbl_80D6600C
/* 80D65FBC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D65FC0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D65FC4  90 7F 06 BC */	stw r3, 0x6bc(r31)
/* 80D65FC8  38 03 00 20 */	addi r0, r3, 0x20
/* 80D65FCC  90 1F 06 C0 */	stw r0, 0x6c0(r31)
/* 80D65FD0  34 1F 06 C0 */	addic. r0, r31, 0x6c0
/* 80D65FD4  41 82 00 24 */	beq lbl_80D65FF8
/* 80D65FD8  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D65FDC  38 03 62 DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D65FE0  90 1F 06 C0 */	stw r0, 0x6c0(r31)
/* 80D65FE4  34 1F 06 C0 */	addic. r0, r31, 0x6c0
/* 80D65FE8  41 82 00 10 */	beq lbl_80D65FF8
/* 80D65FEC  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D65FF0  38 03 62 D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D65FF4  90 1F 06 C0 */	stw r0, 0x6c0(r31)
lbl_80D65FF8:
/* 80D65FF8  34 1F 06 A4 */	addic. r0, r31, 0x6a4
/* 80D65FFC  41 82 00 10 */	beq lbl_80D6600C
/* 80D66000  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D66004  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D66008  90 1F 06 BC */	stw r0, 0x6bc(r31)
lbl_80D6600C:
/* 80D6600C  34 1F 05 68 */	addic. r0, r31, 0x568
/* 80D66010  41 82 00 84 */	beq lbl_80D66094
/* 80D66014  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D66018  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D6601C  90 7F 05 A4 */	stw r3, 0x5a4(r31)
/* 80D66020  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D66024  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80D66028  38 03 00 84 */	addi r0, r3, 0x84
/* 80D6602C  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80D66030  34 1F 06 6C */	addic. r0, r31, 0x66c
/* 80D66034  41 82 00 54 */	beq lbl_80D66088
/* 80D66038  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D6603C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D66040  90 7F 06 88 */	stw r3, 0x688(r31)
/* 80D66044  38 03 00 58 */	addi r0, r3, 0x58
/* 80D66048  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80D6604C  34 1F 06 8C */	addic. r0, r31, 0x68c
/* 80D66050  41 82 00 10 */	beq lbl_80D66060
/* 80D66054  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D66058  38 03 62 E8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D6605C  90 1F 06 A0 */	stw r0, 0x6a0(r31)
lbl_80D66060:
/* 80D66060  34 1F 06 6C */	addic. r0, r31, 0x66c
/* 80D66064  41 82 00 24 */	beq lbl_80D66088
/* 80D66068  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D6606C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D66070  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80D66074  34 1F 06 6C */	addic. r0, r31, 0x66c
/* 80D66078  41 82 00 10 */	beq lbl_80D66088
/* 80D6607C  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D66080  38 03 62 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D66084  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_80D66088:
/* 80D66088  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D6608C  38 80 00 00 */	li r4, 0
/* 80D66090  4B 31 E0 54 */	b __dt__12dCcD_GObjInfFv
lbl_80D66094:
/* 80D66094  7F E3 FB 78 */	mr r3, r31
/* 80D66098  38 80 00 00 */	li r4, 0
/* 80D6609C  4B 2B 2B F0 */	b __dt__10fopAc_ac_cFv
lbl_80D660A0:
/* 80D660A0  38 60 00 01 */	li r3, 1
/* 80D660A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D660A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D660AC  7C 08 03 A6 */	mtlr r0
/* 80D660B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D660B4  4E 80 00 20 */	blr 
