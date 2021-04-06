lbl_8009CA48:
/* 8009CA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009CA4C  80 AD 8A 28 */	lwz r5, m_obj__12dEyeHL_mng_c(r13)
/* 8009CA50  3C 60 80 43 */	lis r3, g_envHIO@ha /* 0x8043079C@ha */
/* 8009CA54  38 63 07 9C */	addi r3, r3, g_envHIO@l /* 0x8043079C@l */
/* 8009CA58  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8009CA5C  28 00 00 00 */	cmplwi r0, 0
/* 8009CA60  41 82 00 2C */	beq lbl_8009CA8C
/* 8009CA64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009CA68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009CA6C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8009CA70  28 00 00 00 */	cmplwi r0, 0
/* 8009CA74  40 82 00 24 */	bne lbl_8009CA98
/* 8009CA78  48 00 00 14 */	b lbl_8009CA8C
lbl_8009CA7C:
/* 8009CA7C  A8 05 00 08 */	lha r0, 8(r5)
/* 8009CA80  80 65 00 04 */	lwz r3, 4(r5)
/* 8009CA84  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8009CA88  80 A5 00 10 */	lwz r5, 0x10(r5)
lbl_8009CA8C:
/* 8009CA8C  28 05 00 00 */	cmplwi r5, 0
/* 8009CA90  40 82 FF EC */	bne lbl_8009CA7C
/* 8009CA94  48 00 00 78 */	b lbl_8009CB0C
lbl_8009CA98:
/* 8009CA98  C0 42 92 10 */	lfs f2, lit_3862(r2)
/* 8009CA9C  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8009CAA0  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8009CAA4  C0 02 92 14 */	lfs f0, lit_3863(r2)
/* 8009CAA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009CAAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009CAB0  FC 00 00 1E */	fctiwz f0, f0
/* 8009CAB4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8009CAB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8009CABC  7C 04 07 34 */	extsh r4, r0
/* 8009CAC0  48 00 00 44 */	b lbl_8009CB04
lbl_8009CAC4:
/* 8009CAC4  80 C5 00 04 */	lwz r6, 4(r5)
/* 8009CAC8  A8 05 00 08 */	lha r0, 8(r5)
/* 8009CACC  7C 00 22 14 */	add r0, r0, r4
/* 8009CAD0  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 8009CAD4  A8 66 00 1A */	lha r3, 0x1a(r6)
/* 8009CAD8  2C 03 FE 70 */	cmpwi r3, -400
/* 8009CADC  40 80 00 0C */	bge lbl_8009CAE8
/* 8009CAE0  38 00 FE 70 */	li r0, -400
/* 8009CAE4  48 00 00 18 */	b lbl_8009CAFC
lbl_8009CAE8:
/* 8009CAE8  7C 60 07 34 */	extsh r0, r3
/* 8009CAEC  2C 00 01 8F */	cmpwi r0, 0x18f
/* 8009CAF0  38 00 01 8F */	li r0, 0x18f
/* 8009CAF4  41 81 00 08 */	bgt lbl_8009CAFC
/* 8009CAF8  7C 60 1B 78 */	mr r0, r3
lbl_8009CAFC:
/* 8009CAFC  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 8009CB00  80 A5 00 10 */	lwz r5, 0x10(r5)
lbl_8009CB04:
/* 8009CB04  28 05 00 00 */	cmplwi r5, 0
/* 8009CB08  40 82 FF BC */	bne lbl_8009CAC4
lbl_8009CB0C:
/* 8009CB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009CB10  4E 80 00 20 */	blr 
