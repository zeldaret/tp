lbl_809E510C:
/* 809E510C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E5110  7C 08 02 A6 */	mflr r0
/* 809E5114  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E5118  39 61 00 20 */	addi r11, r1, 0x20
/* 809E511C  4B 97 D0 C0 */	b _savegpr_29
/* 809E5120  7C 7E 1B 78 */	mr r30, r3
/* 809E5124  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha
/* 809E5128  3B E4 7F C4 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809E512C  48 00 14 45 */	bl doEvent__11daNpc_grS_cFv
/* 809E5130  2C 03 00 00 */	cmpwi r3, 0
/* 809E5134  40 82 00 10 */	bne lbl_809E5144
/* 809E5138  7F C3 F3 78 */	mr r3, r30
/* 809E513C  38 80 00 01 */	li r4, 1
/* 809E5140  48 00 13 05 */	bl doNormalAction__11daNpc_grS_cFi
lbl_809E5144:
/* 809E5144  3B A0 00 00 */	li r29, 0
/* 809E5148  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809E514C  28 00 00 00 */	cmplwi r0, 0
/* 809E5150  40 82 00 1C */	bne lbl_809E516C
/* 809E5154  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809E5158  28 00 00 00 */	cmplwi r0, 0
/* 809E515C  41 82 00 14 */	beq lbl_809E5170
/* 809E5160  4B 64 A8 F4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 809E5164  2C 03 00 00 */	cmpwi r3, 0
/* 809E5168  40 82 00 08 */	bne lbl_809E5170
lbl_809E516C:
/* 809E516C  3B A0 00 01 */	li r29, 1
lbl_809E5170:
/* 809E5170  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809E5174  41 82 00 0C */	beq lbl_809E5180
/* 809E5178  38 00 00 00 */	li r0, 0
/* 809E517C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809E5180:
/* 809E5180  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E5184  38 63 7D CC */	addi r3, r3, m__17daNpc_grS_Param_c@l
/* 809E5188  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809E518C  28 00 00 00 */	cmplwi r0, 0
/* 809E5190  40 82 00 AC */	bne lbl_809E523C
/* 809E5194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E5198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E519C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809E51A0  28 03 00 00 */	cmplwi r3, 0
/* 809E51A4  41 82 00 30 */	beq lbl_809E51D4
/* 809E51A8  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809E51AC  28 00 00 00 */	cmplwi r0, 0
/* 809E51B0  41 82 00 8C */	beq lbl_809E523C
/* 809E51B4  38 00 00 00 */	li r0, 0
/* 809E51B8  28 03 00 00 */	cmplwi r3, 0
/* 809E51BC  41 82 00 0C */	beq lbl_809E51C8
/* 809E51C0  28 03 00 02 */	cmplwi r3, 2
/* 809E51C4  40 82 00 08 */	bne lbl_809E51CC
lbl_809E51C8:
/* 809E51C8  38 00 00 01 */	li r0, 1
lbl_809E51CC:
/* 809E51CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E51D0  41 82 00 6C */	beq lbl_809E523C
lbl_809E51D4:
/* 809E51D4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E51D8  28 00 00 00 */	cmplwi r0, 0
/* 809E51DC  41 82 00 24 */	beq lbl_809E5200
/* 809E51E0  38 7F 00 90 */	addi r3, r31, 0x90
/* 809E51E4  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809E51E8  7C 63 02 14 */	add r3, r3, r0
/* 809E51EC  80 03 00 04 */	lwz r0, 4(r3)
/* 809E51F0  54 00 10 3A */	slwi r0, r0, 2
/* 809E51F4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809E51F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 809E51FC  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809E5200:
/* 809E5200  7F C3 F3 78 */	mr r3, r30
/* 809E5204  88 9E 0E 34 */	lbz r4, 0xe34(r30)
/* 809E5208  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E520C  54 00 18 38 */	slwi r0, r0, 3
/* 809E5210  38 BF 00 90 */	addi r5, r31, 0x90
/* 809E5214  7C 05 00 2E */	lwzx r0, r5, r0
/* 809E5218  54 00 10 3A */	slwi r0, r0, 2
/* 809E521C  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 809E5220  7C A5 00 2E */	lwzx r5, r5, r0
/* 809E5224  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809E5228  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809E522C  38 E0 00 28 */	li r7, 0x28
/* 809E5230  39 00 00 FF */	li r8, 0xff
/* 809E5234  39 20 00 01 */	li r9, 1
/* 809E5238  4B 76 E6 44 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809E523C:
/* 809E523C  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809E5240  28 00 00 00 */	cmplwi r0, 0
/* 809E5244  41 82 00 1C */	beq lbl_809E5260
/* 809E5248  3C 60 80 9E */	lis r3, lit_4491@ha
/* 809E524C  C0 03 7E 4C */	lfs f0, lit_4491@l(r3)
/* 809E5250  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809E5254  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809E5258  38 00 00 00 */	li r0, 0
/* 809E525C  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809E5260:
/* 809E5260  7F C3 F3 78 */	mr r3, r30
/* 809E5264  48 00 0D 9D */	bl playExpression__11daNpc_grS_cFv
/* 809E5268  7F C3 F3 78 */	mr r3, r30
/* 809E526C  48 00 0E F9 */	bl playMotion__11daNpc_grS_cFv
/* 809E5270  38 60 00 01 */	li r3, 1
/* 809E5274  39 61 00 20 */	addi r11, r1, 0x20
/* 809E5278  4B 97 CF B0 */	b _restgpr_29
/* 809E527C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E5280  7C 08 03 A6 */	mtlr r0
/* 809E5284  38 21 00 20 */	addi r1, r1, 0x20
/* 809E5288  4E 80 00 20 */	blr 
