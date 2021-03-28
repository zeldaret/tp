lbl_8036C7A0:
/* 8036C7A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036C7A4  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036C7A8  80 C1 00 08 */	lwz r6, 8(r1)
/* 8036C7AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036C7B0  54 C3 00 56 */	rlwinm r3, r6, 0, 1, 0xb
/* 8036C7B4  3C 63 80 10 */	addis r3, r3, 0x8010
/* 8036C7B8  28 03 00 00 */	cmplwi r3, 0
/* 8036C7BC  40 82 00 14 */	bne lbl_8036C7D0
/* 8036C7C0  FC 21 08 7A */	fmadd f1, f1, f1, f1
/* 8036C7C4  38 00 00 21 */	li r0, 0x21
/* 8036C7C8  90 0D 94 28 */	stw r0, errno(r13)
/* 8036C7CC  48 00 01 F0 */	b lbl_8036C9BC
lbl_8036C7D0:
/* 8036C7D0  2C 06 00 00 */	cmpwi r6, 0
/* 8036C7D4  41 81 00 30 */	bgt lbl_8036C804
/* 8036C7D8  54 C3 00 7E */	clrlwi r3, r6, 1
/* 8036C7DC  7C 03 1B 79 */	or. r3, r0, r3
/* 8036C7E0  40 82 00 08 */	bne lbl_8036C7E8
/* 8036C7E4  48 00 01 D8 */	b lbl_8036C9BC
lbl_8036C7E8:
/* 8036C7E8  2C 06 00 00 */	cmpwi r6, 0
/* 8036C7EC  40 80 00 18 */	bge lbl_8036C804
/* 8036C7F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8036C7F4  38 00 00 21 */	li r0, 0x21
/* 8036C7F8  90 0D 94 28 */	stw r0, errno(r13)
/* 8036C7FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8036C800  48 00 01 BC */	b lbl_8036C9BC
lbl_8036C804:
/* 8036C804  7C C3 A6 71 */	srawi. r3, r6, 0x14
/* 8036C808  40 82 00 50 */	bne lbl_8036C858
/* 8036C80C  48 00 00 14 */	b lbl_8036C820
lbl_8036C810:
/* 8036C810  54 04 AA FE */	srwi r4, r0, 0xb
/* 8036C814  54 00 A8 14 */	slwi r0, r0, 0x15
/* 8036C818  7C C6 23 78 */	or r6, r6, r4
/* 8036C81C  38 63 FF EB */	addi r3, r3, -21
lbl_8036C820:
/* 8036C820  2C 06 00 00 */	cmpwi r6, 0
/* 8036C824  41 82 FF EC */	beq lbl_8036C810
/* 8036C828  38 E0 00 00 */	li r7, 0
/* 8036C82C  48 00 00 0C */	b lbl_8036C838
lbl_8036C830:
/* 8036C830  54 C6 08 3C */	slwi r6, r6, 1
/* 8036C834  38 E7 00 01 */	addi r7, r7, 1
lbl_8036C838:
/* 8036C838  54 C4 02 D7 */	rlwinm. r4, r6, 0, 0xb, 0xb
/* 8036C83C  41 82 FF F4 */	beq lbl_8036C830
/* 8036C840  20 87 00 20 */	subfic r4, r7, 0x20
/* 8036C844  38 A7 FF FF */	addi r5, r7, -1
/* 8036C848  7C 04 24 30 */	srw r4, r0, r4
/* 8036C84C  7C 00 38 30 */	slw r0, r0, r7
/* 8036C850  7C 65 18 50 */	subf r3, r5, r3
/* 8036C854  7C C6 23 78 */	or r6, r6, r4
lbl_8036C858:
/* 8036C858  38 83 FC 01 */	addi r4, r3, -1023
/* 8036C85C  54 C5 03 3E */	clrlwi r5, r6, 0xc
/* 8036C860  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 8036C864  64 A5 00 10 */	oris r5, r5, 0x10
/* 8036C868  41 82 00 14 */	beq lbl_8036C87C
/* 8036C86C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8036C870  7C 00 02 14 */	add r0, r0, r0
/* 8036C874  7C 84 2A 14 */	add r4, r4, r5
/* 8036C878  7C A5 22 14 */	add r5, r5, r4
lbl_8036C87C:
/* 8036C87C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8036C880  7C 00 02 14 */	add r0, r0, r0
/* 8036C884  7C 84 2A 14 */	add r4, r4, r5
/* 8036C888  39 20 00 00 */	li r9, 0
/* 8036C88C  7C A5 22 14 */	add r5, r5, r4
/* 8036C890  39 60 00 00 */	li r11, 0
/* 8036C894  39 40 00 00 */	li r10, 0
/* 8036C898  39 80 00 00 */	li r12, 0
/* 8036C89C  3C C0 00 20 */	lis r6, 0x20
/* 8036C8A0  48 00 00 30 */	b lbl_8036C8D0
lbl_8036C8A4:
/* 8036C8A4  7C 8B 32 14 */	add r4, r11, r6
/* 8036C8A8  7C 04 28 00 */	cmpw r4, r5
/* 8036C8AC  41 81 00 10 */	bgt lbl_8036C8BC
/* 8036C8B0  7D 64 32 14 */	add r11, r4, r6
/* 8036C8B4  7C A4 28 50 */	subf r5, r4, r5
/* 8036C8B8  7D 8C 32 14 */	add r12, r12, r6
lbl_8036C8BC:
/* 8036C8BC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8036C8C0  7C 00 02 14 */	add r0, r0, r0
/* 8036C8C4  7C 84 2A 14 */	add r4, r4, r5
/* 8036C8C8  54 C6 F8 7E */	srwi r6, r6, 1
/* 8036C8CC  7C A5 22 14 */	add r5, r5, r4
lbl_8036C8D0:
/* 8036C8D0  28 06 00 00 */	cmplwi r6, 0
/* 8036C8D4  40 82 FF D0 */	bne lbl_8036C8A4
/* 8036C8D8  3C C0 80 00 */	lis r6, 0x8000
/* 8036C8DC  48 00 00 6C */	b lbl_8036C948
lbl_8036C8E0:
/* 8036C8E0  7C 0B 28 00 */	cmpw r11, r5
/* 8036C8E4  7D 67 5B 78 */	mr r7, r11
/* 8036C8E8  7D 09 32 14 */	add r8, r9, r6
/* 8036C8EC  41 80 00 10 */	blt lbl_8036C8FC
/* 8036C8F0  40 82 00 44 */	bne lbl_8036C934
/* 8036C8F4  7C 08 00 40 */	cmplw r8, r0
/* 8036C8F8  41 81 00 3C */	bgt lbl_8036C934
lbl_8036C8FC:
/* 8036C8FC  55 04 00 00 */	rlwinm r4, r8, 0, 0, 0
/* 8036C900  7D 28 32 14 */	add r9, r8, r6
/* 8036C904  3C 84 80 00 */	addis r4, r4, 0x8000
/* 8036C908  28 04 00 00 */	cmplwi r4, 0
/* 8036C90C  40 82 00 10 */	bne lbl_8036C91C
/* 8036C910  55 24 00 01 */	rlwinm. r4, r9, 0, 0, 0
/* 8036C914  40 82 00 08 */	bne lbl_8036C91C
/* 8036C918  39 6B 00 01 */	addi r11, r11, 1
lbl_8036C91C:
/* 8036C91C  7C 00 40 40 */	cmplw r0, r8
/* 8036C920  7C A7 28 50 */	subf r5, r7, r5
/* 8036C924  40 80 00 08 */	bge lbl_8036C92C
/* 8036C928  38 A5 FF FF */	addi r5, r5, -1
lbl_8036C92C:
/* 8036C92C  7C 08 00 50 */	subf r0, r8, r0
/* 8036C930  7D 4A 32 14 */	add r10, r10, r6
lbl_8036C934:
/* 8036C934  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8036C938  7C 00 02 14 */	add r0, r0, r0
/* 8036C93C  7C 84 2A 14 */	add r4, r4, r5
/* 8036C940  54 C6 F8 7E */	srwi r6, r6, 1
/* 8036C944  7C A5 22 14 */	add r5, r5, r4
lbl_8036C948:
/* 8036C948  28 06 00 00 */	cmplwi r6, 0
/* 8036C94C  40 82 FF 94 */	bne lbl_8036C8E0
/* 8036C950  7C A0 03 79 */	or. r0, r5, r0
/* 8036C954  41 82 00 30 */	beq lbl_8036C984
/* 8036C958  C8 02 D1 48 */	lfd f0, lit_164(r2)
/* 8036C95C  3C 0A 00 01 */	addis r0, r10, 1
/* 8036C960  28 00 FF FF */	cmplwi r0, 0xffff
/* 8036C964  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036C968  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8036C96C  40 82 00 10 */	bne lbl_8036C97C
/* 8036C970  39 40 00 00 */	li r10, 0
/* 8036C974  39 8C 00 01 */	addi r12, r12, 1
/* 8036C978  48 00 00 0C */	b lbl_8036C984
lbl_8036C97C:
/* 8036C97C  55 40 07 FE */	clrlwi r0, r10, 0x1f
/* 8036C980  7D 4A 02 14 */	add r10, r10, r0
lbl_8036C984:
/* 8036C984  55 80 07 FE */	clrlwi r0, r12, 0x1f
/* 8036C988  7D 84 0E 70 */	srawi r4, r12, 1
/* 8036C98C  2C 00 00 01 */	cmpwi r0, 1
/* 8036C990  55 45 F8 7E */	srwi r5, r10, 1
/* 8036C994  3C 84 3F E0 */	addis r4, r4, 0x3fe0
/* 8036C998  40 82 00 08 */	bne lbl_8036C9A0
/* 8036C99C  64 A5 80 00 */	oris r5, r5, 0x8000
lbl_8036C9A0:
/* 8036C9A0  38 03 FC 01 */	addi r0, r3, -1023
/* 8036C9A4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8036C9A8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8036C9AC  54 00 A0 16 */	slwi r0, r0, 0x14
/* 8036C9B0  7C 84 02 14 */	add r4, r4, r0
/* 8036C9B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8036C9B8  C8 21 00 10 */	lfd f1, 0x10(r1)
lbl_8036C9BC:
/* 8036C9BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8036C9C0  4E 80 00 20 */	blr 
