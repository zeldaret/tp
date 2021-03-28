lbl_801DCBBC:
/* 801DCBBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCBC0  7C 08 02 A6 */	mflr r0
/* 801DCBC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCBC8  88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 801DCBCC  28 00 00 FF */	cmplwi r0, 0xff
/* 801DCBD0  41 82 00 AC */	beq lbl_801DCC7C
/* 801DCBD4  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801DCBD8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801DCBDC  88 04 05 68 */	lbz r0, 0x568(r4)
/* 801DCBE0  28 00 00 01 */	cmplwi r0, 1
/* 801DCBE4  40 82 00 2C */	bne lbl_801DCC10
/* 801DCBE8  88 04 05 69 */	lbz r0, 0x569(r4)
/* 801DCBEC  C8 22 A8 D8 */	lfd f1, lit_4950(r2)
/* 801DCBF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DCBF4  3C 00 43 30 */	lis r0, 0x4330
/* 801DCBF8  90 01 00 08 */	stw r0, 8(r1)
/* 801DCBFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DCC00  EC 20 08 28 */	fsubs f1, f0, f1
/* 801DCC04  C0 02 A8 D4 */	lfs f0, lit_4948(r2)
/* 801DCC08  EC 61 00 24 */	fdivs f3, f1, f0
/* 801DCC0C  48 00 00 08 */	b lbl_801DCC14
lbl_801DCC10:
/* 801DCC10  C0 62 A8 C4 */	lfs f3, lit_4348(r2)
lbl_801DCC14:
/* 801DCC14  80 A3 00 88 */	lwz r5, 0x88(r3)
/* 801DCC18  A0 05 00 04 */	lhz r0, 4(r5)
/* 801DCC1C  C8 42 A8 D8 */	lfd f2, lit_4950(r2)
/* 801DCC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DCC24  3C 80 43 30 */	lis r4, 0x4330
/* 801DCC28  90 81 00 10 */	stw r4, 0x10(r1)
/* 801DCC2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DCC30  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DCC34  C0 22 A8 BC */	lfs f1, lit_4346(r2)
/* 801DCC38  EC 00 08 24 */	fdivs f0, f0, f1
/* 801DCC3C  EC 80 00 F2 */	fmuls f4, f0, f3
/* 801DCC40  80 63 00 38 */	lwz r3, 0x38(r3)
/* 801DCC44  80 63 00 04 */	lwz r3, 4(r3)
/* 801DCC48  A0 05 00 02 */	lhz r0, 2(r5)
/* 801DCC4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801DCC50  90 81 00 18 */	stw r4, 0x18(r1)
/* 801DCC54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801DCC58  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DCC5C  EC 00 08 24 */	fdivs f0, f0, f1
/* 801DCC60  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801DCC64  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DCC68  D0 83 00 D0 */	stfs f4, 0xd0(r3)
/* 801DCC6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCC70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DCC74  7D 89 03 A6 */	mtctr r12
/* 801DCC78  4E 80 04 21 */	bctrl 
lbl_801DCC7C:
/* 801DCC7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCC80  7C 08 03 A6 */	mtlr r0
/* 801DCC84  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCC88  4E 80 00 20 */	blr 
