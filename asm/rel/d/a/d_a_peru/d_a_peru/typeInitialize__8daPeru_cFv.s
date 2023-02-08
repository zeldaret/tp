lbl_80D4765C:
/* 80D4765C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D47660  7C 08 02 A6 */	mflr r0
/* 80D47664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D47668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4766C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D47670  7C 7E 1B 78 */	mr r30, r3
/* 80D47674  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D47678  3B E3 C0 60 */	addi r31, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D4767C  88 1E 11 28 */	lbz r0, 0x1128(r30)
/* 80D47680  28 00 00 00 */	cmplwi r0, 0
/* 80D47684  40 82 00 48 */	bne lbl_80D476CC
/* 80D47688  38 60 01 27 */	li r3, 0x127
/* 80D4768C  4B 40 54 21 */	bl daNpcT_chkEvtBit__FUl
/* 80D47690  2C 03 00 00 */	cmpwi r3, 0
/* 80D47694  41 82 00 A0 */	beq lbl_80D47734
/* 80D47698  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80D4769C  D0 5E 04 D0 */	stfs f2, 0x4d0(r30)
/* 80D476A0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80D476A4  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80D476A8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80D476AC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D476B0  D0 5E 04 BC */	stfs f2, 0x4bc(r30)
/* 80D476B4  D0 3E 04 C0 */	stfs f1, 0x4c0(r30)
/* 80D476B8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80D476BC  D0 5E 04 A8 */	stfs f2, 0x4a8(r30)
/* 80D476C0  D0 3E 04 AC */	stfs f1, 0x4ac(r30)
/* 80D476C4  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80D476C8  48 00 00 6C */	b lbl_80D47734
lbl_80D476CC:
/* 80D476CC  28 00 00 01 */	cmplwi r0, 1
/* 80D476D0  40 82 00 34 */	bne lbl_80D47704
/* 80D476D4  38 60 01 83 */	li r3, 0x183
/* 80D476D8  4B 40 53 D5 */	bl daNpcT_chkEvtBit__FUl
/* 80D476DC  2C 03 00 00 */	cmpwi r3, 0
/* 80D476E0  40 82 00 0C */	bne lbl_80D476EC
/* 80D476E4  38 60 00 05 */	li r3, 5
/* 80D476E8  48 00 00 50 */	b lbl_80D47738
lbl_80D476EC:
/* 80D476EC  38 60 01 1F */	li r3, 0x11f
/* 80D476F0  4B 40 53 BD */	bl daNpcT_chkEvtBit__FUl
/* 80D476F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D476F8  41 82 00 3C */	beq lbl_80D47734
/* 80D476FC  38 60 00 05 */	li r3, 5
/* 80D47700  48 00 00 38 */	b lbl_80D47738
lbl_80D47704:
/* 80D47704  28 00 00 02 */	cmplwi r0, 2
/* 80D47708  40 82 00 2C */	bne lbl_80D47734
/* 80D4770C  38 60 01 83 */	li r3, 0x183
/* 80D47710  4B 40 53 9D */	bl daNpcT_chkEvtBit__FUl
/* 80D47714  2C 03 00 00 */	cmpwi r3, 0
/* 80D47718  41 82 00 1C */	beq lbl_80D47734
/* 80D4771C  38 60 01 1F */	li r3, 0x11f
/* 80D47720  4B 40 53 8D */	bl daNpcT_chkEvtBit__FUl
/* 80D47724  2C 03 00 00 */	cmpwi r3, 0
/* 80D47728  40 82 00 0C */	bne lbl_80D47734
/* 80D4772C  38 60 00 05 */	li r3, 5
/* 80D47730  48 00 00 08 */	b lbl_80D47738
lbl_80D47734:
/* 80D47734  38 60 00 04 */	li r3, 4
lbl_80D47738:
/* 80D47738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4773C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D47740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D47744  7C 08 03 A6 */	mtlr r0
/* 80D47748  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4774C  4E 80 00 20 */	blr 
