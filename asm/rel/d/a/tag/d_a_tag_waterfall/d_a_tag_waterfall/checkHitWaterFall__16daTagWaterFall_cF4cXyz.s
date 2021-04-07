lbl_80D64768:
/* 80D64768  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D6476C  7C 08 02 A6 */	mflr r0
/* 80D64770  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D64774  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D64778  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D6477C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D64780  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D64784  7C 7E 1B 78 */	mr r30, r3
/* 80D64788  7C 9F 23 78 */	mr r31, r4
/* 80D6478C  C3 E3 05 68 */	lfs f31, 0x568(r3)
/* 80D64790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D64794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D64798  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80D6479C  7C 00 00 D0 */	neg r0, r0
/* 80D647A0  7C 04 07 34 */	extsh r4, r0
/* 80D647A4  4B 2A 7C 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D647A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D647AC  FC 20 00 50 */	fneg f1, f0
/* 80D647B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D647B4  FC 40 00 50 */	fneg f2, f0
/* 80D647B8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D647BC  FC 60 00 50 */	fneg f3, f0
/* 80D647C0  4B 2A 85 DD */	bl transM__14mDoMtx_stack_cFfff
/* 80D647C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D647C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D647CC  7F E4 FB 78 */	mr r4, r31
/* 80D647D0  38 A1 00 08 */	addi r5, r1, 8
/* 80D647D4  4B 5E 25 99 */	bl PSMTXMultVec
/* 80D647D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80D647DC  FC 00 0A 10 */	fabs f0, f1
/* 80D647E0  FC 00 00 18 */	frsp f0, f0
/* 80D647E4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80D647E8  40 80 00 60 */	bge lbl_80D64848
/* 80D647EC  7F C3 F3 78 */	mr r3, r30
/* 80D647F0  4B FF FF 35 */	bl getEllipseY__16daTagWaterFall_cFf
/* 80D647F4  FC 00 0A 10 */	fabs f0, f1
/* 80D647F8  FC 20 00 18 */	frsp f1, f0
/* 80D647FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D64800  FC 00 02 10 */	fabs f0, f0
/* 80D64804  FC 00 00 18 */	frsp f0, f0
/* 80D64808  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D6480C  40 80 00 3C */	bge lbl_80D64848
/* 80D64810  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D64814  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D64818  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80D6481C  40 80 00 2C */	bge lbl_80D64848
/* 80D64820  C0 3E 05 70 */	lfs f1, 0x570(r30)
/* 80D64824  3C 60 80 D6 */	lis r3, lit_3758@ha /* 0x80D64D74@ha */
/* 80D64828  C0 03 4D 74 */	lfs f0, lit_3758@l(r3)  /* 0x80D64D74@l */
/* 80D6482C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D64830  41 82 00 10 */	beq lbl_80D64840
/* 80D64834  EC 02 08 2A */	fadds f0, f2, f1
/* 80D64838  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80D6483C  40 81 00 0C */	ble lbl_80D64848
lbl_80D64840:
/* 80D64840  38 60 00 01 */	li r3, 1
/* 80D64844  48 00 00 08 */	b lbl_80D6484C
lbl_80D64848:
/* 80D64848  38 60 00 00 */	li r3, 0
lbl_80D6484C:
/* 80D6484C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D64850  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D64854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D64858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D6485C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D64860  7C 08 03 A6 */	mtlr r0
/* 80D64864  38 21 00 30 */	addi r1, r1, 0x30
/* 80D64868  4E 80 00 20 */	blr 
