lbl_80C34824:
/* 80C34824  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C34828  7C 08 02 A6 */	mflr r0
/* 80C3482C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C34830  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C34834  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80C34838  7C 7E 1B 78 */	mr r30, r3
/* 80C3483C  3C 60 80 C3 */	lis r3, lit_3806@ha
/* 80C34840  3B E3 4E EC */	addi r31, r3, lit_3806@l
/* 80C34844  A8 7E 05 A8 */	lha r3, 0x5a8(r30)
/* 80C34848  38 03 FF FF */	addi r0, r3, -1
/* 80C3484C  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
/* 80C34850  A8 1E 05 A8 */	lha r0, 0x5a8(r30)
/* 80C34854  2C 00 00 00 */	cmpwi r0, 0
/* 80C34858  41 81 00 0C */	bgt lbl_80C34864
/* 80C3485C  38 00 00 00 */	li r0, 0
/* 80C34860  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
lbl_80C34864:
/* 80C34864  7F C3 F3 78 */	mr r3, r30
/* 80C34868  4B FF FB D1 */	bl ObjHit__13daObjKaisou_cFv
/* 80C3486C  A8 7E 05 7C */	lha r3, 0x57c(r30)
/* 80C34870  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80C34874  7C 03 02 14 */	add r0, r3, r0
/* 80C34878  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C3487C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80C34880  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80C34884  C8 5F 00 08 */	lfd f2, 8(r31)
/* 80C34888  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C3488C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C34890  3C 80 43 30 */	lis r4, 0x4330
/* 80C34894  90 81 00 08 */	stw r4, 8(r1)
/* 80C34898  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C3489C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C348A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C348A4  FC 00 00 1E */	fctiwz f0, f0
/* 80C348A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C348AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C348B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C348B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C348B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C348BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C348C0  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80C348C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C348C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C348CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C348D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C348D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C348D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C348DC  FC 00 00 1E */	fctiwz f0, f0
/* 80C348E0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C348E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C348E8  B0 1E 05 6E */	sth r0, 0x56e(r30)
/* 80C348EC  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80C348F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C348F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C348F8  90 81 00 28 */	stw r4, 0x28(r1)
/* 80C348FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C34900  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C34904  EC 23 00 32 */	fmuls f1, f3, f0
/* 80C34908  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C3490C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C34910  FC 00 00 1E */	fctiwz f0, f0
/* 80C34914  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C34918  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3491C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C34920  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C34924  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 80C34928  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80C3492C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C34930  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C34934  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C34938  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C3493C  FC 00 10 28 */	fsub f0, f0, f2
/* 80C34940  FC 01 00 32 */	fmul f0, f1, f0
/* 80C34944  FC 00 01 32 */	fmul f0, f0, f4
/* 80C34948  FC 00 00 1E */	fctiwz f0, f0
/* 80C3494C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C34950  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C34954  B0 1E 05 70 */	sth r0, 0x570(r30)
/* 80C34958  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80C3495C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C34960  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C34964  90 81 00 48 */	stw r4, 0x48(r1)
/* 80C34968  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C3496C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C34970  EC 23 00 32 */	fmuls f1, f3, f0
/* 80C34974  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C34978  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C3497C  FC 00 00 1E */	fctiwz f0, f0
/* 80C34980  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80C34984  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C34988  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3498C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C34990  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C34994  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 80C34998  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C3499C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C349A0  90 81 00 58 */	stw r4, 0x58(r1)
/* 80C349A4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C349A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C349AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C349B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C349B4  FC 00 00 1E */	fctiwz f0, f0
/* 80C349B8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C349BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C349C0  B0 1E 05 72 */	sth r0, 0x572(r30)
/* 80C349C4  38 7E 05 7E */	addi r3, r30, 0x57e
/* 80C349C8  A8 9E 05 80 */	lha r4, 0x580(r30)
/* 80C349CC  38 A0 00 15 */	li r5, 0x15
/* 80C349D0  38 C0 10 00 */	li r6, 0x1000
/* 80C349D4  38 E0 00 00 */	li r7, 0
/* 80C349D8  4B 63 BB 68 */	b cLib_addCalcAngleS__FPsssss
/* 80C349DC  38 7E 05 80 */	addi r3, r30, 0x580
/* 80C349E0  38 80 00 80 */	li r4, 0x80
/* 80C349E4  38 A0 00 15 */	li r5, 0x15
/* 80C349E8  38 C0 10 00 */	li r6, 0x1000
/* 80C349EC  38 E0 00 00 */	li r7, 0
/* 80C349F0  4B 63 BB 50 */	b cLib_addCalcAngleS__FPsssss
/* 80C349F4  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C349F8  A8 9E 05 76 */	lha r4, 0x576(r30)
/* 80C349FC  38 A0 00 15 */	li r5, 0x15
/* 80C34A00  38 C0 10 00 */	li r6, 0x1000
/* 80C34A04  38 E0 00 00 */	li r7, 0
/* 80C34A08  4B 63 BB 38 */	b cLib_addCalcAngleS__FPsssss
/* 80C34A0C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80C34A10  A8 9E 05 7A */	lha r4, 0x57a(r30)
/* 80C34A14  38 A0 00 15 */	li r5, 0x15
/* 80C34A18  38 C0 10 00 */	li r6, 0x1000
/* 80C34A1C  38 E0 00 00 */	li r7, 0
/* 80C34A20  4B 63 BB 20 */	b cLib_addCalcAngleS__FPsssss
/* 80C34A24  38 7E 05 7A */	addi r3, r30, 0x57a
/* 80C34A28  38 80 00 00 */	li r4, 0
/* 80C34A2C  38 A0 00 15 */	li r5, 0x15
/* 80C34A30  38 C0 10 00 */	li r6, 0x1000
/* 80C34A34  38 E0 00 00 */	li r7, 0
/* 80C34A38  4B 63 BB 08 */	b cLib_addCalcAngleS__FPsssss
/* 80C34A3C  38 7E 05 76 */	addi r3, r30, 0x576
/* 80C34A40  38 80 05 00 */	li r4, 0x500
/* 80C34A44  38 A0 00 20 */	li r5, 0x20
/* 80C34A48  38 C0 10 00 */	li r6, 0x1000
/* 80C34A4C  38 E0 00 00 */	li r7, 0
/* 80C34A50  4B 63 BA F0 */	b cLib_addCalcAngleS__FPsssss
/* 80C34A54  38 7E 05 82 */	addi r3, r30, 0x582
/* 80C34A58  38 80 10 00 */	li r4, 0x1000
/* 80C34A5C  38 A0 00 20 */	li r5, 0x20
/* 80C34A60  38 C0 10 00 */	li r6, 0x1000
/* 80C34A64  38 E0 00 00 */	li r7, 0
/* 80C34A68  4B 63 BA D8 */	b cLib_addCalcAngleS__FPsssss
/* 80C34A6C  7F C3 F3 78 */	mr r3, r30
/* 80C34A70  4B FF F9 81 */	bl setCcCylinder__13daObjKaisou_cFv
/* 80C34A74  7F C3 F3 78 */	mr r3, r30
/* 80C34A78  48 00 00 55 */	bl setBaseMtx__13daObjKaisou_cFv
/* 80C34A7C  38 60 00 01 */	li r3, 1
/* 80C34A80  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C34A84  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80C34A88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C34A8C  7C 08 03 A6 */	mtlr r0
/* 80C34A90  38 21 00 70 */	addi r1, r1, 0x70
/* 80C34A94  4E 80 00 20 */	blr 
