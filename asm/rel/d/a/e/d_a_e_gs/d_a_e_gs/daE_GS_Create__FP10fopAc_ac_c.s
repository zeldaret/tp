lbl_806DFC00:
/* 806DFC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFC04  7C 08 02 A6 */	mflr r0
/* 806DFC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DFC10  93 C1 00 08 */	stw r30, 8(r1)
/* 806DFC14  7C 7F 1B 78 */	mr r31, r3
/* 806DFC18  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806DFC1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806DFC20  40 82 00 28 */	bne lbl_806DFC48
/* 806DFC24  7F E0 FB 79 */	or. r0, r31, r31
/* 806DFC28  41 82 00 14 */	beq lbl_806DFC3C
/* 806DFC2C  7C 1E 03 78 */	mr r30, r0
/* 806DFC30  4B 93 8F 34 */	b __ct__10fopAc_ac_cFv
/* 806DFC34  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 806DFC38  4B BE 13 2C */	b __ct__15Z2CreatureEnemyFv
lbl_806DFC3C:
/* 806DFC3C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806DFC40  60 00 00 08 */	ori r0, r0, 8
/* 806DFC44  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806DFC48:
/* 806DFC48  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806DFC4C  3C 80 80 6E */	lis r4, stringBase0@ha
/* 806DFC50  38 84 FE 2C */	addi r4, r4, stringBase0@l
/* 806DFC54  4B 94 D2 68 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806DFC58  7C 7E 1B 78 */	mr r30, r3
/* 806DFC5C  2C 1E 00 04 */	cmpwi r30, 4
/* 806DFC60  40 82 00 E0 */	bne lbl_806DFD40
/* 806DFC64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806DFC68  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 806DFC6C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806DFC70  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806DFC74  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 806DFC78  7F E3 FB 78 */	mr r3, r31
/* 806DFC7C  3C 80 80 6E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 806DFC80  38 84 FA B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 806DFC84  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 806DFC88  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 806DFC8C  4B 93 A8 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806DFC90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806DFC94  40 82 00 0C */	bne lbl_806DFCA0
/* 806DFC98  38 60 00 05 */	li r3, 5
/* 806DFC9C  48 00 00 A8 */	b lbl_806DFD44
lbl_806DFCA0:
/* 806DFCA0  3C 60 80 6E */	lis r3, data_806DFE98@ha
/* 806DFCA4  8C 03 FE 98 */	lbzu r0, data_806DFE98@l(r3)
/* 806DFCA8  28 00 00 00 */	cmplwi r0, 0
/* 806DFCAC  40 82 00 20 */	bne lbl_806DFCCC
/* 806DFCB0  38 00 00 01 */	li r0, 1
/* 806DFCB4  98 1F 06 B8 */	stb r0, 0x6b8(r31)
/* 806DFCB8  98 03 00 00 */	stb r0, 0(r3)
/* 806DFCBC  38 00 FF FF */	li r0, -1
/* 806DFCC0  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DFCC4  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DFCC8  98 03 00 04 */	stb r0, 4(r3)
lbl_806DFCCC:
/* 806DFCCC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFCD0  80 63 00 04 */	lwz r3, 4(r3)
/* 806DFCD4  38 03 00 24 */	addi r0, r3, 0x24
/* 806DFCD8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806DFCDC  7F E3 FB 78 */	mr r3, r31
/* 806DFCE0  3C 80 80 6E */	lis r4, lit_3893@ha
/* 806DFCE4  C0 24 FE 24 */	lfs f1, lit_3893@l(r4)
/* 806DFCE8  FC 40 08 90 */	fmr f2, f1
/* 806DFCEC  FC 60 08 90 */	fmr f3, f1
/* 806DFCF0  4B 93 A8 38 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806DFCF4  7F E3 FB 78 */	mr r3, r31
/* 806DFCF8  3C 80 80 6E */	lis r4, lit_3894@ha
/* 806DFCFC  C0 24 FE 28 */	lfs f1, lit_3894@l(r4)
/* 806DFD00  FC 40 08 90 */	fmr f2, f1
/* 806DFD04  FC 60 08 90 */	fmr f3, f1
/* 806DFD08  4B 93 A8 30 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806DFD0C  38 00 00 64 */	li r0, 0x64
/* 806DFD10  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806DFD14  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806DFD18  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 806DFD1C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806DFD20  38 BF 05 38 */	addi r5, r31, 0x538
/* 806DFD24  38 C0 00 03 */	li r6, 3
/* 806DFD28  38 E0 00 01 */	li r7, 1
/* 806DFD2C  4B BE 13 68 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806DFD30  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 806DFD34  90 1F 06 9C */	stw r0, 0x69c(r31)
/* 806DFD38  7F E3 FB 78 */	mr r3, r31
/* 806DFD3C  4B FF FB 39 */	bl daE_GS_Execute__FP10e_gs_class
lbl_806DFD40:
/* 806DFD40  7F C3 F3 78 */	mr r3, r30
lbl_806DFD44:
/* 806DFD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DFD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DFD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFD50  7C 08 03 A6 */	mtlr r0
/* 806DFD54  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFD58  4E 80 00 20 */	blr 
