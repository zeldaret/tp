lbl_80A1FBC4:
/* 80A1FBC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1FBC8  7C 08 02 A6 */	mflr r0
/* 80A1FBCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1FBD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A1FBD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A1FBD8  7C 7E 1B 78 */	mr r30, r3
/* 80A1FBDC  3C A0 80 A2 */	lis r5, lit_3908@ha
/* 80A1FBE0  38 A5 10 80 */	addi r5, r5, lit_3908@l
/* 80A1FBE4  3B E0 00 00 */	li r31, 0
/* 80A1FBE8  80 04 00 00 */	lwz r0, 0(r4)
/* 80A1FBEC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A1FBF0  41 82 00 70 */	beq lbl_80A1FC60
/* 80A1FBF4  40 80 00 1C */	bge lbl_80A1FC10
/* 80A1FBF8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1FBFC  41 82 00 2C */	beq lbl_80A1FC28
/* 80A1FC00  41 80 01 44 */	blt lbl_80A1FD44
/* 80A1FC04  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1FC08  40 80 00 38 */	bge lbl_80A1FC40
/* 80A1FC0C  48 00 01 38 */	b lbl_80A1FD44
lbl_80A1FC10:
/* 80A1FC10  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A1FC14  41 82 00 FC */	beq lbl_80A1FD10
/* 80A1FC18  40 80 01 2C */	bge lbl_80A1FD44
/* 80A1FC1C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A1FC20  41 82 00 AC */	beq lbl_80A1FCCC
/* 80A1FC24  48 00 01 20 */	b lbl_80A1FD44
lbl_80A1FC28:
/* 80A1FC28  38 80 0A 00 */	li r4, 0xa00
/* 80A1FC2C  4B FF F5 6D */	bl _turn_to_link__15daNpcKasiHana_cFs
/* 80A1FC30  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FC34  41 82 01 14 */	beq lbl_80A1FD48
/* 80A1FC38  3B E0 00 01 */	li r31, 1
/* 80A1FC3C  48 00 01 0C */	b lbl_80A1FD48
lbl_80A1FC40:
/* 80A1FC40  38 80 00 00 */	li r4, 0
/* 80A1FC44  38 A0 00 01 */	li r5, 1
/* 80A1FC48  38 C0 00 00 */	li r6, 0
/* 80A1FC4C  4B 73 41 38 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A1FC50  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FC54  41 82 00 F4 */	beq lbl_80A1FD48
/* 80A1FC58  3B E0 00 01 */	li r31, 1
/* 80A1FC5C  48 00 00 EC */	b lbl_80A1FD48
lbl_80A1FC60:
/* 80A1FC60  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 80A1FC64  2C 00 00 00 */	cmpwi r0, 0
/* 80A1FC68  40 82 00 44 */	bne lbl_80A1FCAC
/* 80A1FC6C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1FC70  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A1FC74  C0 05 02 68 */	lfs f0, 0x268(r5)
/* 80A1FC78  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1FC7C  41 82 00 10 */	beq lbl_80A1FC8C
/* 80A1FC80  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80A1FC84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A1FC88  40 82 00 24 */	bne lbl_80A1FCAC
lbl_80A1FC8C:
/* 80A1FC8C  7F C3 F3 78 */	mr r3, r30
/* 80A1FC90  38 80 00 04 */	li r4, 4
/* 80A1FC94  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80A1FC98  38 A0 00 00 */	li r5, 0
/* 80A1FC9C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1FCA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1FCA4  7D 89 03 A6 */	mtctr r12
/* 80A1FCA8  4E 80 04 21 */	bctrl 
lbl_80A1FCAC:
/* 80A1FCAC  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A1FCB0  38 03 FF FF */	addi r0, r3, -1
/* 80A1FCB4  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A1FCB8  80 1E 14 30 */	lwz r0, 0x1430(r30)
/* 80A1FCBC  2C 00 00 00 */	cmpwi r0, 0
/* 80A1FCC0  40 82 00 88 */	bne lbl_80A1FD48
/* 80A1FCC4  3B E0 00 01 */	li r31, 1
/* 80A1FCC8  48 00 00 80 */	b lbl_80A1FD48
lbl_80A1FCCC:
/* 80A1FCCC  38 61 00 08 */	addi r3, r1, 8
/* 80A1FCD0  38 9E 14 48 */	addi r4, r30, 0x1448
/* 80A1FCD4  48 00 09 89 */	bl getCenterPos__15daNpcKasi_Mng_cFv
/* 80A1FCD8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A1FCDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1FCE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A1FCE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A1FCE8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A1FCEC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A1FCF0  7F C3 F3 78 */	mr r3, r30
/* 80A1FCF4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1FCF8  38 A0 0A 00 */	li r5, 0xa00
/* 80A1FCFC  4B FF F4 E9 */	bl _turn_pos__15daNpcKasiHana_cFRC4cXyzs
/* 80A1FD00  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FD04  41 82 00 44 */	beq lbl_80A1FD48
/* 80A1FD08  3B E0 00 01 */	li r31, 1
/* 80A1FD0C  48 00 00 3C */	b lbl_80A1FD48
lbl_80A1FD10:
/* 80A1FD10  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A1FD14  38 03 FF FF */	addi r0, r3, -1
/* 80A1FD18  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A1FD1C  80 1E 14 30 */	lwz r0, 0x1430(r30)
/* 80A1FD20  2C 00 00 00 */	cmpwi r0, 0
/* 80A1FD24  41 81 00 0C */	bgt lbl_80A1FD30
/* 80A1FD28  3B E0 00 01 */	li r31, 1
/* 80A1FD2C  48 00 00 1C */	b lbl_80A1FD48
lbl_80A1FD30:
/* 80A1FD30  2C 00 00 42 */	cmpwi r0, 0x42
/* 80A1FD34  40 82 00 14 */	bne lbl_80A1FD48
/* 80A1FD38  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1FD3C  4B FF BB E5 */	bl createHearts__15daNpcKasi_Mng_cFv
/* 80A1FD40  48 00 00 08 */	b lbl_80A1FD48
lbl_80A1FD44:
/* 80A1FD44  3B E0 00 01 */	li r31, 1
lbl_80A1FD48:
/* 80A1FD48  7F E3 FB 78 */	mr r3, r31
/* 80A1FD4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A1FD50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A1FD54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1FD58  7C 08 03 A6 */	mtlr r0
/* 80A1FD5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1FD60  4E 80 00 20 */	blr 
