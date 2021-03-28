lbl_8078FCC0:
/* 8078FCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078FCC4  7C 08 02 A6 */	mflr r0
/* 8078FCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078FCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078FCD0  7C 7F 1B 78 */	mr r31, r3
/* 8078FCD4  3C 80 80 79 */	lis r4, lit_3902@ha
/* 8078FCD8  38 C4 1D 70 */	addi r6, r4, lit_3902@l
/* 8078FCDC  38 00 00 06 */	li r0, 6
/* 8078FCE0  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 8078FCE4  C0 26 00 04 */	lfs f1, 4(r6)
/* 8078FCE8  D0 23 05 2C */	stfs f1, 0x52c(r3)
/* 8078FCEC  A8 03 06 78 */	lha r0, 0x678(r3)
/* 8078FCF0  2C 00 00 01 */	cmpwi r0, 1
/* 8078FCF4  41 82 00 40 */	beq lbl_8078FD34
/* 8078FCF8  40 80 00 10 */	bge lbl_8078FD08
/* 8078FCFC  2C 00 00 00 */	cmpwi r0, 0
/* 8078FD00  40 80 00 14 */	bge lbl_8078FD14
/* 8078FD04  48 00 00 98 */	b lbl_8078FD9C
lbl_8078FD08:
/* 8078FD08  2C 00 00 03 */	cmpwi r0, 3
/* 8078FD0C  40 80 00 90 */	bge lbl_8078FD9C
/* 8078FD10  48 00 00 64 */	b lbl_8078FD74
lbl_8078FD14:
/* 8078FD14  38 80 00 0B */	li r4, 0xb
/* 8078FD18  C0 26 00 AC */	lfs f1, 0xac(r6)
/* 8078FD1C  38 A0 00 00 */	li r5, 0
/* 8078FD20  C0 46 00 08 */	lfs f2, 8(r6)
/* 8078FD24  4B FF E6 91 */	bl anm_init__FP10e_sh_classifUcf
/* 8078FD28  38 00 00 01 */	li r0, 1
/* 8078FD2C  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 8078FD30  48 00 00 6C */	b lbl_8078FD9C
lbl_8078FD34:
/* 8078FD34  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8078FD38  38 80 00 01 */	li r4, 1
/* 8078FD3C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8078FD40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078FD44  40 82 00 14 */	bne lbl_8078FD58
/* 8078FD48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8078FD4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078FD50  41 82 00 08 */	beq lbl_8078FD58
/* 8078FD54  38 80 00 00 */	li r4, 0
lbl_8078FD58:
/* 8078FD58  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8078FD5C  41 82 00 40 */	beq lbl_8078FD9C
/* 8078FD60  38 00 00 02 */	li r0, 2
/* 8078FD64  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 8078FD68  38 00 00 1E */	li r0, 0x1e
/* 8078FD6C  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8078FD70  48 00 00 2C */	b lbl_8078FD9C
lbl_8078FD74:
/* 8078FD74  A8 1F 06 98 */	lha r0, 0x698(r31)
/* 8078FD78  2C 00 00 00 */	cmpwi r0, 0
/* 8078FD7C  40 82 00 20 */	bne lbl_8078FD9C
/* 8078FD80  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8078FD84  38 A0 00 0A */	li r5, 0xa
/* 8078FD88  38 C0 00 00 */	li r6, 0
/* 8078FD8C  38 E0 00 2A */	li r7, 0x2a
/* 8078FD90  4B 88 CD 48 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8078FD94  7F E3 FB 78 */	mr r3, r31
/* 8078FD98  4B 88 9E E4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8078FD9C:
/* 8078FD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078FDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078FDA4  7C 08 03 A6 */	mtlr r0
/* 8078FDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8078FDAC  4E 80 00 20 */	blr 
