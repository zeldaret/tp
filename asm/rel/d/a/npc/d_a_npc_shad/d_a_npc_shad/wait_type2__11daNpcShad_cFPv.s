lbl_80ADB428:
/* 80ADB428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ADB42C  7C 08 02 A6 */	mflr r0
/* 80ADB430  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADB434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ADB438  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80ADB43C  7C 7F 1B 78 */	mr r31, r3
/* 80ADB440  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha
/* 80ADB444  3B C4 1F DC */	addi r30, r4, m__17daNpcShad_Param_c@l
/* 80ADB448  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80ADB44C  2C 00 00 02 */	cmpwi r0, 2
/* 80ADB450  41 82 00 A4 */	beq lbl_80ADB4F4
/* 80ADB454  40 80 01 B8 */	bge lbl_80ADB60C
/* 80ADB458  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB45C  41 82 00 0C */	beq lbl_80ADB468
/* 80ADB460  48 00 01 AC */	b lbl_80ADB60C
/* 80ADB464  48 00 01 A8 */	b lbl_80ADB60C
lbl_80ADB468:
/* 80ADB468  38 80 00 08 */	li r4, 8
/* 80ADB46C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADB470  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ADB474  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADB478  7D 89 03 A6 */	mtctr r12
/* 80ADB47C  4E 80 04 21 */	bctrl 
/* 80ADB480  7F E3 FB 78 */	mr r3, r31
/* 80ADB484  38 80 00 10 */	li r4, 0x10
/* 80ADB488  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADB48C  38 A0 00 00 */	li r5, 0
/* 80ADB490  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADB494  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADB498  7D 89 03 A6 */	mtctr r12
/* 80ADB49C  4E 80 04 21 */	bctrl 
/* 80ADB4A0  38 00 00 00 */	li r0, 0
/* 80ADB4A4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80ADB4A8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80ADB4AC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80ADB4B0  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80ADB4B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADB4B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADB4BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADB4C0  4B 67 51 FC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADB4C4  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80ADB4C8  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB4CC  40 82 00 10 */	bne lbl_80ADB4DC
/* 80ADB4D0  80 1F 0C A8 */	lwz r0, 0xca8(r31)
/* 80ADB4D4  28 00 00 00 */	cmplwi r0, 0
/* 80ADB4D8  41 82 00 10 */	beq lbl_80ADB4E8
lbl_80ADB4DC:
/* 80ADB4DC  38 00 00 00 */	li r0, 0
/* 80ADB4E0  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80ADB4E4  90 1F 0C A8 */	stw r0, 0xca8(r31)
lbl_80ADB4E8:
/* 80ADB4E8  38 00 00 02 */	li r0, 2
/* 80ADB4EC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ADB4F0  48 00 01 1C */	b lbl_80ADB60C
lbl_80ADB4F4:
/* 80ADB4F4  80 1F 0E 10 */	lwz r0, 0xe10(r31)
/* 80ADB4F8  2C 00 00 01 */	cmpwi r0, 1
/* 80ADB4FC  41 82 00 70 */	beq lbl_80ADB56C
/* 80ADB500  40 80 01 0C */	bge lbl_80ADB60C
/* 80ADB504  2C 00 00 00 */	cmpwi r0, 0
/* 80ADB508  40 80 00 08 */	bge lbl_80ADB510
/* 80ADB50C  48 00 01 00 */	b lbl_80ADB60C
lbl_80ADB510:
/* 80ADB510  38 60 00 76 */	li r3, 0x76
/* 80ADB514  4B 67 A1 A0 */	b daNpcF_chkTmpBit__FUl
/* 80ADB518  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB51C  41 82 00 F0 */	beq lbl_80ADB60C
/* 80ADB520  C0 1E 04 68 */	lfs f0, 0x468(r30)
/* 80ADB524  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80ADB528  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80ADB52C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80ADB530  C0 1E 04 6C */	lfs f0, 0x46c(r30)
/* 80ADB534  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80ADB538  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ADB53C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80ADB540  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ADB544  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80ADB548  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ADB54C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80ADB550  7F E3 FB 78 */	mr r3, r31
/* 80ADB554  38 80 A0 00 */	li r4, -24576
/* 80ADB558  4B 67 8C F8 */	b setAngle__8daNpcF_cFs
/* 80ADB55C  80 7F 0E 10 */	lwz r3, 0xe10(r31)
/* 80ADB560  38 03 00 01 */	addi r0, r3, 1
/* 80ADB564  90 1F 0E 10 */	stw r0, 0xe10(r31)
/* 80ADB568  48 00 00 A4 */	b lbl_80ADB60C
lbl_80ADB56C:
/* 80ADB56C  38 60 00 74 */	li r3, 0x74
/* 80ADB570  4B 67 A1 44 */	b daNpcF_chkTmpBit__FUl
/* 80ADB574  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB578  41 82 00 94 */	beq lbl_80ADB60C
/* 80ADB57C  3C 60 80 AE */	lis r3, lit_5565@ha
/* 80ADB580  38 83 2B 30 */	addi r4, r3, lit_5565@l
/* 80ADB584  80 64 00 00 */	lwz r3, 0(r4)
/* 80ADB588  80 04 00 04 */	lwz r0, 4(r4)
/* 80ADB58C  90 61 00 08 */	stw r3, 8(r1)
/* 80ADB590  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ADB594  80 04 00 08 */	lwz r0, 8(r4)
/* 80ADB598  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADB59C  38 00 00 03 */	li r0, 3
/* 80ADB5A0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ADB5A4  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80ADB5A8  4B 88 6A 70 */	b __ptmf_test
/* 80ADB5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB5B0  41 82 00 18 */	beq lbl_80ADB5C8
/* 80ADB5B4  7F E3 FB 78 */	mr r3, r31
/* 80ADB5B8  38 80 00 00 */	li r4, 0
/* 80ADB5BC  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80ADB5C0  4B 88 6A C4 */	b __ptmf_scall
/* 80ADB5C4  60 00 00 00 */	nop 
lbl_80ADB5C8:
/* 80ADB5C8  38 00 00 00 */	li r0, 0
/* 80ADB5CC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ADB5D0  80 61 00 08 */	lwz r3, 8(r1)
/* 80ADB5D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ADB5D8  90 7F 0D EC */	stw r3, 0xdec(r31)
/* 80ADB5DC  90 1F 0D F0 */	stw r0, 0xdf0(r31)
/* 80ADB5E0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ADB5E4  90 1F 0D F4 */	stw r0, 0xdf4(r31)
/* 80ADB5E8  38 7F 0D EC */	addi r3, r31, 0xdec
/* 80ADB5EC  4B 88 6A 2C */	b __ptmf_test
/* 80ADB5F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB5F4  41 82 00 18 */	beq lbl_80ADB60C
/* 80ADB5F8  7F E3 FB 78 */	mr r3, r31
/* 80ADB5FC  38 80 00 00 */	li r4, 0
/* 80ADB600  39 9F 0D EC */	addi r12, r31, 0xdec
/* 80ADB604  4B 88 6A 80 */	b __ptmf_scall
/* 80ADB608  60 00 00 00 */	nop 
lbl_80ADB60C:
/* 80ADB60C  38 60 00 01 */	li r3, 1
/* 80ADB610  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ADB614  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80ADB618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADB61C  7C 08 03 A6 */	mtlr r0
/* 80ADB620  38 21 00 20 */	addi r1, r1, 0x20
/* 80ADB624  4E 80 00 20 */	blr 
