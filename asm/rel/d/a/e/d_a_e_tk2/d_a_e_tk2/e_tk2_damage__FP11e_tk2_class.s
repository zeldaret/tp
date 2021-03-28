lbl_807BAF60:
/* 807BAF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BAF64  7C 08 02 A6 */	mflr r0
/* 807BAF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BAF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BAF70  7C 7F 1B 78 */	mr r31, r3
/* 807BAF74  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807BAF78  38 C4 BD A8 */	addi r6, r4, lit_3762@l
/* 807BAF7C  38 00 00 06 */	li r0, 6
/* 807BAF80  B0 03 06 92 */	sth r0, 0x692(r3)
/* 807BAF84  38 80 00 01 */	li r4, 1
/* 807BAF88  98 83 06 94 */	stb r4, 0x694(r3)
/* 807BAF8C  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 807BAF90  2C 00 00 01 */	cmpwi r0, 1
/* 807BAF94  41 82 00 34 */	beq lbl_807BAFC8
/* 807BAF98  40 80 00 7C */	bge lbl_807BB014
/* 807BAF9C  2C 00 00 00 */	cmpwi r0, 0
/* 807BAFA0  40 80 00 08 */	bge lbl_807BAFA8
/* 807BAFA4  48 00 00 70 */	b lbl_807BB014
lbl_807BAFA8:
/* 807BAFA8  38 80 00 06 */	li r4, 6
/* 807BAFAC  C0 26 00 30 */	lfs f1, 0x30(r6)
/* 807BAFB0  38 A0 00 00 */	li r5, 0
/* 807BAFB4  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 807BAFB8  4B FF F5 FD */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAFBC  38 00 00 01 */	li r0, 1
/* 807BAFC0  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BAFC4  48 00 00 50 */	b lbl_807BB014
lbl_807BAFC8:
/* 807BAFC8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BAFCC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BAFD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BAFD4  40 82 00 18 */	bne lbl_807BAFEC
/* 807BAFD8  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 807BAFDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BAFE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BAFE4  41 82 00 08 */	beq lbl_807BAFEC
/* 807BAFE8  38 80 00 00 */	li r4, 0
lbl_807BAFEC:
/* 807BAFEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BAFF0  41 82 00 24 */	beq lbl_807BB014
/* 807BAFF4  7F E3 FB 78 */	mr r3, r31
/* 807BAFF8  38 9F 05 38 */	addi r4, r31, 0x538
/* 807BAFFC  38 A0 00 0A */	li r5, 0xa
/* 807BB000  38 C0 00 00 */	li r6, 0
/* 807BB004  38 E0 00 12 */	li r7, 0x12
/* 807BB008  4B 86 1A D0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807BB00C  7F E3 FB 78 */	mr r3, r31
/* 807BB010  4B 85 EC 6C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807BB014:
/* 807BB014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BB018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BB01C  7C 08 03 A6 */	mtlr r0
/* 807BB020  38 21 00 10 */	addi r1, r1, 0x10
/* 807BB024  4E 80 00 20 */	blr 
