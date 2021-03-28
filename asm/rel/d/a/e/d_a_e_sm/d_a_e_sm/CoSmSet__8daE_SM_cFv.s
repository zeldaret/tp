lbl_80797444:
/* 80797444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80797448  7C 08 02 A6 */	mflr r0
/* 8079744C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80797450  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80797454  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80797458  7C 7E 1B 78 */	mr r30, r3
/* 8079745C  3C 60 80 7A */	lis r3, lit_3920@ha
/* 80797460  3B E3 85 E0 */	addi r31, r3, lit_3920@l
/* 80797464  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80797468  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 8079746C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80797470  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80797474  D0 01 00 08 */	stfs f0, 8(r1)
/* 80797478  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8079747C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80797480  38 61 00 08 */	addi r3, r1, 8
/* 80797484  38 9E 09 90 */	addi r4, r30, 0x990
/* 80797488  7C 65 1B 78 */	mr r5, r3
/* 8079748C  4B BA FC 04 */	b PSVECAdd
/* 80797490  88 1E 06 84 */	lbz r0, 0x684(r30)
/* 80797494  28 00 00 00 */	cmplwi r0, 0
/* 80797498  40 82 00 38 */	bne lbl_807974D0
/* 8079749C  38 7E 11 24 */	addi r3, r30, 0x1124
/* 807974A0  38 81 00 08 */	addi r4, r1, 8
/* 807974A4  4B AD 81 A4 */	b SetC__8cM3dGSphFRC4cXyz
/* 807974A8  38 7E 11 24 */	addi r3, r30, 0x1124
/* 807974AC  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 807974B0  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 807974B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 807974B8  4B AD 82 50 */	b SetR__8cM3dGSphFf
/* 807974BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807974C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807974C4  38 63 23 3C */	addi r3, r3, 0x233c
/* 807974C8  38 9E 10 00 */	addi r4, r30, 0x1000
/* 807974CC  4B AC D6 DC */	b Set__4cCcSFP8cCcD_Obj
lbl_807974D0:
/* 807974D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807974D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807974D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807974DC  7C 08 03 A6 */	mtlr r0
/* 807974E0  38 21 00 20 */	addi r1, r1, 0x20
/* 807974E4  4E 80 00 20 */	blr 
