lbl_80ACA054:
/* 80ACA054  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACA058  7C 08 02 A6 */	mflr r0
/* 80ACA05C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACA060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACA064  7C 7F 1B 78 */	mr r31, r3
/* 80ACA068  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80ACA06C  4B 89 7F AC */	b __ptmf_test
/* 80ACA070  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA074  41 82 00 54 */	beq lbl_80ACA0C8
/* 80ACA078  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 80ACA07C  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80ACA080  4B 89 7F C8 */	b __ptmf_cmpr
/* 80ACA084  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA088  40 82 00 1C */	bne lbl_80ACA0A4
/* 80ACA08C  7F E3 FB 78 */	mr r3, r31
/* 80ACA090  38 80 00 00 */	li r4, 0
/* 80ACA094  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80ACA098  4B 89 7F EC */	b __ptmf_scall
/* 80ACA09C  60 00 00 00 */	nop 
/* 80ACA0A0  48 00 00 28 */	b lbl_80ACA0C8
lbl_80ACA0A4:
/* 80ACA0A4  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 80ACA0A8  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80ACA0AC  90 61 00 08 */	stw r3, 8(r1)
/* 80ACA0B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACA0B4  80 1F 0E 50 */	lwz r0, 0xe50(r31)
/* 80ACA0B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACA0BC  7F E3 FB 78 */	mr r3, r31
/* 80ACA0C0  38 81 00 08 */	addi r4, r1, 8
/* 80ACA0C4  48 00 03 09 */	bl setAction__12daNpc_seiD_cFM12daNpc_seiD_cFPCvPvPv_i
lbl_80ACA0C8:
/* 80ACA0C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACA0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACA0D0  7C 08 03 A6 */	mtlr r0
/* 80ACA0D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACA0D8  4E 80 00 20 */	blr 
