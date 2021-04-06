lbl_80845EDC:
/* 80845EDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80845EE0  7C 08 02 A6 */	mflr r0
/* 80845EE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80845EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80845EEC  4B B1 C2 ED */	bl _savegpr_28
/* 80845EF0  7C 7D 1B 78 */	mr r29, r3
/* 80845EF4  7C 9E 23 78 */	mr r30, r4
/* 80845EF8  4B AE 64 CD */	bl calc__14J3DMaterialAnmCFP11J3DMaterial
/* 80845EFC  3B E0 00 00 */	li r31, 0
/* 80845F00  3B 80 00 00 */	li r28, 0
lbl_80845F04:
/* 80845F04  38 7C 00 14 */	addi r3, r28, 0x14
/* 80845F08  7C 7D 1A 14 */	add r3, r29, r3
/* 80845F0C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80845F10  28 00 00 00 */	cmplwi r0, 0
/* 80845F14  41 82 00 C4 */	beq lbl_80845FD8
/* 80845F18  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80845F1C  7F E4 FB 78 */	mr r4, r31
/* 80845F20  81 83 00 00 */	lwz r12, 0(r3)
/* 80845F24  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80845F28  7D 89 03 A6 */	mtctr r12
/* 80845F2C  4E 80 04 21 */	bctrl 
/* 80845F30  3C 80 80 85 */	lis r4, struct_80849010+0x1@ha /* 0x80849011@ha */
/* 80845F34  88 A4 90 11 */	lbz r5, struct_80849010+0x1@l(r4)  /* 0x80849011@l */
/* 80845F38  28 05 00 00 */	cmplwi r5, 0
/* 80845F3C  41 82 00 6C */	beq lbl_80845FA8
/* 80845F40  3C 80 80 85 */	lis r4, lit_3722@ha /* 0x80848E58@ha */
/* 80845F44  C0 44 8E 58 */	lfs f2, lit_3722@l(r4)  /* 0x80848E58@l */
/* 80845F48  38 05 00 01 */	addi r0, r5, 1
/* 80845F4C  3C 80 80 85 */	lis r4, lit_3724@ha /* 0x80848E5C@ha */
/* 80845F50  C8 24 8E 5C */	lfd f1, lit_3724@l(r4)  /* 0x80848E5C@l */
/* 80845F54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80845F58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80845F5C  3C 00 43 30 */	lis r0, 0x4330
/* 80845F60  90 01 00 08 */	stw r0, 8(r1)
/* 80845F64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80845F68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80845F6C  EC 62 00 24 */	fdivs f3, f2, f0
/* 80845F70  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 80845F74  EC 42 18 28 */	fsubs f2, f2, f3
/* 80845F78  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80845F7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80845F80  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80845F84  EC 01 00 2A */	fadds f0, f1, f0
/* 80845F88  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80845F8C  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 80845F90  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80845F94  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80845F98  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80845F9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80845FA0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80845FA4  48 00 00 24 */	b lbl_80845FC8
lbl_80845FA8:
/* 80845FA8  3C 80 80 85 */	lis r4, struct_80849010+0x0@ha /* 0x80849010@ha */
/* 80845FAC  88 04 90 10 */	lbz r0, struct_80849010+0x0@l(r4)  /* 0x80849010@l */
/* 80845FB0  28 00 00 00 */	cmplwi r0, 0
/* 80845FB4  41 82 00 14 */	beq lbl_80845FC8
/* 80845FB8  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 80845FBC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80845FC0  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80845FC4  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_80845FC8:
/* 80845FC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80845FCC  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 80845FD0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80845FD4  D0 1D 00 F8 */	stfs f0, 0xf8(r29)
lbl_80845FD8:
/* 80845FD8  3B FF 00 01 */	addi r31, r31, 1
/* 80845FDC  28 1F 00 08 */	cmplwi r31, 8
/* 80845FE0  3B 9C 00 08 */	addi r28, r28, 8
/* 80845FE4  41 80 FF 20 */	blt lbl_80845F04
/* 80845FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80845FEC  4B B1 C2 39 */	bl _restgpr_28
/* 80845FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80845FF4  7C 08 03 A6 */	mtlr r0
/* 80845FF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80845FFC  4E 80 00 20 */	blr 
