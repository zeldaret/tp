lbl_80A37598:
/* 80A37598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3759C  7C 08 02 A6 */	mflr r0
/* 80A375A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A375A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A375A8  7C 7F 1B 78 */	mr r31, r3
/* 80A375AC  88 03 15 AC */	lbz r0, 0x15ac(r3)
/* 80A375B0  28 00 00 01 */	cmplwi r0, 1
/* 80A375B4  40 82 00 A8 */	bne lbl_80A3765C
/* 80A375B8  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80A375BC  38 81 00 08 */	addi r4, r1, 8
/* 80A375C0  4B 5E 23 FD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80A375C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A375C8  41 82 00 94 */	beq lbl_80A3765C
/* 80A375CC  80 61 00 08 */	lwz r3, 8(r1)
/* 80A375D0  28 03 00 00 */	cmplwi r3, 0
/* 80A375D4  41 82 00 88 */	beq lbl_80A3765C
/* 80A375D8  A8 03 00 08 */	lha r0, 8(r3)
/* 80A375DC  2C 00 02 5B */	cmpwi r0, 0x25b
/* 80A375E0  40 82 00 7C */	bne lbl_80A3765C
/* 80A375E4  88 03 07 0C */	lbz r0, 0x70c(r3)
/* 80A375E8  28 00 00 00 */	cmplwi r0, 0
/* 80A375EC  40 82 00 70 */	bne lbl_80A3765C
/* 80A375F0  3C 60 80 A4 */	lis r3, lit_12304@ha /* 0x80A40AA4@ha */
/* 80A375F4  C0 03 0A A4 */	lfs f0, lit_12304@l(r3)  /* 0x80A40AA4@l */
/* 80A375F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A375FC  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A37600  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A37604  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A37608  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3760C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A37610  80 63 00 04 */	lwz r3, 4(r3)
/* 80A37614  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A37618  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A3761C  38 63 02 70 */	addi r3, r3, 0x270
/* 80A37620  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A37624  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A37628  4B 90 EE 89 */	bl PSMTXCopy
/* 80A3762C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A37630  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A37634  38 81 00 0C */	addi r4, r1, 0xc
/* 80A37638  7C 85 23 78 */	mr r5, r4
/* 80A3763C  4B 90 F7 31 */	bl PSMTXMultVec
/* 80A37640  80 61 00 08 */	lwz r3, 8(r1)
/* 80A37644  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A37648  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80A3764C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A37650  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80A37654  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A37658  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_80A3765C:
/* 80A3765C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A37660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A37664  7C 08 03 A6 */	mtlr r0
/* 80A37668  38 21 00 20 */	addi r1, r1, 0x20
/* 80A3766C  4E 80 00 20 */	blr 
