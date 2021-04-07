lbl_80A24628:
/* 80A24628  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2462C  7C 08 02 A6 */	mflr r0
/* 80A24630  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24634  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A24638  2C 00 00 00 */	cmpwi r0, 0
/* 80A2463C  41 82 00 18 */	beq lbl_80A24654
/* 80A24640  40 80 00 08 */	bge lbl_80A24648
/* 80A24644  48 00 00 A4 */	b lbl_80A246E8
lbl_80A24648:
/* 80A24648  2C 00 00 02 */	cmpwi r0, 2
/* 80A2464C  40 80 00 9C */	bge lbl_80A246E8
/* 80A24650  48 00 00 48 */	b lbl_80A24698
lbl_80A24654:
/* 80A24654  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A24658  2C 00 00 00 */	cmpwi r0, 0
/* 80A2465C  41 82 00 30 */	beq lbl_80A2468C
/* 80A24660  3C 80 80 A2 */	lis r4, lit_5201@ha /* 0x80A25EA0@ha */
/* 80A24664  38 A4 5E A0 */	addi r5, r4, lit_5201@l /* 0x80A25EA0@l */
/* 80A24668  80 85 00 00 */	lwz r4, 0(r5)
/* 80A2466C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A24670  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A24674  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A24678  80 05 00 08 */	lwz r0, 8(r5)
/* 80A2467C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A24680  38 81 00 14 */	addi r4, r1, 0x14
/* 80A24684  4B FF EC 01 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
/* 80A24688  48 00 00 60 */	b lbl_80A246E8
lbl_80A2468C:
/* 80A2468C  38 00 00 01 */	li r0, 1
/* 80A24690  B0 03 14 04 */	sth r0, 0x1404(r3)
/* 80A24694  48 00 00 54 */	b lbl_80A246E8
lbl_80A24698:
/* 80A24698  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80A2469C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A246A0  3C 80 80 A2 */	lis r4, lit_5219@ha /* 0x80A25AFC@ha */
/* 80A246A4  C0 04 5A FC */	lfs f0, lit_5219@l(r4)  /* 0x80A25AFC@l */
/* 80A246A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A246AC  41 82 00 14 */	beq lbl_80A246C0
/* 80A246B0  3C 80 80 A2 */	lis r4, lit_4247@ha /* 0x80A2593C@ha */
/* 80A246B4  C0 04 59 3C */	lfs f0, lit_4247@l(r4)  /* 0x80A2593C@l */
/* 80A246B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A246BC  40 82 00 2C */	bne lbl_80A246E8
lbl_80A246C0:
/* 80A246C0  3C 80 80 A2 */	lis r4, lit_5209@ha /* 0x80A25EAC@ha */
/* 80A246C4  38 A4 5E AC */	addi r5, r4, lit_5209@l /* 0x80A25EAC@l */
/* 80A246C8  80 85 00 00 */	lwz r4, 0(r5)
/* 80A246CC  80 05 00 04 */	lwz r0, 4(r5)
/* 80A246D0  90 81 00 08 */	stw r4, 8(r1)
/* 80A246D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A246D8  80 05 00 08 */	lwz r0, 8(r5)
/* 80A246DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A246E0  38 81 00 08 */	addi r4, r1, 8
/* 80A246E4  4B FF EB A1 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A246E8:
/* 80A246E8  38 60 00 01 */	li r3, 1
/* 80A246EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A246F0  7C 08 03 A6 */	mtlr r0
/* 80A246F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A246F8  4E 80 00 20 */	blr 
