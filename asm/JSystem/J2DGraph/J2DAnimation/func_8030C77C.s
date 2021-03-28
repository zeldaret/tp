lbl_8030C77C:
/* 8030C77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030C780  A8 04 00 00 */	lha r0, 0(r4)
/* 8030C784  C8 42 C9 20 */	lfd f2, lit_2379(r2)
/* 8030C788  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C78C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C790  3C A0 43 30 */	lis r5, 0x4330
/* 8030C794  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C798  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C79C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030C7A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030C7A4  40 80 00 20 */	bge lbl_8030C7C4
/* 8030C7A8  A8 04 00 02 */	lha r0, 2(r4)
/* 8030C7AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C7B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C7B4  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C7B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C7BC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8030C7C0  48 00 01 E8 */	b lbl_8030C9A8
lbl_8030C7C4:
/* 8030C7C4  A0 03 00 04 */	lhz r0, 4(r3)
/* 8030C7C8  28 00 00 00 */	cmplwi r0, 0
/* 8030C7CC  40 82 00 F4 */	bne lbl_8030C8C0
/* 8030C7D0  A0 C3 00 00 */	lhz r6, 0(r3)
/* 8030C7D4  38 06 FF FF */	addi r0, r6, -1
/* 8030C7D8  1C 60 00 06 */	mulli r3, r0, 6
/* 8030C7DC  7C 04 1A AE */	lhax r0, r4, r3
/* 8030C7E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C7E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C7E8  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C7EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C7F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030C7F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030C7F8  4C 40 13 82 */	cror 2, 0, 2
/* 8030C7FC  40 82 00 68 */	bne lbl_8030C864
/* 8030C800  7C 64 1A 14 */	add r3, r4, r3
/* 8030C804  A8 03 00 02 */	lha r0, 2(r3)
/* 8030C808  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C80C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C810  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C814  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C818  EC 20 10 28 */	fsubs f1, f0, f2
/* 8030C81C  48 00 01 8C */	b lbl_8030C9A8
/* 8030C820  48 00 00 44 */	b lbl_8030C864
lbl_8030C824:
/* 8030C824  54 C7 F8 7E */	srwi r7, r6, 1
/* 8030C828  1C 07 00 03 */	mulli r0, r7, 3
/* 8030C82C  54 03 08 3C */	slwi r3, r0, 1
/* 8030C830  7C 04 1A AE */	lhax r0, r4, r3
/* 8030C834  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C838  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C83C  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C840  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C844  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030C848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030C84C  4C 41 13 82 */	cror 2, 1, 2
/* 8030C850  40 82 00 10 */	bne lbl_8030C860
/* 8030C854  7C 84 1A 14 */	add r4, r4, r3
/* 8030C858  7C C7 30 50 */	subf r6, r7, r6
/* 8030C85C  48 00 00 08 */	b lbl_8030C864
lbl_8030C860:
/* 8030C860  7C E6 3B 78 */	mr r6, r7
lbl_8030C864:
/* 8030C864  28 06 00 01 */	cmplwi r6, 1
/* 8030C868  41 81 FF BC */	bgt lbl_8030C824
/* 8030C86C  E0 44 D0 00 */	psq_l f2, 0(r4), 1, 5 /* qr5 */
/* 8030C870  E0 04 D0 06 */	psq_l f0, 6(r4), 1, 5 /* qr5 */
/* 8030C874  E0 E4 D0 02 */	psq_l f7, 2(r4), 1, 5 /* qr5 */
/* 8030C878  EC A0 10 28 */	fsubs f5, f0, f2
/* 8030C87C  E0 C4 D0 08 */	psq_l f6, 8(r4), 1, 5 /* qr5 */
/* 8030C880  EC 61 10 28 */	fsubs f3, f1, f2
/* 8030C884  E0 04 D0 0A */	psq_l f0, 10(r4), 1, 5 /* qr5 */
/* 8030C888  EC 86 38 28 */	fsubs f4, f6, f7
/* 8030C88C  EC 63 28 24 */	fdivs f3, f3, f5
/* 8030C890  E0 24 D0 04 */	psq_l f1, 4(r4), 1, 5 /* qr5 */
/* 8030C894  EC 00 39 7A */	fmadds f0, f0, f5, f7
/* 8030C898  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8030C89C  EC 85 20 7C */	fnmsubs f4, f5, f1, f4
/* 8030C8A0  EC 00 30 28 */	fsubs f0, f0, f6
/* 8030C8A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 8030C8A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030C8AC  EC 25 00 7A */	fmadds f1, f5, f1, f0
/* 8030C8B0  EC 21 38 FA */	fmadds f1, f1, f3, f7
/* 8030C8B4  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 8030C8B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8030C8BC  48 00 00 EC */	b lbl_8030C9A8
lbl_8030C8C0:
/* 8030C8C0  A0 C3 00 00 */	lhz r6, 0(r3)
/* 8030C8C4  38 06 FF FF */	addi r0, r6, -1
/* 8030C8C8  54 03 18 38 */	slwi r3, r0, 3
/* 8030C8CC  7C 04 1A AE */	lhax r0, r4, r3
/* 8030C8D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C8D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C8D8  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C8DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C8E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030C8E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8030C8E8  4C 40 13 82 */	cror 2, 0, 2
/* 8030C8EC  40 82 00 64 */	bne lbl_8030C950
/* 8030C8F0  7C 64 1A 14 */	add r3, r4, r3
/* 8030C8F4  A8 03 00 02 */	lha r0, 2(r3)
/* 8030C8F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C8FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C900  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C904  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C908  EC 20 10 28 */	fsubs f1, f0, f2
/* 8030C90C  48 00 00 9C */	b lbl_8030C9A8
/* 8030C910  48 00 00 40 */	b lbl_8030C950
lbl_8030C914:
/* 8030C914  54 C7 F8 7E */	srwi r7, r6, 1
/* 8030C918  54 C3 10 38 */	rlwinm r3, r6, 2, 0, 0x1c
/* 8030C91C  7C 04 1A AE */	lhax r0, r4, r3
/* 8030C920  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8030C924  90 01 00 0C */	stw r0, 0xc(r1)
/* 8030C928  90 A1 00 08 */	stw r5, 8(r1)
/* 8030C92C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8030C930  EC 00 10 28 */	fsubs f0, f0, f2
/* 8030C934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8030C938  4C 41 13 82 */	cror 2, 1, 2
/* 8030C93C  40 82 00 10 */	bne lbl_8030C94C
/* 8030C940  7C 84 1A 14 */	add r4, r4, r3
/* 8030C944  7C C7 30 50 */	subf r6, r7, r6
/* 8030C948  48 00 00 08 */	b lbl_8030C950
lbl_8030C94C:
/* 8030C94C  7C E6 3B 78 */	mr r6, r7
lbl_8030C950:
/* 8030C950  28 06 00 01 */	cmplwi r6, 1
/* 8030C954  41 81 FF C0 */	bgt lbl_8030C914
/* 8030C958  E0 44 D0 00 */	psq_l f2, 0(r4), 1, 5 /* qr5 */
/* 8030C95C  E0 04 D0 08 */	psq_l f0, 8(r4), 1, 5 /* qr5 */
/* 8030C960  E0 E4 D0 02 */	psq_l f7, 2(r4), 1, 5 /* qr5 */
/* 8030C964  EC A0 10 28 */	fsubs f5, f0, f2
/* 8030C968  E0 C4 D0 0A */	psq_l f6, 10(r4), 1, 5 /* qr5 */
/* 8030C96C  EC 61 10 28 */	fsubs f3, f1, f2
/* 8030C970  E0 04 D0 0C */	psq_l f0, 12(r4), 1, 5 /* qr5 */
/* 8030C974  EC 86 38 28 */	fsubs f4, f6, f7
/* 8030C978  EC 63 28 24 */	fdivs f3, f3, f5
/* 8030C97C  E0 24 D0 06 */	psq_l f1, 6(r4), 1, 5 /* qr5 */
/* 8030C980  EC 00 39 7A */	fmadds f0, f0, f5, f7
/* 8030C984  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8030C988  EC 85 20 7C */	fnmsubs f4, f5, f1, f4
/* 8030C98C  EC 00 30 28 */	fsubs f0, f0, f6
/* 8030C990  EC 00 20 28 */	fsubs f0, f0, f4
/* 8030C994  EC 02 00 32 */	fmuls f0, f2, f0
/* 8030C998  EC 25 00 7A */	fmadds f1, f5, f1, f0
/* 8030C99C  EC 21 38 FA */	fmadds f1, f1, f3, f7
/* 8030C9A0  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 8030C9A4  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8030C9A8:
/* 8030C9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030C9AC  4E 80 00 20 */	blr 
