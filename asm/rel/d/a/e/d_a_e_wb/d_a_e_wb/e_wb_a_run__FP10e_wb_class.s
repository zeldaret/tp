lbl_807D88D8:
/* 807D88D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D88DC  7C 08 02 A6 */	mflr r0
/* 807D88E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D88E4  39 61 00 30 */	addi r11, r1, 0x30
/* 807D88E8  4B B8 98 F5 */	bl _savegpr_29
/* 807D88EC  7C 7D 1B 78 */	mr r29, r3
/* 807D88F0  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D88F4  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D88F8  AB C3 04 DE */	lha r30, 0x4de(r3)
/* 807D88FC  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D8900  2C 00 00 01 */	cmpwi r0, 1
/* 807D8904  41 82 00 58 */	beq lbl_807D895C
/* 807D8908  40 80 00 FC */	bge lbl_807D8A04
/* 807D890C  2C 00 00 00 */	cmpwi r0, 0
/* 807D8910  40 80 00 08 */	bge lbl_807D8918
/* 807D8914  48 00 00 F0 */	b lbl_807D8A04
lbl_807D8918:
/* 807D8918  38 80 00 20 */	li r4, 0x20
/* 807D891C  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807D8920  38 A0 00 02 */	li r5, 2
/* 807D8924  C0 5F 01 D8 */	lfs f2, 0x1d8(r31)
/* 807D8928  4B FF 9C 21 */	bl anm_init__FP10e_wb_classifUcf
/* 807D892C  38 00 00 01 */	li r0, 1
/* 807D8930  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8934  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8938  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 807D893C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807D8940  4B A8 F0 15 */	bl cM_rndF__Ff
/* 807D8944  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807D8948  EC 00 08 2A */	fadds f0, f0, f1
/* 807D894C  FC 00 00 1E */	fctiwz f0, f0
/* 807D8950  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807D8954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D8958  B0 1D 06 9A */	sth r0, 0x69a(r29)
lbl_807D895C:
/* 807D895C  38 00 00 01 */	li r0, 1
/* 807D8960  98 1D 06 BD */	stb r0, 0x6bd(r29)
/* 807D8964  98 1D 14 2C */	stb r0, 0x142c(r29)
/* 807D8968  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D896C  2C 00 00 00 */	cmpwi r0, 0
/* 807D8970  40 82 00 44 */	bne lbl_807D89B4
/* 807D8974  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807D8978  4B A8 EF DD */	bl cM_rndF__Ff
/* 807D897C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 807D8980  EC 00 08 2A */	fadds f0, f0, f1
/* 807D8984  FC 00 00 1E */	fctiwz f0, f0
/* 807D8988  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807D898C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D8990  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D8994  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 807D8998  4B A8 EF F5 */	bl cM_rndFX__Ff
/* 807D899C  FC 00 08 1E */	fctiwz f0, f1
/* 807D89A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D89A4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 807D89A8  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 807D89AC  7C 00 1A 14 */	add r0, r0, r3
/* 807D89B0  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_807D89B4:
/* 807D89B4  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 807D89B8  2C 00 00 01 */	cmpwi r0, 1
/* 807D89BC  41 82 00 10 */	beq lbl_807D89CC
/* 807D89C0  88 1D 14 2F */	lbz r0, 0x142f(r29)
/* 807D89C4  2C 00 00 02 */	cmpwi r0, 2
/* 807D89C8  40 82 00 3C */	bne lbl_807D8A04
lbl_807D89CC:
/* 807D89CC  38 00 00 18 */	li r0, 0x18
/* 807D89D0  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807D89D4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007D@ha */
/* 807D89D8  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0005007D@l */
/* 807D89DC  90 01 00 08 */	stw r0, 8(r1)
/* 807D89E0  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 807D89E4  38 81 00 08 */	addi r4, r1, 8
/* 807D89E8  38 A0 FF FF */	li r5, -1
/* 807D89EC  81 9D 05 EC */	lwz r12, 0x5ec(r29)
/* 807D89F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D89F4  7D 89 03 A6 */	mtctr r12
/* 807D89F8  4E 80 04 21 */	bctrl 
/* 807D89FC  38 00 00 00 */	li r0, 0
/* 807D8A00  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807D8A04:
/* 807D8A04  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807D8A08  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 807D8A0C  38 A0 00 08 */	li r5, 8
/* 807D8A10  38 C0 08 00 */	li r6, 0x800
/* 807D8A14  4B A9 7B F5 */	bl cLib_addCalcAngleS2__FPssss
/* 807D8A18  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807D8A1C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807D8A20  3C 80 80 7E */	lis r4, l_HIO@ha /* 0x807E35C8@ha */
/* 807D8A24  38 84 35 C8 */	addi r4, r4, l_HIO@l /* 0x807E35C8@l */
/* 807D8A28  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 807D8A2C  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D8A30  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8A34  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 807D8A38  4B A9 70 05 */	bl cLib_addCalc2__FPffff
/* 807D8A3C  38 7D 07 9A */	addi r3, r29, 0x79a
/* 807D8A40  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8A44  7C 1E 00 50 */	subf r0, r30, r0
/* 807D8A48  54 00 18 38 */	slwi r0, r0, 3
/* 807D8A4C  7C 00 00 D0 */	neg r0, r0
/* 807D8A50  7C 04 07 34 */	extsh r4, r0
/* 807D8A54  38 A0 00 08 */	li r5, 8
/* 807D8A58  38 C0 02 00 */	li r6, 0x200
/* 807D8A5C  4B A9 7B AD */	bl cLib_addCalcAngleS2__FPssss
/* 807D8A60  39 61 00 30 */	addi r11, r1, 0x30
/* 807D8A64  4B B8 97 C5 */	bl _restgpr_29
/* 807D8A68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D8A6C  7C 08 03 A6 */	mtlr r0
/* 807D8A70  38 21 00 30 */	addi r1, r1, 0x30
/* 807D8A74  4E 80 00 20 */	blr 
