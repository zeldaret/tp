lbl_8055DBF0:
/* 8055DBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055DBF4  7C 08 02 A6 */	mflr r0
/* 8055DBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DBFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055DC00  93 C1 00 08 */	stw r30, 8(r1)
/* 8055DC04  7C 7E 1B 78 */	mr r30, r3
/* 8055DC08  3C 60 80 56 */	lis r3, cNullVec__6Z2Calc@ha
/* 8055DC0C  3B E3 4F 90 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 8055DC10  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8055DC14  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8055DC18  80 64 00 00 */	lwz r3, 0(r4)
/* 8055DC1C  80 04 00 04 */	lwz r0, 4(r4)
/* 8055DC20  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DC24  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DC28  80 04 00 08 */	lwz r0, 8(r4)
/* 8055DC2C  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 8055DC30  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 8055DC34  2C 00 00 08 */	cmpwi r0, 8
/* 8055DC38  41 82 00 3C */	beq lbl_8055DC74
/* 8055DC3C  40 80 00 10 */	bge lbl_8055DC4C
/* 8055DC40  2C 00 00 07 */	cmpwi r0, 7
/* 8055DC44  40 80 00 14 */	bge lbl_8055DC58
/* 8055DC48  48 00 00 8C */	b lbl_8055DCD4
lbl_8055DC4C:
/* 8055DC4C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8055DC50  41 82 00 40 */	beq lbl_8055DC90
/* 8055DC54  48 00 00 80 */	b lbl_8055DCD4
lbl_8055DC58:
/* 8055DC58  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 8055DC5C  80 1F 07 A0 */	lwz r0, 0x7a0(r31)
/* 8055DC60  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DC64  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DC68  80 1F 07 A4 */	lwz r0, 0x7a4(r31)
/* 8055DC6C  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 8055DC70  48 00 00 7C */	b lbl_8055DCEC
lbl_8055DC74:
/* 8055DC74  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 8055DC78  80 1F 07 AC */	lwz r0, 0x7ac(r31)
/* 8055DC7C  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DC80  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DC84  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 8055DC88  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 8055DC8C  48 00 00 60 */	b lbl_8055DCEC
lbl_8055DC90:
/* 8055DC90  4B AD 39 B8 */	b daNpcKakashi_chkSwdTutorialStage__Fv
/* 8055DC94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8055DC98  41 82 00 20 */	beq lbl_8055DCB8
/* 8055DC9C  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 8055DCA0  80 1F 07 B8 */	lwz r0, 0x7b8(r31)
/* 8055DCA4  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DCA8  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DCAC  80 1F 07 BC */	lwz r0, 0x7bc(r31)
/* 8055DCB0  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 8055DCB4  48 00 00 38 */	b lbl_8055DCEC
lbl_8055DCB8:
/* 8055DCB8  80 7F 07 C0 */	lwz r3, 0x7c0(r31)
/* 8055DCBC  80 1F 07 C4 */	lwz r0, 0x7c4(r31)
/* 8055DCC0  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DCC4  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DCC8  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 8055DCCC  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 8055DCD0  48 00 00 1C */	b lbl_8055DCEC
lbl_8055DCD4:
/* 8055DCD4  80 7F 07 CC */	lwz r3, 0x7cc(r31)
/* 8055DCD8  80 1F 07 D0 */	lwz r0, 0x7d0(r31)
/* 8055DCDC  90 7E 11 0C */	stw r3, 0x110c(r30)
/* 8055DCE0  90 1E 11 10 */	stw r0, 0x1110(r30)
/* 8055DCE4  80 1F 07 D4 */	lwz r0, 0x7d4(r31)
/* 8055DCE8  90 1E 11 14 */	stw r0, 0x1114(r30)
lbl_8055DCEC:
/* 8055DCEC  38 60 00 01 */	li r3, 1
/* 8055DCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055DCF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055DCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DCFC  7C 08 03 A6 */	mtlr r0
/* 8055DD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8055DD04  4E 80 00 20 */	blr 
