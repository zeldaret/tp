lbl_80A2790C:
/* 80A2790C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A27910  7C 08 02 A6 */	mflr r0
/* 80A27914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A27918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2791C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A27920  7C 7F 1B 78 */	mr r31, r3
/* 80A27924  3B C0 00 00 */	li r30, 0
/* 80A27928  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A2792C  54 00 10 3A */	slwi r0, r0, 2
/* 80A27930  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A27934  28 03 00 00 */	cmplwi r3, 0
/* 80A27938  41 82 00 10 */	beq lbl_80A27948
/* 80A2793C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A27940  54 00 10 3A */	slwi r0, r0, 2
/* 80A27944  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A27948:
/* 80A27948  28 1E 00 00 */	cmplwi r30, 0
/* 80A2794C  41 82 01 18 */	beq lbl_80A27A64
/* 80A27950  A8 1F 09 DC */	lha r0, 0x9dc(r31)
/* 80A27954  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80A27958  7C 00 18 00 */	cmpw r0, r3
/* 80A2795C  40 82 00 74 */	bne lbl_80A279D0
/* 80A27960  80 BE 00 08 */	lwz r5, 8(r30)
/* 80A27964  2C 05 00 00 */	cmpwi r5, 0
/* 80A27968  40 81 00 34 */	ble lbl_80A2799C
/* 80A2796C  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A27970  7C 05 00 00 */	cmpw r5, r0
/* 80A27974  41 81 00 28 */	bgt lbl_80A2799C
/* 80A27978  38 03 00 01 */	addi r0, r3, 1
/* 80A2797C  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A27980  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A27984  54 00 10 3A */	slwi r0, r0, 2
/* 80A27988  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A2798C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A27990  54 00 10 3A */	slwi r0, r0, 2
/* 80A27994  7F C3 00 2E */	lwzx r30, r3, r0
/* 80A27998  48 00 00 38 */	b lbl_80A279D0
lbl_80A2799C:
/* 80A2799C  2C 05 00 00 */	cmpwi r5, 0
/* 80A279A0  40 82 00 30 */	bne lbl_80A279D0
/* 80A279A4  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A279A8  28 00 00 01 */	cmplwi r0, 1
/* 80A279AC  41 80 00 24 */	blt lbl_80A279D0
/* 80A279B0  38 00 00 00 */	li r0, 0
/* 80A279B4  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A279B8  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A279BC  54 00 10 3A */	slwi r0, r0, 2
/* 80A279C0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A279C4  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A279C8  54 00 10 3A */	slwi r0, r0, 2
/* 80A279CC  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A279D0:
/* 80A279D0  28 1E 00 00 */	cmplwi r30, 0
/* 80A279D4  41 82 00 90 */	beq lbl_80A27A64
/* 80A279D8  A8 7F 09 DC */	lha r3, 0x9dc(r31)
/* 80A279DC  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A279E0  7C 03 00 00 */	cmpw r3, r0
/* 80A279E4  41 82 00 80 */	beq lbl_80A27A64
/* 80A279E8  7F E3 FB 78 */	mr r3, r31
/* 80A279EC  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80A279F0  3C A0 80 A3 */	lis r5, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A279F4  C0 25 A0 F0 */	lfs f1, lit_4449@l(r5)  /* 0x80A2A0F0@l */
/* 80A279F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A279FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A27A00  7D 89 03 A6 */	mtctr r12
/* 80A27A04  4E 80 04 21 */	bctrl 
/* 80A27A08  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A27A0C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A27A10  2C 00 00 00 */	cmpwi r0, 0
/* 80A27A14  40 82 00 3C */	bne lbl_80A27A50
/* 80A27A18  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A27A1C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A27A20  40 82 00 14 */	bne lbl_80A27A34
/* 80A27A24  3C 60 80 A3 */	lis r3, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A27A28  38 63 A0 4C */	addi r3, r3, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A27A2C  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80A27A30  48 00 00 20 */	b lbl_80A27A50
lbl_80A27A34:
/* 80A27A34  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A27A38  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A27A3C  C0 5F 09 7C */	lfs f2, 0x97c(r31)
/* 80A27A40  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A27A44  4C 40 13 82 */	cror 2, 0, 2
/* 80A27A48  40 82 00 08 */	bne lbl_80A27A50
/* 80A27A4C  FC 20 10 90 */	fmr f1, f2
lbl_80A27A50:
/* 80A27A50  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A27A54  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A27A58  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80A27A5C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A27A60  4B 5E 81 1D */	bl setMorf__13mDoExt_morf_cFf
lbl_80A27A64:
/* 80A27A64  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A27A68  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80A27A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A27A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A27A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A27A78  7C 08 03 A6 */	mtlr r0
/* 80A27A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A27A80  4E 80 00 20 */	blr 
