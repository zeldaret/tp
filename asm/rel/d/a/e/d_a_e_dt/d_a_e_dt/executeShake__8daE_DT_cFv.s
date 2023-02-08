lbl_806B063C:
/* 806B063C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B0640  7C 08 02 A6 */	mflr r0
/* 806B0644  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B0648  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B064C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806B0650  7C 7F 1B 78 */	mr r31, r3
/* 806B0654  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B0658  3B C4 5C D4 */	addi r30, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806B065C  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 806B0660  2C 00 00 01 */	cmpwi r0, 1
/* 806B0664  41 82 00 48 */	beq lbl_806B06AC
/* 806B0668  40 80 00 10 */	bge lbl_806B0678
/* 806B066C  2C 00 00 00 */	cmpwi r0, 0
/* 806B0670  40 80 00 14 */	bge lbl_806B0684
/* 806B0674  48 00 01 38 */	b lbl_806B07AC
lbl_806B0678:
/* 806B0678  2C 00 00 03 */	cmpwi r0, 3
/* 806B067C  40 80 01 30 */	bge lbl_806B07AC
/* 806B0680  48 00 00 70 */	b lbl_806B06F0
lbl_806B0684:
/* 806B0684  38 80 00 17 */	li r4, 0x17
/* 806B0688  38 A0 00 02 */	li r5, 2
/* 806B068C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B0690  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B0694  4B FF DF B9 */	bl setBck__8daE_DT_cFiUcff
/* 806B0698  38 00 00 1E */	li r0, 0x1e
/* 806B069C  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B06A0  38 00 00 01 */	li r0, 1
/* 806B06A4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B06A8  48 00 01 04 */	b lbl_806B07AC
lbl_806B06AC:
/* 806B06AC  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B06B0  2C 00 00 00 */	cmpwi r0, 0
/* 806B06B4  40 82 00 F8 */	bne lbl_806B07AC
/* 806B06B8  4B FF EE 91 */	bl setSwingEffect__8daE_DT_cFv
/* 806B06BC  7F E3 FB 78 */	mr r3, r31
/* 806B06C0  38 80 00 16 */	li r4, 0x16
/* 806B06C4  38 A0 00 02 */	li r5, 2
/* 806B06C8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B06CC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B06D0  4B FF DF 7D */	bl setBck__8daE_DT_cFiUcff
/* 806B06D4  38 00 00 02 */	li r0, 2
/* 806B06D8  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B06DC  38 00 00 00 */	li r0, 0
/* 806B06E0  90 1F 07 04 */	stw r0, 0x704(r31)
/* 806B06E4  38 00 00 3C */	li r0, 0x3c
/* 806B06E8  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B06EC  48 00 00 C0 */	b lbl_806B07AC
lbl_806B06F0:
/* 806B06F0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B06F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806B06F8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 806B06FC  4B C7 7D 31 */	bl checkPass__12J3DFrameCtrlFf
/* 806B0700  2C 03 00 00 */	cmpwi r3, 0
/* 806B0704  41 82 00 30 */	beq lbl_806B0734
/* 806B0708  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070315@ha */
/* 806B070C  38 03 03 15 */	addi r0, r3, 0x0315 /* 0x00070315@l */
/* 806B0710  90 01 00 08 */	stw r0, 8(r1)
/* 806B0714  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B0718  38 81 00 08 */	addi r4, r1, 8
/* 806B071C  38 A0 00 00 */	li r5, 0
/* 806B0720  38 C0 FF FF */	li r6, -1
/* 806B0724  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806B0728  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B072C  7D 89 03 A6 */	mtctr r12
/* 806B0730  4E 80 04 21 */	bctrl 
lbl_806B0734:
/* 806B0734  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 806B0738  2C 03 00 0A */	cmpwi r3, 0xa
/* 806B073C  40 80 00 54 */	bge lbl_806B0790
/* 806B0740  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B0744  20 00 00 3C */	subfic r0, r0, 0x3c
/* 806B0748  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 806B074C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B0750  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B0754  3C 00 43 30 */	lis r0, 0x4330
/* 806B0758  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B075C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806B0760  EC 20 08 28 */	fsubs f1, f0, f1
/* 806B0764  54 60 10 3A */	slwi r0, r3, 2
/* 806B0768  3C 60 80 6B */	lis r3, eDt_ShakeFrame__6E_DT_n@ha /* 0x806B5EEC@ha */
/* 806B076C  38 63 5E EC */	addi r3, r3, eDt_ShakeFrame__6E_DT_n@l /* 0x806B5EEC@l */
/* 806B0770  7C 03 04 2E */	lfsx f0, r3, r0
/* 806B0774  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B0778  40 82 00 18 */	bne lbl_806B0790
/* 806B077C  7F E3 FB 78 */	mr r3, r31
/* 806B0780  4B FF F6 A5 */	bl setStayOtamaFall__8daE_DT_cFv
/* 806B0784  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 806B0788  38 03 00 01 */	addi r0, r3, 1
/* 806B078C  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_806B0790:
/* 806B0790  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B0794  2C 00 00 00 */	cmpwi r0, 0
/* 806B0798  40 82 00 14 */	bne lbl_806B07AC
/* 806B079C  7F E3 FB 78 */	mr r3, r31
/* 806B07A0  38 80 00 03 */	li r4, 3
/* 806B07A4  38 A0 00 00 */	li r5, 0
/* 806B07A8  4B FF DF A5 */	bl setActionMode__8daE_DT_cFii
lbl_806B07AC:
/* 806B07AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B07B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B07B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B07B8  7C 08 03 A6 */	mtlr r0
/* 806B07BC  38 21 00 20 */	addi r1, r1, 0x20
/* 806B07C0  4E 80 00 20 */	blr 
