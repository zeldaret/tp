lbl_8059CD80:
/* 8059CD80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059CD84  7C 08 02 A6 */	mflr r0
/* 8059CD88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059CD8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059CD90  7C 7F 1B 78 */	mr r31, r3
/* 8059CD94  A8 03 07 6A */	lha r0, 0x76a(r3)
/* 8059CD98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CD9C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8059CDA0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8059CDA4  7C 24 04 2E */	lfsx f1, r4, r0
/* 8059CDA8  C0 1F 07 48 */	lfs f0, 0x748(r31)
/* 8059CDAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8059CDB0  A8 1F 07 6C */	lha r0, 0x76c(r31)
/* 8059CDB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CDB8  7C 64 02 14 */	add r3, r4, r0
/* 8059CDBC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8059CDC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CDC4  FC 00 00 1E */	fctiwz f0, f0
/* 8059CDC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059CDCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059CDD0  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 8059CDD4  A8 1F 07 6C */	lha r0, 0x76c(r31)
/* 8059CDD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059CDDC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8059CDE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CDE4  FC 00 00 1E */	fctiwz f0, f0
/* 8059CDE8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059CDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059CDF0  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 8059CDF4  38 7F 07 48 */	addi r3, r31, 0x748
/* 8059CDF8  3C 80 80 5A */	lis r4, lit_3699@ha
/* 8059CDFC  C0 24 DE BC */	lfs f1, lit_3699@l(r4)
/* 8059CE00  3C 80 80 5A */	lis r4, M_attr__15daObjYobikusa_c@ha
/* 8059CE04  38 84 DE 7C */	addi r4, r4, M_attr__15daObjYobikusa_c@l
/* 8059CE08  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 8059CE0C  4B CD 39 34 */	b cLib_chaseF__FPfff
/* 8059CE10  A8 9F 07 6A */	lha r4, 0x76a(r31)
/* 8059CE14  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha
/* 8059CE18  38 63 DE 7C */	addi r3, r3, M_attr__15daObjYobikusa_c@l
/* 8059CE1C  A8 03 00 3E */	lha r0, 0x3e(r3)
/* 8059CE20  7C 04 02 14 */	add r0, r4, r0
/* 8059CE24  B0 1F 07 6A */	sth r0, 0x76a(r31)
/* 8059CE28  3C 60 80 5A */	lis r3, lit_3699@ha
/* 8059CE2C  C0 23 DE BC */	lfs f1, lit_3699@l(r3)
/* 8059CE30  C0 1F 07 48 */	lfs f0, 0x748(r31)
/* 8059CE34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059CE38  40 82 00 30 */	bne lbl_8059CE68
/* 8059CE3C  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8059CE40  4B AE 78 18 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8059CE44  28 03 00 00 */	cmplwi r3, 0
/* 8059CE48  41 82 00 14 */	beq lbl_8059CE5C
/* 8059CE4C  7F E3 FB 78 */	mr r3, r31
/* 8059CE50  38 80 00 01 */	li r4, 1
/* 8059CE54  4B FF FB A5 */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
/* 8059CE58  48 00 00 10 */	b lbl_8059CE68
lbl_8059CE5C:
/* 8059CE5C  7F E3 FB 78 */	mr r3, r31
/* 8059CE60  38 80 00 00 */	li r4, 0
/* 8059CE64  4B FF FB 95 */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
lbl_8059CE68:
/* 8059CE68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059CE6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059CE70  7C 08 03 A6 */	mtlr r0
/* 8059CE74  38 21 00 20 */	addi r1, r1, 0x20
/* 8059CE78  4E 80 00 20 */	blr 
