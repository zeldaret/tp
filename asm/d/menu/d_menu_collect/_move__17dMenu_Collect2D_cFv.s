lbl_801B5CD4:
/* 801B5CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5CD8  7C 08 02 A6 */	mflr r0
/* 801B5CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5CE4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5CE8  7C 7E 1B 78 */	mr r30, r3
/* 801B5CEC  8B E3 02 2C */	lbz r31, 0x22c(r3)
/* 801B5CF0  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801B5CF4  3C 80 80 3C */	lis r4, process@ha /* 0x803BC638@ha */
/* 801B5CF8  38 04 C6 38 */	addi r0, r4, process@l /* 0x803BC638@l */
/* 801B5CFC  7D 80 2A 14 */	add r12, r0, r5
/* 801B5D00  48 1A C3 85 */	bl __ptmf_scall
/* 801B5D04  60 00 00 00 */	nop 
/* 801B5D08  88 1E 02 2C */	lbz r0, 0x22c(r30)
/* 801B5D0C  7C 00 F8 40 */	cmplw r0, r31
/* 801B5D10  41 82 00 20 */	beq lbl_801B5D30
/* 801B5D14  7F C3 F3 78 */	mr r3, r30
/* 801B5D18  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801B5D1C  3C 80 80 3C */	lis r4, init@ha /* 0x803BC470@ha */
/* 801B5D20  38 04 C4 70 */	addi r0, r4, init@l /* 0x803BC470@l */
/* 801B5D24  7D 80 2A 14 */	add r12, r0, r5
/* 801B5D28  48 1A C3 5D */	bl __ptmf_scall
/* 801B5D2C  60 00 00 00 */	nop 
lbl_801B5D30:
/* 801B5D30  7F C3 F3 78 */	mr r3, r30
/* 801B5D34  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 801B5D38  4B FF BF A9 */	bl btkAnimeLoop0__17dMenu_Collect2D_cFP19J2DAnmTextureSRTKey
/* 801B5D3C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B5D40  48 14 39 51 */	bl animation__9J2DScreenFv
/* 801B5D44  7F C3 F3 78 */	mr r3, r30
/* 801B5D48  4B FF C1 95 */	bl setBackAlpha__17dMenu_Collect2D_cFv
/* 801B5D4C  7F C3 F3 78 */	mr r3, r30
/* 801B5D50  38 80 00 00 */	li r4, 0
/* 801B5D54  4B FF E5 85 */	bl setHIO__17dMenu_Collect2D_cFb
/* 801B5D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5D5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5D64  7C 08 03 A6 */	mtlr r0
/* 801B5D68  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5D6C  4E 80 00 20 */	blr 
