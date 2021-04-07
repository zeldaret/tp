lbl_8050CB70:
/* 8050CB70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050CB74  7C 08 02 A6 */	mflr r0
/* 8050CB78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050CB7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050CB80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050CB84  7C 7E 1B 78 */	mr r30, r3
/* 8050CB88  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050CB8C  3B E4 85 84 */	addi r31, r4, lit_4208@l /* 0x80518584@l */
/* 8050CB90  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050CB94  2C 00 00 01 */	cmpwi r0, 1
/* 8050CB98  41 82 00 60 */	beq lbl_8050CBF8
/* 8050CB9C  40 80 00 A4 */	bge lbl_8050CC40
/* 8050CBA0  2C 00 00 00 */	cmpwi r0, 0
/* 8050CBA4  40 80 00 08 */	bge lbl_8050CBAC
/* 8050CBA8  48 00 00 98 */	b lbl_8050CC40
lbl_8050CBAC:
/* 8050CBAC  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050CBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8050CBB4  40 82 00 8C */	bne lbl_8050CC40
/* 8050CBB8  38 80 00 1D */	li r4, 0x1d
/* 8050CBBC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050CBC0  38 A0 00 02 */	li r5, 2
/* 8050CBC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CBC8  4B FF 80 0D */	bl anm_init__FP10e_rd_classifUcf
/* 8050CBCC  38 00 00 01 */	li r0, 1
/* 8050CBD0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050CBD4  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8050CBD8  4B D5 AD 7D */	bl cM_rndF__Ff
/* 8050CBDC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8050CBE0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CBE4  FC 00 00 1E */	fctiwz f0, f0
/* 8050CBE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050CBEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8050CBF0  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050CBF4  48 00 00 4C */	b lbl_8050CC40
lbl_8050CBF8:
/* 8050CBF8  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050CBFC  2C 00 00 00 */	cmpwi r0, 0
/* 8050CC00  40 82 00 40 */	bne lbl_8050CC40
/* 8050CC04  38 80 00 40 */	li r4, 0x40
/* 8050CC08  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050CC0C  38 A0 00 02 */	li r5, 2
/* 8050CC10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CC14  4B FF 7F C1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050CC18  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8050CC1C  4B D5 AD 39 */	bl cM_rndF__Ff
/* 8050CC20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050CC24  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CC28  FC 00 00 1E */	fctiwz f0, f0
/* 8050CC2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050CC30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8050CC34  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050CC38  38 00 00 00 */	li r0, 0
/* 8050CC3C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8050CC40:
/* 8050CC40  C0 3E 09 80 */	lfs f1, 0x980(r30)
/* 8050CC44  38 80 40 00 */	li r4, 0x4000
/* 8050CC48  38 C0 00 00 */	li r6, 0
/* 8050CC4C  88 BE 09 A1 */	lbz r5, 0x9a1(r30)
/* 8050CC50  2C 05 00 01 */	cmpwi r5, 1
/* 8050CC54  41 82 00 14 */	beq lbl_8050CC68
/* 8050CC58  3C 60 80 52 */	lis r3, struct_805191E4+0x0@ha /* 0x805191E4@ha */
/* 8050CC5C  A8 03 91 E4 */	lha r0, struct_805191E4+0x0@l(r3)  /* 0x805191E4@l */
/* 8050CC60  2C 00 00 00 */	cmpwi r0, 0
/* 8050CC64  41 82 00 1C */	beq lbl_8050CC80
lbl_8050CC68:
/* 8050CC68  7C A0 07 74 */	extsb r0, r5
/* 8050CC6C  2C 00 00 01 */	cmpwi r0, 1
/* 8050CC70  40 82 00 08 */	bne lbl_8050CC78
/* 8050CC74  38 C0 00 01 */	li r6, 1
lbl_8050CC78:
/* 8050CC78  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8050CC7C  38 80 7F FF */	li r4, 0x7fff
lbl_8050CC80:
/* 8050CC80  A8 1E 09 70 */	lha r0, 0x970(r30)
/* 8050CC84  54 03 07 7F */	clrlwi. r3, r0, 0x1d
/* 8050CC88  40 82 00 68 */	bne lbl_8050CCF0
/* 8050CC8C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8050CC90  7C 00 07 75 */	extsb. r0, r0
/* 8050CC94  40 82 00 5C */	bne lbl_8050CCF0
/* 8050CC98  3C 60 80 52 */	lis r3, struct_805191E4+0x0@ha /* 0x805191E4@ha */
/* 8050CC9C  A8 03 91 E4 */	lha r0, struct_805191E4+0x0@l(r3)  /* 0x805191E4@l */
/* 8050CCA0  2C 00 00 00 */	cmpwi r0, 0
/* 8050CCA4  41 82 00 18 */	beq lbl_8050CCBC
/* 8050CCA8  7F C3 F3 78 */	mr r3, r30
/* 8050CCAC  4B FF 97 81 */	bl wb_check__FP10e_rd_classs
/* 8050CCB0  88 1E 09 BE */	lbz r0, 0x9be(r30)
/* 8050CCB4  7C 00 07 75 */	extsb. r0, r0
/* 8050CCB8  40 82 00 7C */	bne lbl_8050CD34
lbl_8050CCBC:
/* 8050CCBC  7F C3 F3 78 */	mr r3, r30
/* 8050CCC0  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8050CCC4  38 80 40 00 */	li r4, 0x4000
/* 8050CCC8  4B FF 99 0D */	bl pl_check__FP10e_rd_classfs
/* 8050CCCC  2C 03 00 00 */	cmpwi r3, 0
/* 8050CCD0  41 82 00 64 */	beq lbl_8050CD34
/* 8050CCD4  38 00 00 03 */	li r0, 3
/* 8050CCD8  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050CCDC  38 00 FF F6 */	li r0, -10
/* 8050CCE0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050CCE4  38 00 00 3C */	li r0, 0x3c
/* 8050CCE8  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050CCEC  48 00 00 48 */	b lbl_8050CD34
lbl_8050CCF0:
/* 8050CCF0  2C 03 00 00 */	cmpwi r3, 0
/* 8050CCF4  41 82 00 0C */	beq lbl_8050CD00
/* 8050CCF8  2C 06 00 00 */	cmpwi r6, 0
/* 8050CCFC  41 82 00 38 */	beq lbl_8050CD34
lbl_8050CD00:
/* 8050CD00  7F C3 F3 78 */	mr r3, r30
/* 8050CD04  4B FF 98 D1 */	bl pl_check__FP10e_rd_classfs
/* 8050CD08  2C 03 00 00 */	cmpwi r3, 0
/* 8050CD0C  41 82 00 28 */	beq lbl_8050CD34
/* 8050CD10  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 8050CD14  28 00 00 01 */	cmplwi r0, 1
/* 8050CD18  40 82 00 1C */	bne lbl_8050CD34
/* 8050CD1C  38 00 00 03 */	li r0, 3
/* 8050CD20  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050CD24  38 00 FF F6 */	li r0, -10
/* 8050CD28  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050CD2C  38 00 00 3C */	li r0, 0x3c
/* 8050CD30  B0 1E 09 90 */	sth r0, 0x990(r30)
lbl_8050CD34:
/* 8050CD34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050CD38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050CD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050CD40  7C 08 03 A6 */	mtlr r0
/* 8050CD44  38 21 00 20 */	addi r1, r1, 0x20
/* 8050CD48  4E 80 00 20 */	blr 
