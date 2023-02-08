lbl_80A2493C:
/* 80A2493C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24940  7C 08 02 A6 */	mflr r0
/* 80A24944  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24948  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2494C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A24950  7C 7E 1B 78 */	mr r30, r3
/* 80A24954  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A24958  3B E4 58 B8 */	addi r31, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A2495C  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A24960  2C 00 00 01 */	cmpwi r0, 1
/* 80A24964  41 82 00 6C */	beq lbl_80A249D0
/* 80A24968  40 80 00 14 */	bge lbl_80A2497C
/* 80A2496C  2C 00 FF FF */	cmpwi r0, -1
/* 80A24970  41 82 00 C8 */	beq lbl_80A24A38
/* 80A24974  40 80 00 14 */	bge lbl_80A24988
/* 80A24978  48 00 00 C0 */	b lbl_80A24A38
lbl_80A2497C:
/* 80A2497C  2C 00 00 03 */	cmpwi r0, 3
/* 80A24980  40 80 00 B8 */	bge lbl_80A24A38
/* 80A24984  48 00 00 9C */	b lbl_80A24A20
lbl_80A24988:
/* 80A24988  38 80 00 08 */	li r4, 8
/* 80A2498C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A24990  38 A0 00 00 */	li r5, 0
/* 80A24994  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A24998  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A2499C  7D 89 03 A6 */	mtctr r12
/* 80A249A0  4E 80 04 21 */	bctrl 
/* 80A249A4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A249A8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A249AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A249B0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A249B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A249B8  38 7F 00 00 */	addi r3, r31, 0
/* 80A249BC  A8 03 00 6C */	lha r0, 0x6c(r3)
/* 80A249C0  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A249C4  38 00 00 01 */	li r0, 1
/* 80A249C8  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A249CC  48 00 00 6C */	b lbl_80A24A38
lbl_80A249D0:
/* 80A249D0  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A249D4  34 03 FF FF */	addic. r0, r3, -1
/* 80A249D8  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A249DC  41 81 00 5C */	bgt lbl_80A24A38
/* 80A249E0  38 7F 00 00 */	addi r3, r31, 0
/* 80A249E4  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80A249E8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A249EC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D2@ha */
/* 80A249F0  38 03 01 D2 */	addi r0, r3, 0x01D2 /* 0x000501D2@l */
/* 80A249F4  90 01 00 08 */	stw r0, 8(r1)
/* 80A249F8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A249FC  38 81 00 08 */	addi r4, r1, 8
/* 80A24A00  38 A0 FF FF */	li r5, -1
/* 80A24A04  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 80A24A08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A24A0C  7D 89 03 A6 */	mtctr r12
/* 80A24A10  4E 80 04 21 */	bctrl 
/* 80A24A14  38 00 00 02 */	li r0, 2
/* 80A24A18  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A24A1C  48 00 00 1C */	b lbl_80A24A38
lbl_80A24A20:
/* 80A24A20  38 9E 14 44 */	addi r4, r30, 0x1444
/* 80A24A24  38 A0 10 00 */	li r5, 0x1000
/* 80A24A28  48 00 02 E9 */	bl _turn_pos__14daNpcKasiKyu_cFRC4cXyzs
/* 80A24A2C  C0 1F 02 50 */	lfs f0, 0x250(r31)
/* 80A24A30  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A24A34  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A24A38:
/* 80A24A38  38 60 00 01 */	li r3, 1
/* 80A24A3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A24A40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A24A44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24A48  7C 08 03 A6 */	mtlr r0
/* 80A24A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A24A50  4E 80 00 20 */	blr 
