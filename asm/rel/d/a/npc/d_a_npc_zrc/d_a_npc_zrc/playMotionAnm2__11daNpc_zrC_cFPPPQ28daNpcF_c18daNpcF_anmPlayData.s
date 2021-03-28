lbl_80B90940:
/* 80B90940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B90944  7C 08 02 A6 */	mflr r0
/* 80B90948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9094C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B90950  93 C1 00 08 */	stw r30, 8(r1)
/* 80B90954  7C 7F 1B 78 */	mr r31, r3
/* 80B90958  3B C0 00 00 */	li r30, 0
/* 80B9095C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B90960  54 00 10 3A */	slwi r0, r0, 2
/* 80B90964  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B90968  28 03 00 00 */	cmplwi r3, 0
/* 80B9096C  41 82 00 10 */	beq lbl_80B9097C
/* 80B90970  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B90974  54 00 10 3A */	slwi r0, r0, 2
/* 80B90978  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80B9097C:
/* 80B9097C  28 1E 00 00 */	cmplwi r30, 0
/* 80B90980  41 82 00 CC */	beq lbl_80B90A4C
/* 80B90984  A8 1F 09 DC */	lha r0, 0x9dc(r31)
/* 80B90988  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80B9098C  7C 00 18 00 */	cmpw r0, r3
/* 80B90990  40 82 00 3C */	bne lbl_80B909CC
/* 80B90994  80 BE 00 08 */	lwz r5, 8(r30)
/* 80B90998  2C 05 00 00 */	cmpwi r5, 0
/* 80B9099C  40 81 00 30 */	ble lbl_80B909CC
/* 80B909A0  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80B909A4  7C 05 00 00 */	cmpw r5, r0
/* 80B909A8  41 81 00 24 */	bgt lbl_80B909CC
/* 80B909AC  38 03 00 01 */	addi r0, r3, 1
/* 80B909B0  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80B909B4  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80B909B8  54 00 10 3A */	slwi r0, r0, 2
/* 80B909BC  7C 64 00 2E */	lwzx r3, r4, r0
/* 80B909C0  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B909C4  54 00 10 3A */	slwi r0, r0, 2
/* 80B909C8  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80B909CC:
/* 80B909CC  28 1E 00 00 */	cmplwi r30, 0
/* 80B909D0  41 82 00 7C */	beq lbl_80B90A4C
/* 80B909D4  A8 7F 09 DC */	lha r3, 0x9dc(r31)
/* 80B909D8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B909DC  7C 03 00 00 */	cmpw r3, r0
/* 80B909E0  41 82 00 6C */	beq lbl_80B90A4C
/* 80B909E4  7F E3 FB 78 */	mr r3, r31
/* 80B909E8  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80B909EC  3C A0 80 B9 */	lis r5, lit_4484@ha
/* 80B909F0  C0 25 32 98 */	lfs f1, lit_4484@l(r5)
/* 80B909F4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B909F8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B909FC  7D 89 03 A6 */	mtctr r12
/* 80B90A00  4E 80 04 21 */	bctrl 
/* 80B90A04  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80B90A08  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B90A0C  2C 00 00 00 */	cmpwi r0, 0
/* 80B90A10  40 82 00 20 */	bne lbl_80B90A30
/* 80B90A14  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B90A18  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B90A1C  C0 5F 09 7C */	lfs f2, 0x97c(r31)
/* 80B90A20  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80B90A24  4C 40 13 82 */	cror 2, 0, 2
/* 80B90A28  40 82 00 08 */	bne lbl_80B90A30
/* 80B90A2C  FC 20 10 90 */	fmr f1, f2
lbl_80B90A30:
/* 80B90A30  3C 60 80 B9 */	lis r3, lit_4484@ha
/* 80B90A34  C0 03 32 98 */	lfs f0, lit_4484@l(r3)
/* 80B90A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B90A3C  40 81 00 10 */	ble lbl_80B90A4C
/* 80B90A40  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80B90A44  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B90A48  4B 47 F1 34 */	b setMorf__13mDoExt_morf_cFf
lbl_80B90A4C:
/* 80B90A4C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80B90A50  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80B90A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B90A58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B90A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B90A60  7C 08 03 A6 */	mtlr r0
/* 80B90A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80B90A68  4E 80 00 20 */	blr 
