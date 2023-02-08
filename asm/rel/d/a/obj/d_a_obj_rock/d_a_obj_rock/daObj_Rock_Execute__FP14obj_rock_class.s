lbl_80CBDD20:
/* 80CBDD20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBDD24  7C 08 02 A6 */	mflr r0
/* 80CBDD28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBDD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDD30  4B 6A 44 A9 */	bl _savegpr_28
/* 80CBDD34  7C 7F 1B 78 */	mr r31, r3
/* 80CBDD38  A8 03 05 74 */	lha r0, 0x574(r3)
/* 80CBDD3C  2C 00 00 00 */	cmpwi r0, 0
/* 80CBDD40  40 82 00 B4 */	bne lbl_80CBDDF4
/* 80CBDD44  3B DF 05 78 */	addi r30, r31, 0x578
/* 80CBDD48  3B A0 00 00 */	li r29, 0
/* 80CBDD4C  48 00 00 90 */	b lbl_80CBDDDC
lbl_80CBDD50:
/* 80CBDD50  88 1E 01 5C */	lbz r0, 0x15c(r30)
/* 80CBDD54  7C 00 07 75 */	extsb. r0, r0
/* 80CBDD58  41 82 00 7C */	beq lbl_80CBDDD4
/* 80CBDD5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBDD60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBDD64  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CBDD68  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80CBDD6C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CBDD70  EC 42 00 2A */	fadds f2, f2, f0
/* 80CBDD74  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80CBDD78  4B 68 8B 71 */	bl PSMTXTrans
/* 80CBDD7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBDD80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBDD84  A8 9E 00 20 */	lha r4, 0x20(r30)
/* 80CBDD88  4B 34 E6 AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBDD8C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80CBDD90  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80CBDD94  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80CBDD98  4B 34 F0 A1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CBDD9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBDDA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBDDA4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80CBDDA8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBDDAC  4B 68 87 05 */	bl PSMTXCopy
/* 80CBDDB0  38 7E 01 48 */	addi r3, r30, 0x148
/* 80CBDDB4  38 9E 00 04 */	addi r4, r30, 4
/* 80CBDDB8  4B 5B 18 91 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CBDDBC  38 7E 01 48 */	addi r3, r30, 0x148
/* 80CBDDC0  3C 80 80 CC */	lis r4, lit_3814@ha /* 0x80CBE7A4@ha */
/* 80CBDDC4  C0 24 E7 A4 */	lfs f1, lit_3814@l(r4)  /* 0x80CBE7A4@l */
/* 80CBDDC8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80CBDDCC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CBDDD0  4B 5B 19 39 */	bl SetR__8cM3dGSphFf
lbl_80CBDDD4:
/* 80CBDDD4  3B BD 00 01 */	addi r29, r29, 1
/* 80CBDDD8  3B DE 01 60 */	addi r30, r30, 0x160
lbl_80CBDDDC:
/* 80CBDDDC  80 1F 1B 78 */	lwz r0, 0x1b78(r31)
/* 80CBDDE0  7C 1D 00 00 */	cmpw r29, r0
/* 80CBDDE4  41 80 FF 6C */	blt lbl_80CBDD50
/* 80CBDDE8  38 00 00 01 */	li r0, 1
/* 80CBDDEC  B0 1F 05 74 */	sth r0, 0x574(r31)
/* 80CBDDF0  48 00 00 3C */	b lbl_80CBDE2C
lbl_80CBDDF4:
/* 80CBDDF4  3B BF 05 78 */	addi r29, r31, 0x578
/* 80CBDDF8  3B 80 00 00 */	li r28, 0
/* 80CBDDFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBDE00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBDE04  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80CBDE08  48 00 00 18 */	b lbl_80CBDE20
lbl_80CBDE0C:
/* 80CBDE0C  7F C3 F3 78 */	mr r3, r30
/* 80CBDE10  38 9D 00 24 */	addi r4, r29, 0x24
/* 80CBDE14  4B 5A 6D 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CBDE18  3B 9C 00 01 */	addi r28, r28, 1
/* 80CBDE1C  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80CBDE20:
/* 80CBDE20  80 1F 1B 78 */	lwz r0, 0x1b78(r31)
/* 80CBDE24  7C 1C 00 00 */	cmpw r28, r0
/* 80CBDE28  41 80 FF E4 */	blt lbl_80CBDE0C
lbl_80CBDE2C:
/* 80CBDE2C  38 60 00 01 */	li r3, 1
/* 80CBDE30  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDE34  4B 6A 43 F1 */	bl _restgpr_28
/* 80CBDE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBDE3C  7C 08 03 A6 */	mtlr r0
/* 80CBDE40  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBDE44  4E 80 00 20 */	blr 
