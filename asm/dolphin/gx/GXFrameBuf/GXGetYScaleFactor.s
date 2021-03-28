lbl_8035CD6C:
/* 8035CD6C  7C 08 02 A6 */	mflr r0
/* 8035CD70  90 01 00 04 */	stw r0, 4(r1)
/* 8035CD74  3C 00 43 30 */	lis r0, 0x4330
/* 8035CD78  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8035CD7C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8035CD80  DB C1 00 68 */	stfd f30, 0x68(r1)
/* 8035CD84  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8035CD88  DB 81 00 58 */	stfd f28, 0x58(r1)
/* 8035CD8C  BF 21 00 3C */	stmw r25, 0x3c(r1)
/* 8035CD90  54 9C 04 3E */	clrlwi r28, r4, 0x10
/* 8035CD94  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8035CD98  93 81 00 34 */	stw r28, 0x34(r1)
/* 8035CD9C  7C 7B 1B 78 */	mr r27, r3
/* 8035CDA0  7C 99 23 78 */	mr r25, r4
/* 8035CDA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035CDA8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8035CDAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8035CDB0  C8 62 CB B0 */	lfd f3, lit_234(r2)
/* 8035CDB4  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 8035CDB8  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8035CDBC  EC 42 18 28 */	fsubs f2, f2, f3
/* 8035CDC0  C0 02 CB A8 */	lfs f0, lit_179(r2)
/* 8035CDC4  EC 21 18 28 */	fsubs f1, f1, f3
/* 8035CDC8  EC 42 08 24 */	fdivs f2, f2, f1
/* 8035CDCC  EC 20 10 24 */	fdivs f1, f0, f2
/* 8035CDD0  FF 80 10 90 */	fmr f28, f2
/* 8035CDD4  48 00 52 D9 */	bl __cvt_fp2unsigned
/* 8035CDD8  38 1F FF FF */	addi r0, r31, -1
/* 8035CDDC  54 64 05 FE */	clrlwi r4, r3, 0x17
/* 8035CDE0  54 1E 40 2E */	slwi r30, r0, 8
/* 8035CDE4  7C 7E 23 96 */	divwu r3, r30, r4
/* 8035CDE8  28 04 00 80 */	cmplwi r4, 0x80
/* 8035CDEC  38 63 00 01 */	addi r3, r3, 1
/* 8035CDF0  40 81 00 30 */	ble lbl_8035CE20
/* 8035CDF4  28 04 01 00 */	cmplwi r4, 0x100
/* 8035CDF8  40 80 00 28 */	bge lbl_8035CE20
/* 8035CDFC  48 00 00 08 */	b lbl_8035CE04
lbl_8035CE00:
/* 8035CE00  54 84 F8 7E */	srwi r4, r4, 1
lbl_8035CE04:
/* 8035CE04  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8035CE08  41 82 FF F8 */	beq lbl_8035CE00
/* 8035CE0C  7C 1F 23 96 */	divwu r0, r31, r4
/* 8035CE10  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035CE14  7C 00 F8 51 */	subf. r0, r0, r31
/* 8035CE18  40 82 00 08 */	bne lbl_8035CE20
/* 8035CE1C  38 63 00 01 */	addi r3, r3, 1
lbl_8035CE20:
/* 8035CE20  28 03 04 00 */	cmplwi r3, 0x400
/* 8035CE24  40 81 00 08 */	ble lbl_8035CE2C
/* 8035CE28  38 60 04 00 */	li r3, 0x400
lbl_8035CE2C:
/* 8035CE2C  CB E2 CB B0 */	lfd f31, lit_234(r2)
/* 8035CE30  7C 60 1B 78 */	mr r0, r3
/* 8035CE34  C3 C2 CB A8 */	lfs f30, lit_179(r2)
/* 8035CE38  57 3D 04 3E */	clrlwi r29, r25, 0x10
/* 8035CE3C  57 7A 04 3E */	clrlwi r26, r27, 0x10
/* 8035CE40  3F 20 43 30 */	lis r25, 0x4330
/* 8035CE44  48 00 00 88 */	b lbl_8035CECC
lbl_8035CE48:
/* 8035CE48  3B 9C FF FF */	addi r28, r28, -1
/* 8035CE4C  93 41 00 34 */	stw r26, 0x34(r1)
/* 8035CE50  93 81 00 2C */	stw r28, 0x2c(r1)
/* 8035CE54  93 21 00 28 */	stw r25, 0x28(r1)
/* 8035CE58  93 21 00 30 */	stw r25, 0x30(r1)
/* 8035CE5C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8035CE60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8035CE64  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8035CE68  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8035CE6C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8035CE70  EC 3E 00 24 */	fdivs f1, f30, f0
/* 8035CE74  FF 80 00 90 */	fmr f28, f0
/* 8035CE78  48 00 52 35 */	bl __cvt_fp2unsigned
/* 8035CE7C  54 64 05 FE */	clrlwi r4, r3, 0x17
/* 8035CE80  7C 7E 23 96 */	divwu r3, r30, r4
/* 8035CE84  28 04 00 80 */	cmplwi r4, 0x80
/* 8035CE88  38 63 00 01 */	addi r3, r3, 1
/* 8035CE8C  40 81 00 30 */	ble lbl_8035CEBC
/* 8035CE90  28 04 01 00 */	cmplwi r4, 0x100
/* 8035CE94  40 80 00 28 */	bge lbl_8035CEBC
/* 8035CE98  48 00 00 08 */	b lbl_8035CEA0
lbl_8035CE9C:
/* 8035CE9C  54 84 F8 7E */	srwi r4, r4, 1
lbl_8035CEA0:
/* 8035CEA0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8035CEA4  41 82 FF F8 */	beq lbl_8035CE9C
/* 8035CEA8  7C 1F 23 96 */	divwu r0, r31, r4
/* 8035CEAC  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035CEB0  7C 00 F8 51 */	subf. r0, r0, r31
/* 8035CEB4  40 82 00 08 */	bne lbl_8035CEBC
/* 8035CEB8  38 63 00 01 */	addi r3, r3, 1
lbl_8035CEBC:
/* 8035CEBC  28 03 04 00 */	cmplwi r3, 0x400
/* 8035CEC0  40 81 00 08 */	ble lbl_8035CEC8
/* 8035CEC4  38 60 04 00 */	li r3, 0x400
lbl_8035CEC8:
/* 8035CEC8  7C 60 1B 78 */	mr r0, r3
lbl_8035CECC:
/* 8035CECC  7C 00 E8 40 */	cmplw r0, r29
/* 8035CED0  41 81 FF 78 */	bgt lbl_8035CE48
/* 8035CED4  FF A0 E0 90 */	fmr f29, f28
/* 8035CED8  CB C2 CB B0 */	lfd f30, lit_234(r2)
/* 8035CEDC  C3 E2 CB A8 */	lfs f31, lit_179(r2)
/* 8035CEE0  57 7B 04 3E */	clrlwi r27, r27, 0x10
/* 8035CEE4  3F 40 43 30 */	lis r26, 0x4330
/* 8035CEE8  48 00 00 8C */	b lbl_8035CF74
lbl_8035CEEC:
/* 8035CEEC  3B 9C 00 01 */	addi r28, r28, 1
/* 8035CEF0  93 61 00 34 */	stw r27, 0x34(r1)
/* 8035CEF4  FF A0 E0 90 */	fmr f29, f28
/* 8035CEF8  93 81 00 2C */	stw r28, 0x2c(r1)
/* 8035CEFC  93 41 00 28 */	stw r26, 0x28(r1)
/* 8035CF00  93 41 00 30 */	stw r26, 0x30(r1)
/* 8035CF04  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8035CF08  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8035CF0C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8035CF10  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8035CF14  EC 01 00 24 */	fdivs f0, f1, f0
/* 8035CF18  EC 3F 00 24 */	fdivs f1, f31, f0
/* 8035CF1C  FF 80 00 90 */	fmr f28, f0
/* 8035CF20  48 00 51 8D */	bl __cvt_fp2unsigned
/* 8035CF24  54 64 05 FE */	clrlwi r4, r3, 0x17
/* 8035CF28  7C 7E 23 96 */	divwu r3, r30, r4
/* 8035CF2C  28 04 00 80 */	cmplwi r4, 0x80
/* 8035CF30  38 63 00 01 */	addi r3, r3, 1
/* 8035CF34  40 81 00 30 */	ble lbl_8035CF64
/* 8035CF38  28 04 01 00 */	cmplwi r4, 0x100
/* 8035CF3C  40 80 00 28 */	bge lbl_8035CF64
/* 8035CF40  48 00 00 08 */	b lbl_8035CF48
lbl_8035CF44:
/* 8035CF44  54 84 F8 7E */	srwi r4, r4, 1
lbl_8035CF48:
/* 8035CF48  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8035CF4C  41 82 FF F8 */	beq lbl_8035CF44
/* 8035CF50  7C 1F 23 96 */	divwu r0, r31, r4
/* 8035CF54  7C 00 21 D6 */	mullw r0, r0, r4
/* 8035CF58  7C 00 F8 51 */	subf. r0, r0, r31
/* 8035CF5C  40 82 00 08 */	bne lbl_8035CF64
/* 8035CF60  38 63 00 01 */	addi r3, r3, 1
lbl_8035CF64:
/* 8035CF64  28 03 04 00 */	cmplwi r3, 0x400
/* 8035CF68  40 81 00 08 */	ble lbl_8035CF70
/* 8035CF6C  38 60 04 00 */	li r3, 0x400
lbl_8035CF70:
/* 8035CF70  7C 60 1B 78 */	mr r0, r3
lbl_8035CF74:
/* 8035CF74  7C 00 E8 40 */	cmplw r0, r29
/* 8035CF78  41 80 FF 74 */	blt lbl_8035CEEC
/* 8035CF7C  BB 21 00 3C */	lmw r25, 0x3c(r1)
/* 8035CF80  FC 20 E8 90 */	fmr f1, f29
/* 8035CF84  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8035CF88  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8035CF8C  CB C1 00 68 */	lfd f30, 0x68(r1)
/* 8035CF90  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8035CF94  CB 81 00 58 */	lfd f28, 0x58(r1)
/* 8035CF98  38 21 00 78 */	addi r1, r1, 0x78
/* 8035CF9C  7C 08 03 A6 */	mtlr r0
/* 8035CFA0  4E 80 00 20 */	blr 
