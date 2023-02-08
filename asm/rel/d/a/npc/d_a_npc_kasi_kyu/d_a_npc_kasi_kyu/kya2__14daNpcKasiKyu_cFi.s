lbl_80A24590:
/* 80A24590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24594  7C 08 02 A6 */	mflr r0
/* 80A24598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2459C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A245A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A245A4  7C 7E 1B 78 */	mr r30, r3
/* 80A245A8  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A245AC  3B E4 58 B8 */	addi r31, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A245B0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A245B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A245B8  41 82 00 10 */	beq lbl_80A245C8
/* 80A245BC  40 80 00 50 */	bge lbl_80A2460C
/* 80A245C0  48 00 00 4C */	b lbl_80A2460C
/* 80A245C4  48 00 00 48 */	b lbl_80A2460C
lbl_80A245C8:
/* 80A245C8  38 80 00 00 */	li r4, 0
/* 80A245CC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A245D0  38 A0 00 00 */	li r5, 0
/* 80A245D4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A245D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A245DC  7D 89 03 A6 */	mtctr r12
/* 80A245E0  4E 80 04 21 */	bctrl 
/* 80A245E4  7F C3 F3 78 */	mr r3, r30
/* 80A245E8  38 80 00 00 */	li r4, 0
/* 80A245EC  4B FF ED 41 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A245F0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A245F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A245F8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A245FC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A24600  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A24604  38 00 00 01 */	li r0, 1
/* 80A24608  B0 1E 14 04 */	sth r0, 0x1404(r30)
lbl_80A2460C:
/* 80A2460C  38 60 00 01 */	li r3, 1
/* 80A24610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24614  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A24618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2461C  7C 08 03 A6 */	mtlr r0
/* 80A24620  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24624  4E 80 00 20 */	blr 
