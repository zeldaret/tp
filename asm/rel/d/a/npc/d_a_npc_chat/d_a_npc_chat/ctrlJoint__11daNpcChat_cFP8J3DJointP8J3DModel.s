lbl_80982780:
/* 80982780  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80982784  7C 08 02 A6 */	mflr r0
/* 80982788  90 01 00 64 */	stw r0, 0x64(r1)
/* 8098278C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80982790  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80982794  7C BE 2B 78 */	mr r30, r5
/* 80982798  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8098279C  88 03 0E 10 */	lbz r0, 0xe10(r3)
/* 809827A0  3C 80 80 98 */	lis r4, lit_4766@ha
/* 809827A4  C0 24 6F 24 */	lfs f1, lit_4766@l(r4)
/* 809827A8  2C 00 00 10 */	cmpwi r0, 0x10
/* 809827AC  40 80 00 24 */	bge lbl_809827D0
/* 809827B0  3C 80 80 99 */	lis r4, a_jntTbl_M@ha
/* 809827B4  38 A4 81 14 */	addi r5, r4, a_jntTbl_M@l
/* 809827B8  1C 80 01 7C */	mulli r4, r0, 0x17c
/* 809827BC  7C A5 22 14 */	add r5, r5, r4
/* 809827C0  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 809827C4  7C 85 22 14 */	add r4, r5, r4
/* 809827C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 809827CC  48 00 00 20 */	b lbl_809827EC
lbl_809827D0:
/* 809827D0  3C 80 80 99 */	lis r4, a_jntTbl_W@ha
/* 809827D4  38 A4 9C D4 */	addi r5, r4, a_jntTbl_W@l
/* 809827D8  1C 80 01 A4 */	mulli r4, r0, 0x1a4
/* 809827DC  7C A5 22 14 */	add r5, r5, r4
/* 809827E0  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 809827E4  7C 85 22 14 */	add r4, r5, r4
/* 809827E8  C0 04 E5 C8 */	lfs f0, -0x1a38(r4)
lbl_809827EC:
/* 809827EC  EC 41 00 32 */	fmuls f2, f1, f0
/* 809827F0  3C 80 80 98 */	lis r4, lit_4766@ha
/* 809827F4  C0 24 6F 24 */	lfs f1, lit_4766@l(r4)
/* 809827F8  2C 00 00 10 */	cmpwi r0, 0x10
/* 809827FC  40 80 00 24 */	bge lbl_80982820
/* 80982800  3C 80 80 99 */	lis r4, a_jntTbl_M@ha
/* 80982804  38 A4 81 14 */	addi r5, r4, a_jntTbl_M@l
/* 80982808  1C 80 01 7C */	mulli r4, r0, 0x17c
/* 8098280C  7C A5 22 14 */	add r5, r5, r4
/* 80982810  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 80982814  7C 85 22 14 */	add r4, r5, r4
/* 80982818  C0 04 00 04 */	lfs f0, 4(r4)
/* 8098281C  48 00 00 20 */	b lbl_8098283C
lbl_80982820:
/* 80982820  3C 80 80 99 */	lis r4, a_jntTbl_W@ha
/* 80982824  38 A4 9C D4 */	addi r5, r4, a_jntTbl_W@l
/* 80982828  1C 80 01 A4 */	mulli r4, r0, 0x1a4
/* 8098282C  7C A5 22 14 */	add r5, r5, r4
/* 80982830  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 80982834  7C 85 22 14 */	add r4, r5, r4
/* 80982838  C0 04 E5 C4 */	lfs f0, -0x1a3c(r4)
lbl_8098283C:
/* 8098283C  EC 61 00 32 */	fmuls f3, f1, f0
/* 80982840  3C 80 80 98 */	lis r4, lit_4766@ha
/* 80982844  C0 24 6F 24 */	lfs f1, lit_4766@l(r4)
/* 80982848  2C 00 00 10 */	cmpwi r0, 0x10
/* 8098284C  40 80 00 20 */	bge lbl_8098286C
/* 80982850  1C A0 01 7C */	mulli r5, r0, 0x17c
/* 80982854  3C 80 80 99 */	lis r4, a_jntTbl_M@ha
/* 80982858  38 04 81 14 */	addi r0, r4, a_jntTbl_M@l
/* 8098285C  7C 80 2A 14 */	add r4, r0, r5
/* 80982860  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 80982864  7C 04 04 2E */	lfsx f0, r4, r0
/* 80982868  48 00 00 20 */	b lbl_80982888
lbl_8098286C:
/* 8098286C  3C 80 80 99 */	lis r4, a_jntTbl_W@ha
/* 80982870  38 84 9C D4 */	addi r4, r4, a_jntTbl_W@l
/* 80982874  1C 00 01 A4 */	mulli r0, r0, 0x1a4
/* 80982878  7C 84 02 14 */	add r4, r4, r0
/* 8098287C  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 80982880  7C 84 02 14 */	add r4, r4, r0
/* 80982884  C0 04 E5 C0 */	lfs f0, -0x1a40(r4)
lbl_80982888:
/* 80982888  EC 01 00 32 */	fmuls f0, f1, f0
/* 8098288C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80982890  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80982894  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80982898  88 03 0E 10 */	lbz r0, 0xe10(r3)
/* 8098289C  3C 60 80 98 */	lis r3, lit_5146@ha
/* 809828A0  C0 43 6F 5C */	lfs f2, lit_5146@l(r3)
/* 809828A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 809828A8  40 80 00 24 */	bge lbl_809828CC
/* 809828AC  3C 60 80 99 */	lis r3, a_jntTbl_M@ha
/* 809828B0  38 83 81 14 */	addi r4, r3, a_jntTbl_M@l
/* 809828B4  1C 60 01 7C */	mulli r3, r0, 0x17c
/* 809828B8  7C 84 1A 14 */	add r4, r4, r3
/* 809828BC  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 809828C0  7C 64 1A 14 */	add r3, r4, r3
/* 809828C4  A8 63 00 10 */	lha r3, 0x10(r3)
/* 809828C8  48 00 00 20 */	b lbl_809828E8
lbl_809828CC:
/* 809828CC  3C 60 80 99 */	lis r3, a_jntTbl_W@ha
/* 809828D0  38 83 9C D4 */	addi r4, r3, a_jntTbl_W@l
/* 809828D4  1C 60 01 A4 */	mulli r3, r0, 0x1a4
/* 809828D8  7C 84 1A 14 */	add r4, r4, r3
/* 809828DC  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 809828E0  7C 64 1A 14 */	add r3, r4, r3
/* 809828E4  A8 63 E5 D0 */	lha r3, -0x1a30(r3)
lbl_809828E8:
/* 809828E8  7C 64 07 34 */	extsh r4, r3
/* 809828EC  3C 60 80 98 */	lis r3, lit_4768@ha
/* 809828F0  C8 23 6F 2C */	lfd f1, lit_4768@l(r3)
/* 809828F4  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 809828F8  90 61 00 24 */	stw r3, 0x24(r1)
/* 809828FC  3C 60 43 30 */	lis r3, 0x4330
/* 80982900  90 61 00 20 */	stw r3, 0x20(r1)
/* 80982904  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80982908  EC 00 08 28 */	fsubs f0, f0, f1
/* 8098290C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80982910  FC 00 00 1E */	fctiwz f0, f0
/* 80982914  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80982918  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 8098291C  3C 60 80 98 */	lis r3, lit_5146@ha
/* 80982920  C0 43 6F 5C */	lfs f2, lit_5146@l(r3)
/* 80982924  2C 00 00 10 */	cmpwi r0, 0x10
/* 80982928  40 80 00 24 */	bge lbl_8098294C
/* 8098292C  3C 60 80 99 */	lis r3, a_jntTbl_M@ha
/* 80982930  38 83 81 14 */	addi r4, r3, a_jntTbl_M@l
/* 80982934  1C 60 01 7C */	mulli r3, r0, 0x17c
/* 80982938  7C 84 1A 14 */	add r4, r4, r3
/* 8098293C  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 80982940  7C 64 1A 14 */	add r3, r4, r3
/* 80982944  A8 63 00 0E */	lha r3, 0xe(r3)
/* 80982948  48 00 00 20 */	b lbl_80982968
lbl_8098294C:
/* 8098294C  3C 60 80 99 */	lis r3, a_jntTbl_W@ha
/* 80982950  38 83 9C D4 */	addi r4, r3, a_jntTbl_W@l
/* 80982954  1C 60 01 A4 */	mulli r3, r0, 0x1a4
/* 80982958  7C 84 1A 14 */	add r4, r4, r3
/* 8098295C  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 80982960  7C 64 1A 14 */	add r3, r4, r3
/* 80982964  A8 63 E5 CE */	lha r3, -0x1a32(r3)
lbl_80982968:
/* 80982968  7C 64 07 34 */	extsh r4, r3
/* 8098296C  3C 60 80 98 */	lis r3, lit_4768@ha
/* 80982970  C8 23 6F 2C */	lfd f1, lit_4768@l(r3)
/* 80982974  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80982978  90 61 00 34 */	stw r3, 0x34(r1)
/* 8098297C  3C 60 43 30 */	lis r3, 0x4330
/* 80982980  90 61 00 30 */	stw r3, 0x30(r1)
/* 80982984  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80982988  EC 00 08 28 */	fsubs f0, f0, f1
/* 8098298C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80982990  FC 00 00 1E */	fctiwz f0, f0
/* 80982994  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80982998  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8098299C  3C 60 80 98 */	lis r3, lit_5146@ha
/* 809829A0  C0 43 6F 5C */	lfs f2, lit_5146@l(r3)
/* 809829A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 809829A8  40 80 00 24 */	bge lbl_809829CC
/* 809829AC  3C 60 80 99 */	lis r3, a_jntTbl_M@ha
/* 809829B0  38 63 81 14 */	addi r3, r3, a_jntTbl_M@l
/* 809829B4  1C 00 01 7C */	mulli r0, r0, 0x17c
/* 809829B8  7C 63 02 14 */	add r3, r3, r0
/* 809829BC  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 809829C0  7C 63 02 14 */	add r3, r3, r0
/* 809829C4  A8 03 00 0C */	lha r0, 0xc(r3)
/* 809829C8  48 00 00 20 */	b lbl_809829E8
lbl_809829CC:
/* 809829CC  3C 60 80 99 */	lis r3, a_jntTbl_W@ha
/* 809829D0  38 63 9C D4 */	addi r3, r3, a_jntTbl_W@l
/* 809829D4  1C 00 01 A4 */	mulli r0, r0, 0x1a4
/* 809829D8  7C 63 02 14 */	add r3, r3, r0
/* 809829DC  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 809829E0  7C 63 02 14 */	add r3, r3, r0
/* 809829E4  A8 03 E5 CC */	lha r0, -0x1a34(r3)
lbl_809829E8:
/* 809829E8  7C 00 07 34 */	extsh r0, r0
/* 809829EC  3C 60 80 98 */	lis r3, lit_4768@ha
/* 809829F0  C8 23 6F 2C */	lfd f1, lit_4768@l(r3)
/* 809829F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809829F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809829FC  3C 00 43 30 */	lis r0, 0x4330
/* 80982A00  90 01 00 40 */	stw r0, 0x40(r1)
/* 80982A04  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80982A08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80982A0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80982A10  FC 00 00 1E */	fctiwz f0, f0
/* 80982A14  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80982A18  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80982A1C  38 61 00 08 */	addi r3, r1, 8
/* 80982A20  4B 8E 49 D4 */	b __ct__5csXyzFsss
/* 80982A24  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80982A28  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80982A2C  1F FF 00 30 */	mulli r31, r31, 0x30
/* 80982A30  7C 60 FA 14 */	add r3, r0, r31
/* 80982A34  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80982A38  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80982A3C  4B 9C 3A 74 */	b PSMTXCopy
/* 80982A40  38 61 00 08 */	addi r3, r1, 8
/* 80982A44  4B 68 A5 00 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80982A48  38 61 00 10 */	addi r3, r1, 0x10
/* 80982A4C  4B 68 A3 88 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80982A50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80982A54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80982A58  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80982A5C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80982A60  7C 80 FA 14 */	add r4, r0, r31
/* 80982A64  4B 9C 3A 4C */	b PSMTXCopy
/* 80982A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80982A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80982A70  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80982A74  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80982A78  4B 9C 3A 38 */	b PSMTXCopy
/* 80982A7C  38 60 00 01 */	li r3, 1
/* 80982A80  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80982A84  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80982A88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80982A8C  7C 08 03 A6 */	mtlr r0
/* 80982A90  38 21 00 60 */	addi r1, r1, 0x60
/* 80982A94  4E 80 00 20 */	blr 
