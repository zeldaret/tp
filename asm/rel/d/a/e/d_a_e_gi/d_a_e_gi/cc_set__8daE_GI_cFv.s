lbl_806CFBF0:
/* 806CFBF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806CFBF4  7C 08 02 A6 */	mflr r0
/* 806CFBF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806CFBFC  39 61 00 40 */	addi r11, r1, 0x40
/* 806CFC00  4B C9 25 C4 */	b _savegpr_23
/* 806CFC04  7C 7A 1B 78 */	mr r26, r3
/* 806CFC08  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806CFC0C  3B C3 0E 60 */	addi r30, r3, lit_3907@l
/* 806CFC10  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806CFC14  83 A3 00 04 */	lwz r29, 4(r3)
/* 806CFC18  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806CFC1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFC20  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806CFC24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CFC28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CFC2C  4B C7 68 84 */	b PSMTXCopy
/* 806CFC30  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CFC34  FC 40 08 90 */	fmr f2, f1
/* 806CFC38  FC 60 08 90 */	fmr f3, f1
/* 806CFC3C  4B 93 D1 60 */	b transM__14mDoMtx_stack_cFfff
/* 806CFC40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CFC44  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 806CFC48  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806CFC4C  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 806CFC50  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806CFC54  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 806CFC58  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806CFC5C  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 806CFC60  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 806CFC64  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 806CFC68  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 806CFC6C  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 806CFC70  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 806CFC74  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 806CFC78  C0 3A 05 54 */	lfs f1, 0x554(r26)
/* 806CFC7C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 806CFC80  EC 01 00 2A */	fadds f0, f1, f0
/* 806CFC84  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 806CFC88  3B 60 00 00 */	li r27, 0
/* 806CFC8C  3B 20 00 00 */	li r25, 0
/* 806CFC90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CFC94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CFC98  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_806CFC9C:
/* 806CFC9C  2C 1B 00 00 */	cmpwi r27, 0
/* 806CFCA0  40 82 00 30 */	bne lbl_806CFCD0
/* 806CFCA4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806CFCA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFCAC  38 63 00 30 */	addi r3, r3, 0x30
/* 806CFCB0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CFCB4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CFCB8  4B C7 67 F8 */	b PSMTXCopy
/* 806CFCBC  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 806CFCC0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806CFCC4  FC 60 10 90 */	fmr f3, f2
/* 806CFCC8  4B 93 D0 D4 */	b transM__14mDoMtx_stack_cFfff
/* 806CFCCC  48 00 00 2C */	b lbl_806CFCF8
lbl_806CFCD0:
/* 806CFCD0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 806CFCD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFCD8  38 63 00 90 */	addi r3, r3, 0x90
/* 806CFCDC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CFCE0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CFCE4  4B C7 67 CC */	b PSMTXCopy
/* 806CFCE8  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806CFCEC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806CFCF0  FC 60 10 90 */	fmr f3, f2
/* 806CFCF4  4B 93 D0 A8 */	b transM__14mDoMtx_stack_cFfff
lbl_806CFCF8:
/* 806CFCF8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806CFCFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 806CFD00  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806CFD04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CFD08  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806CFD0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806CFD10  7E FA CA 14 */	add r23, r26, r25
/* 806CFD14  3B 17 0A 24 */	addi r24, r23, 0xa24
/* 806CFD18  7F 03 C3 78 */	mr r3, r24
/* 806CFD1C  38 81 00 08 */	addi r4, r1, 8
/* 806CFD20  4B B9 F9 28 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CFD24  7F 03 C3 78 */	mr r3, r24
/* 806CFD28  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 806CFD2C  4B B9 F9 DC */	b SetR__8cM3dGSphFf
/* 806CFD30  7F 83 E3 78 */	mr r3, r28
/* 806CFD34  38 97 09 00 */	addi r4, r23, 0x900
/* 806CFD38  4B B9 4E 70 */	b Set__4cCcSFP8cCcD_Obj
/* 806CFD3C  3B 7B 00 01 */	addi r27, r27, 1
/* 806CFD40  2C 1B 00 02 */	cmpwi r27, 2
/* 806CFD44  3B 39 01 38 */	addi r25, r25, 0x138
/* 806CFD48  41 80 FF 54 */	blt lbl_806CFC9C
/* 806CFD4C  80 7A 05 B8 */	lwz r3, 0x5b8(r26)
/* 806CFD50  38 63 00 24 */	addi r3, r3, 0x24
/* 806CFD54  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CFD58  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CFD5C  4B C7 67 54 */	b PSMTXCopy
/* 806CFD60  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806CFD64  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 806CFD68  FC 60 08 90 */	fmr f3, f1
/* 806CFD6C  4B 93 D0 30 */	b transM__14mDoMtx_stack_cFfff
/* 806CFD70  3B 20 00 00 */	li r25, 0
/* 806CFD74  3B 60 00 00 */	li r27, 0
lbl_806CFD78:
/* 806CFD78  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 806CFD7C  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 806CFD80  C0 7E 00 04 */	lfs f3, 4(r30)
/* 806CFD84  4B 93 D0 18 */	b transM__14mDoMtx_stack_cFfff
/* 806CFD88  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806CFD8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806CFD90  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806CFD94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CFD98  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806CFD9C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806CFDA0  7F 1A DA 14 */	add r24, r26, r27
/* 806CFDA4  3A F8 0C 94 */	addi r23, r24, 0xc94
/* 806CFDA8  7E E3 BB 78 */	mr r3, r23
/* 806CFDAC  38 81 00 08 */	addi r4, r1, 8
/* 806CFDB0  4B B9 F8 98 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CFDB4  7E E3 BB 78 */	mr r3, r23
/* 806CFDB8  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 806CFDBC  4B B9 F9 4C */	b SetR__8cM3dGSphFf
/* 806CFDC0  7F 83 E3 78 */	mr r3, r28
/* 806CFDC4  38 98 0B 70 */	addi r4, r24, 0xb70
/* 806CFDC8  4B B9 4D E0 */	b Set__4cCcSFP8cCcD_Obj
/* 806CFDCC  3B 39 00 01 */	addi r25, r25, 1
/* 806CFDD0  2C 19 00 04 */	cmpwi r25, 4
/* 806CFDD4  3B 7B 01 38 */	addi r27, r27, 0x138
/* 806CFDD8  41 80 FF A0 */	blt lbl_806CFD78
/* 806CFDDC  39 61 00 40 */	addi r11, r1, 0x40
/* 806CFDE0  4B C9 24 30 */	b _restgpr_23
/* 806CFDE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806CFDE8  7C 08 03 A6 */	mtlr r0
/* 806CFDEC  38 21 00 40 */	addi r1, r1, 0x40
/* 806CFDF0  4E 80 00 20 */	blr 
