lbl_80A289CC:
/* 80A289CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A289D0  7C 08 02 A6 */	mflr r0
/* 80A289D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A289D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A289DC  7C 7F 1B 78 */	mr r31, r3
/* 80A289E0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A289E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A289E8  41 82 00 18 */	beq lbl_80A28A00
/* 80A289EC  40 80 00 08 */	bge lbl_80A289F4
/* 80A289F0  48 00 00 84 */	b lbl_80A28A74
lbl_80A289F4:
/* 80A289F4  2C 00 00 02 */	cmpwi r0, 2
/* 80A289F8  40 80 00 7C */	bge lbl_80A28A74
/* 80A289FC  48 00 00 3C */	b lbl_80A28A38
lbl_80A28A00:
/* 80A28A00  38 80 00 04 */	li r4, 4
/* 80A28A04  3C A0 80 A3 */	lis r5, lit_4249@ha
/* 80A28A08  C0 25 A0 D8 */	lfs f1, lit_4249@l(r5)
/* 80A28A0C  38 A0 00 00 */	li r5, 0
/* 80A28A10  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A28A14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28A18  7D 89 03 A6 */	mtctr r12
/* 80A28A1C  4E 80 04 21 */	bctrl 
/* 80A28A20  3C 60 80 A3 */	lis r3, lit_4449@ha
/* 80A28A24  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)
/* 80A28A28  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A28A2C  38 00 00 01 */	li r0, 1
/* 80A28A30  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28A34  48 00 00 40 */	b lbl_80A28A74
lbl_80A28A38:
/* 80A28A38  38 80 10 00 */	li r4, 0x1000
/* 80A28A3C  48 00 0A 1D */	bl _turn_to_link__15daNpcKasiMich_cFs
/* 80A28A40  2C 03 00 00 */	cmpwi r3, 0
/* 80A28A44  41 82 00 30 */	beq lbl_80A28A74
/* 80A28A48  3C 60 80 A3 */	lis r3, lit_5120@ha
/* 80A28A4C  38 83 A6 0C */	addi r4, r3, lit_5120@l
/* 80A28A50  80 64 00 00 */	lwz r3, 0(r4)
/* 80A28A54  80 04 00 04 */	lwz r0, 4(r4)
/* 80A28A58  90 61 00 08 */	stw r3, 8(r1)
/* 80A28A5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A28A60  80 04 00 08 */	lwz r0, 8(r4)
/* 80A28A64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A28A68  7F E3 FB 78 */	mr r3, r31
/* 80A28A6C  38 81 00 08 */	addi r4, r1, 8
/* 80A28A70  4B FF F0 15 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A28A74:
/* 80A28A74  38 60 00 01 */	li r3, 1
/* 80A28A78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A28A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A28A80  7C 08 03 A6 */	mtlr r0
/* 80A28A84  38 21 00 20 */	addi r1, r1, 0x20
/* 80A28A88  4E 80 00 20 */	blr 
