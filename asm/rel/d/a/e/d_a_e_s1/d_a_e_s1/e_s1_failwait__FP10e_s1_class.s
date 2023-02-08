lbl_8077CC54:
/* 8077CC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077CC58  7C 08 02 A6 */	mflr r0
/* 8077CC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077CC60  39 61 00 20 */	addi r11, r1, 0x20
/* 8077CC64  4B BE 55 79 */	bl _savegpr_29
/* 8077CC68  7C 7F 1B 78 */	mr r31, r3
/* 8077CC6C  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077CC70  3B A3 0D C4 */	addi r29, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077CC74  38 00 00 14 */	li r0, 0x14
/* 8077CC78  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
/* 8077CC7C  A8 1F 06 98 */	lha r0, 0x698(r31)
/* 8077CC80  2C 00 00 02 */	cmpwi r0, 2
/* 8077CC84  41 82 01 30 */	beq lbl_8077CDB4
/* 8077CC88  40 80 00 14 */	bge lbl_8077CC9C
/* 8077CC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8077CC90  41 82 00 18 */	beq lbl_8077CCA8
/* 8077CC94  40 80 00 98 */	bge lbl_8077CD2C
/* 8077CC98  48 00 02 80 */	b lbl_8077CF18
lbl_8077CC9C:
/* 8077CC9C  2C 00 00 04 */	cmpwi r0, 4
/* 8077CCA0  40 80 02 78 */	bge lbl_8077CF18
/* 8077CCA4  48 00 01 80 */	b lbl_8077CE24
lbl_8077CCA8:
/* 8077CCA8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8077CCAC  4B AE AC A9 */	bl cM_rndF__Ff
/* 8077CCB0  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 8077CCB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077CCB8  40 80 00 20 */	bge lbl_8077CCD8
/* 8077CCBC  7F E3 FB 78 */	mr r3, r31
/* 8077CCC0  38 80 00 0A */	li r4, 0xa
/* 8077CCC4  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CCC8  38 A0 00 00 */	li r5, 0
/* 8077CCCC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CCD0  4B FF DF 29 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CCD4  48 00 00 4C */	b lbl_8077CD20
lbl_8077CCD8:
/* 8077CCD8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8077CCDC  4B AE AC 79 */	bl cM_rndF__Ff
/* 8077CCE0  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8077CCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077CCE8  40 80 00 20 */	bge lbl_8077CD08
/* 8077CCEC  7F E3 FB 78 */	mr r3, r31
/* 8077CCF0  38 80 00 0B */	li r4, 0xb
/* 8077CCF4  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CCF8  38 A0 00 00 */	li r5, 0
/* 8077CCFC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CD00  4B FF DE F9 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CD04  48 00 00 1C */	b lbl_8077CD20
lbl_8077CD08:
/* 8077CD08  7F E3 FB 78 */	mr r3, r31
/* 8077CD0C  38 80 00 0C */	li r4, 0xc
/* 8077CD10  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CD14  38 A0 00 00 */	li r5, 0
/* 8077CD18  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CD1C  4B FF DE DD */	bl anm_init__FP10e_s1_classifUcf
lbl_8077CD20:
/* 8077CD20  38 00 00 01 */	li r0, 1
/* 8077CD24  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077CD28  48 00 01 F0 */	b lbl_8077CF18
lbl_8077CD2C:
/* 8077CD2C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077CD30  38 63 00 0C */	addi r3, r3, 0xc
/* 8077CD34  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 8077CD38  4B BA B6 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 8077CD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8077CD40  41 82 01 D8 */	beq lbl_8077CF18
/* 8077CD44  38 00 00 02 */	li r0, 2
/* 8077CD48  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077CD4C  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8077CD50  2C 00 00 0A */	cmpwi r0, 0xa
/* 8077CD54  40 82 00 20 */	bne lbl_8077CD74
/* 8077CD58  7F E3 FB 78 */	mr r3, r31
/* 8077CD5C  38 80 00 0D */	li r4, 0xd
/* 8077CD60  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CD64  38 A0 00 02 */	li r5, 2
/* 8077CD68  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CD6C  4B FF DE 8D */	bl anm_init__FP10e_s1_classifUcf
/* 8077CD70  48 00 01 A8 */	b lbl_8077CF18
lbl_8077CD74:
/* 8077CD74  2C 00 00 0B */	cmpwi r0, 0xb
/* 8077CD78  40 82 00 20 */	bne lbl_8077CD98
/* 8077CD7C  7F E3 FB 78 */	mr r3, r31
/* 8077CD80  38 80 00 0E */	li r4, 0xe
/* 8077CD84  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CD88  38 A0 00 02 */	li r5, 2
/* 8077CD8C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CD90  4B FF DE 69 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CD94  48 00 01 84 */	b lbl_8077CF18
lbl_8077CD98:
/* 8077CD98  7F E3 FB 78 */	mr r3, r31
/* 8077CD9C  38 80 00 0F */	li r4, 0xf
/* 8077CDA0  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CDA4  38 A0 00 02 */	li r5, 2
/* 8077CDA8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CDAC  4B FF DE 4D */	bl anm_init__FP10e_s1_classifUcf
/* 8077CDB0  48 00 01 68 */	b lbl_8077CF18
lbl_8077CDB4:
/* 8077CDB4  A0 1F 0E 0C */	lhz r0, 0xe0c(r31)
/* 8077CDB8  28 00 00 3C */	cmplwi r0, 0x3c
/* 8077CDBC  41 80 00 54 */	blt lbl_8077CE10
/* 8077CDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077CDC4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077CDC8  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8077CDCC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8077CDD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8077CDD4  41 82 00 3C */	beq lbl_8077CE10
/* 8077CDD8  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 8077CDDC  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8077CDE0  28 00 00 36 */	cmplwi r0, 0x36
/* 8077CDE4  41 82 01 34 */	beq lbl_8077CF18
/* 8077CDE8  38 00 00 03 */	li r0, 3
/* 8077CDEC  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077CDF0  28 1F 00 00 */	cmplwi r31, 0
/* 8077CDF4  41 82 00 0C */	beq lbl_8077CE00
/* 8077CDF8  80 1F 00 04 */	lwz r0, 4(r31)
/* 8077CDFC  48 00 00 08 */	b lbl_8077CE04
lbl_8077CE00:
/* 8077CE00  38 00 FF FF */	li r0, -1
lbl_8077CE04:
/* 8077CE04  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8077CE08  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 8077CE0C  48 00 01 0C */	b lbl_8077CF18
lbl_8077CE10:
/* 8077CE10  38 00 00 03 */	li r0, 3
/* 8077CE14  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077CE18  38 00 00 00 */	li r0, 0
/* 8077CE1C  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 8077CE20  48 00 00 F8 */	b lbl_8077CF18
lbl_8077CE24:
/* 8077CE24  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 8077CE28  2C 00 00 00 */	cmpwi r0, 0
/* 8077CE2C  40 82 00 EC */	bne lbl_8077CF18
/* 8077CE30  38 00 00 0A */	li r0, 0xa
/* 8077CE34  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 8077CE38  38 00 00 01 */	li r0, 1
/* 8077CE3C  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077CE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077CE44  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077CE48  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 8077CE4C  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 8077CE50  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8077CE54  7D 89 03 A6 */	mtctr r12
/* 8077CE58  4E 80 04 21 */	bctrl 
/* 8077CE5C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8077CE60  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 8077CE64  40 82 00 44 */	bne lbl_8077CEA8
/* 8077CE68  7F E3 FB 78 */	mr r3, r31
/* 8077CE6C  4B FF FB 6D */	bl all_fail_check__FP10e_s1_class
/* 8077CE70  2C 03 00 00 */	cmpwi r3, 0
/* 8077CE74  41 82 00 34 */	beq lbl_8077CEA8
/* 8077CE78  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 8077CE7C  28 00 00 00 */	cmplwi r0, 0
/* 8077CE80  40 82 00 8C */	bne lbl_8077CF0C
/* 8077CE84  38 00 00 01 */	li r0, 1
/* 8077CE88  B0 1F 30 38 */	sth r0, 0x3038(r31)
/* 8077CE8C  7F E3 FB 78 */	mr r3, r31
/* 8077CE90  38 80 00 0A */	li r4, 0xa
/* 8077CE94  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 8077CE98  38 A0 00 00 */	li r5, 0
/* 8077CE9C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CEA0  4B FF DD 59 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CEA4  48 00 00 68 */	b lbl_8077CF0C
lbl_8077CEA8:
/* 8077CEA8  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8077CEAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8077CEB0  40 82 00 20 */	bne lbl_8077CED0
/* 8077CEB4  7F E3 FB 78 */	mr r3, r31
/* 8077CEB8  38 80 00 0A */	li r4, 0xa
/* 8077CEBC  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 8077CEC0  38 A0 00 00 */	li r5, 0
/* 8077CEC4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CEC8  4B FF DD 31 */	bl anm_init__FP10e_s1_classifUcf
/* 8077CECC  48 00 00 40 */	b lbl_8077CF0C
lbl_8077CED0:
/* 8077CED0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8077CED4  40 82 00 20 */	bne lbl_8077CEF4
/* 8077CED8  7F E3 FB 78 */	mr r3, r31
/* 8077CEDC  38 80 00 0B */	li r4, 0xb
/* 8077CEE0  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 8077CEE4  38 A0 00 00 */	li r5, 0
/* 8077CEE8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CEEC  4B FF DD 0D */	bl anm_init__FP10e_s1_classifUcf
/* 8077CEF0  48 00 00 1C */	b lbl_8077CF0C
lbl_8077CEF4:
/* 8077CEF4  7F E3 FB 78 */	mr r3, r31
/* 8077CEF8  38 80 00 0C */	li r4, 0xc
/* 8077CEFC  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 8077CF00  38 A0 00 00 */	li r5, 0
/* 8077CF04  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8077CF08  4B FF DC F1 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077CF0C:
/* 8077CF0C  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 8077CF10  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077CF14  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8077CF18:
/* 8077CF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8077CF1C  4B BE 53 0D */	bl _restgpr_29
/* 8077CF20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077CF24  7C 08 03 A6 */	mtlr r0
/* 8077CF28  38 21 00 20 */	addi r1, r1, 0x20
/* 8077CF2C  4E 80 00 20 */	blr 
