lbl_801248A8:
/* 801248A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801248AC  7C 08 02 A6 */	mflr r0
/* 801248B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801248B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801248B8  7C 7F 1B 78 */	mr r31, r3
/* 801248BC  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 801248C0  28 00 00 04 */	cmplwi r0, 4
/* 801248C4  40 82 01 54 */	bne lbl_80124A18
/* 801248C8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 801248CC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 801248D0  41 82 01 48 */	beq lbl_80124A18
/* 801248D4  4B F8 31 89 */	bl checkDashAnime__9daAlink_cCFv
/* 801248D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801248DC  41 82 01 3C */	beq lbl_80124A18
/* 801248E0  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 801248E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 801248E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801248EC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 801248F0  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 801248F4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801248F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801248FC  4C 41 13 82 */	cror 2, 1, 2
/* 80124900  40 82 01 18 */	bne lbl_80124A18
/* 80124904  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80124908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012490C  40 80 01 0C */	bge lbl_80124A18
/* 80124910  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 80124914  48 08 69 7D */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 80124918  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8012491C  28 00 00 02 */	cmplwi r0, 2
/* 80124920  40 82 00 F8 */	bne lbl_80124A18
/* 80124924  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80124928  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 8012492C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80124930  D0 01 00 08 */	stfs f0, 8(r1)
/* 80124934  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80124938  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8012493C  7F E3 FB 78 */	mr r3, r31
/* 80124940  38 9F 31 F8 */	addi r4, r31, 0x31f8
/* 80124944  38 A0 01 AF */	li r5, 0x1af
/* 80124948  38 DF 1A F0 */	addi r6, r31, 0x1af0
/* 8012494C  38 E1 00 08 */	addi r7, r1, 8
/* 80124950  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 80124954  4B FF BC E1 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80124958  28 03 00 00 */	cmplwi r3, 0
/* 8012495C  41 82 00 14 */	beq lbl_80124970
/* 80124960  38 00 00 0A */	li r0, 0xa
/* 80124964  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80124968  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8012496C  D0 03 00 3C */	stfs f0, 0x3c(r3)
lbl_80124970:
/* 80124970  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80124974  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80124978  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012497C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80124980  7C 64 02 14 */	add r3, r4, r0
/* 80124984  C0 03 00 04 */	lfs f0, 4(r3)
/* 80124988  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8012498C  C0 42 93 10 */	lfs f2, lit_7306(r2)
/* 80124990  EC 02 00 32 */	fmuls f0, f2, f0
/* 80124994  EC 81 00 2A */	fadds f4, f1, f0
/* 80124998  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 8012499C  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 801249A0  EC 61 00 2A */	fadds f3, f1, f0
/* 801249A4  7C 04 04 2E */	lfsx f0, r4, r0
/* 801249A8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 801249AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801249B0  EC 01 00 2A */	fadds f0, f1, f0
/* 801249B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801249B8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801249BC  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 801249C0  7F E3 FB 78 */	mr r3, r31
/* 801249C4  38 9F 31 FC */	addi r4, r31, 0x31fc
/* 801249C8  38 A0 01 B0 */	li r5, 0x1b0
/* 801249CC  38 DF 1A F0 */	addi r6, r31, 0x1af0
/* 801249D0  38 E1 00 08 */	addi r7, r1, 8
/* 801249D4  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 801249D8  4B FF BC 5D */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 801249DC  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 801249E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801249E4  7F E3 FB 78 */	mr r3, r31
/* 801249E8  38 9F 32 00 */	addi r4, r31, 0x3200
/* 801249EC  38 A0 01 B1 */	li r5, 0x1b1
/* 801249F0  38 DF 1A F0 */	addi r6, r31, 0x1af0
/* 801249F4  38 E1 00 08 */	addi r7, r1, 8
/* 801249F8  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 801249FC  4B FF BC 39 */	bl setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz
/* 80124A00  28 03 00 00 */	cmplwi r3, 0
/* 80124A04  41 82 00 14 */	beq lbl_80124A18
/* 80124A08  38 00 00 14 */	li r0, 0x14
/* 80124A0C  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80124A10  C0 02 95 48 */	lfs f0, lit_23416(r2)
/* 80124A14  D0 03 00 3C */	stfs f0, 0x3c(r3)
lbl_80124A18:
/* 80124A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80124A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124A20  7C 08 03 A6 */	mtlr r0
/* 80124A24  38 21 00 20 */	addi r1, r1, 0x20
/* 80124A28  4E 80 00 20 */	blr 
