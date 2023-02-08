lbl_8027CCCC:
/* 8027CCCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CCD0  7C 08 02 A6 */	mflr r0
/* 8027CCD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CCD8  A9 06 00 80 */	lha r8, 0x80(r6)
/* 8027CCDC  7D 00 07 35 */	extsh. r0, r8
/* 8027CCE0  41 82 00 28 */	beq lbl_8027CD08
/* 8027CCE4  80 E5 00 00 */	lwz r7, 0(r5)
/* 8027CCE8  88 07 00 40 */	lbz r0, 0x40(r7)
/* 8027CCEC  28 00 00 00 */	cmplwi r0, 0
/* 8027CCF0  41 82 00 E4 */	beq lbl_8027CDD4
/* 8027CCF4  54 07 06 3E */	clrlwi r7, r0, 0x18
/* 8027CCF8  7C 08 3B D6 */	divw r0, r8, r7
/* 8027CCFC  7C 00 39 D6 */	mullw r0, r0, r7
/* 8027CD00  7C 00 40 51 */	subf. r0, r0, r8
/* 8027CD04  40 82 00 D0 */	bne lbl_8027CDD4
lbl_8027CD08:
/* 8027CD08  81 04 00 00 */	lwz r8, 0(r4)
/* 8027CD0C  80 08 00 C4 */	lwz r0, 0xc4(r8)
/* 8027CD10  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027CD14  38 E4 66 0D */	addi r7, r4, 0x660D /* 0x0019660D@l */
/* 8027CD18  7C 80 39 D6 */	mullw r4, r0, r7
/* 8027CD1C  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027CD20  38 04 F3 5F */	addi r0, r4, -3233
/* 8027CD24  90 08 00 C4 */	stw r0, 0xc4(r8)
/* 8027CD28  54 00 BA 7E */	srwi r0, r0, 9
/* 8027CD2C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027CD30  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027CD34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8027CD38  C0 42 B9 38 */	lfs f2, lit_2353(r2)
/* 8027CD3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027CD40  C0 22 B9 44 */	lfs f1, lit_2460(r2)
/* 8027CD44  EC 60 08 28 */	fsubs f3, f0, f1
/* 8027CD48  80 08 00 C4 */	lwz r0, 0xc4(r8)
/* 8027CD4C  7C 80 39 D6 */	mullw r4, r0, r7
/* 8027CD50  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027CD54  38 04 F3 5F */	addi r0, r4, -3233
/* 8027CD58  90 08 00 C4 */	stw r0, 0xc4(r8)
/* 8027CD5C  54 00 BA 7E */	srwi r0, r0, 9
/* 8027CD60  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027CD64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027CD68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8027CD6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027CD70  EC 80 08 28 */	fsubs f4, f0, f1
/* 8027CD74  80 08 00 C4 */	lwz r0, 0xc4(r8)
/* 8027CD78  7C 80 39 D6 */	mullw r4, r0, r7
/* 8027CD7C  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027CD80  38 04 F3 5F */	addi r0, r4, -3233
/* 8027CD84  90 08 00 C4 */	stw r0, 0xc4(r8)
/* 8027CD88  54 00 BA 7E */	srwi r0, r0, 9
/* 8027CD8C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027CD90  90 01 00 08 */	stw r0, 8(r1)
/* 8027CD94  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027CD98  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027CD9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027CDA0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8027CDA4  D0 83 00 08 */	stfs f4, 8(r3)
/* 8027CDA8  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 8027CDAC  C0 A5 00 28 */	lfs f5, 0x28(r5)
/* 8027CDB0  E0 03 00 04 */	psq_l f0, 4(r3), 0, 0 /* qr0 */
/* 8027CDB4  E0 23 80 0C */	psq_l f1, 12(r3), 1, 0 /* qr0 */
/* 8027CDB8  10 00 01 58 */	ps_muls0 f0, f0, f5
/* 8027CDBC  F0 03 00 04 */	psq_st f0, 4(r3), 0, 0 /* qr0 */
/* 8027CDC0  10 01 01 58 */	ps_muls0 f0, f1, f5
/* 8027CDC4  F0 03 80 0C */	psq_st f0, 12(r3), 1, 0 /* qr0 */
/* 8027CDC8  7C A4 2B 78 */	mr r4, r5
/* 8027CDCC  7C C5 33 78 */	mr r5, r6
/* 8027CDD0  4B FF F0 1D */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
lbl_8027CDD4:
/* 8027CDD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027CDD8  7C 08 03 A6 */	mtlr r0
/* 8027CDDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8027CDE0  4E 80 00 20 */	blr 
