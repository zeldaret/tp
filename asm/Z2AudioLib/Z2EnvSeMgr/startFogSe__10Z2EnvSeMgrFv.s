lbl_802C9400:
/* 802C9400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C9404  7C 08 02 A6 */	mflr r0
/* 802C9408  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C940C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C9410  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C9414  7C 7E 1B 78 */	mr r30, r3
/* 802C9418  38 7E 02 E8 */	addi r3, r30, 0x2e8
/* 802C941C  4B FE 05 85 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C9420  C0 42 C4 50 */	lfs f2, lit_4836(r2)
/* 802C9424  C0 02 C4 54 */	lfs f0, lit_4837(r2)
/* 802C9428  EC 00 00 72 */	fmuls f0, f0, f1
/* 802C942C  EC 42 00 2A */	fadds f2, f2, f0
/* 802C9430  C0 62 C3 A4 */	lfs f3, lit_3760(r2)
/* 802C9434  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C9438  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C943C  EC A3 00 2A */	fadds f5, f3, f0
/* 802C9440  C0 82 C3 60 */	lfs f4, lit_3574(r2)
/* 802C9444  C0 02 C3 C8 */	lfs f0, lit_3769(r2)
/* 802C9448  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C944C  EC 00 01 32 */	fmuls f0, f0, f4
/* 802C9450  EC 64 00 28 */	fsubs f3, f4, f0
/* 802C9454  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090022@ha */
/* 802C9458  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00090022@l */
/* 802C945C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9460  38 7E 02 40 */	addi r3, r30, 0x240
/* 802C9464  38 81 00 0C */	addi r4, r1, 0xc
/* 802C9468  C0 22 C4 5C */	lfs f1, lit_4879(r2)
/* 802C946C  38 A0 00 00 */	li r5, 0
/* 802C9470  4B FF C6 45 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C9474  7C 7F 1B 78 */	mr r31, r3
/* 802C9478  38 7E 02 F8 */	addi r3, r30, 0x2f8
/* 802C947C  4B FE 05 25 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C9480  FC C0 08 90 */	fmr f6, f1
/* 802C9484  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090023@ha */
/* 802C9488  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00090023@l */
/* 802C948C  90 01 00 08 */	stw r0, 8(r1)
/* 802C9490  38 7E 02 74 */	addi r3, r30, 0x274
/* 802C9494  38 81 00 08 */	addi r4, r1, 8
/* 802C9498  C0 22 C4 5C */	lfs f1, lit_4879(r2)
/* 802C949C  C0 42 C4 50 */	lfs f2, lit_4836(r2)
/* 802C94A0  C0 02 C4 54 */	lfs f0, lit_4837(r2)
/* 802C94A4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802C94A8  EC 42 00 2A */	fadds f2, f2, f0
/* 802C94AC  C0 82 C3 60 */	lfs f4, lit_3574(r2)
/* 802C94B0  C0 02 C3 C8 */	lfs f0, lit_3769(r2)
/* 802C94B4  EC 06 00 32 */	fmuls f0, f6, f0
/* 802C94B8  EC 00 01 32 */	fmuls f0, f0, f4
/* 802C94BC  EC 64 00 2A */	fadds f3, f4, f0
/* 802C94C0  C0 A2 C3 A4 */	lfs f5, lit_3760(r2)
/* 802C94C4  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C94C8  EC 06 00 32 */	fmuls f0, f6, f0
/* 802C94CC  EC A5 00 2A */	fadds f5, f5, f0
/* 802C94D0  38 A0 00 00 */	li r5, 0
/* 802C94D4  4B FF C5 E1 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C94D8  38 80 00 00 */	li r4, 0
/* 802C94DC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802C94E0  41 82 00 10 */	beq lbl_802C94F0
/* 802C94E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C94E8  41 82 00 08 */	beq lbl_802C94F0
/* 802C94EC  38 80 00 01 */	li r4, 1
lbl_802C94F0:
/* 802C94F0  7C 83 23 78 */	mr r3, r4
/* 802C94F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C94F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C94FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C9500  7C 08 03 A6 */	mtlr r0
/* 802C9504  38 21 00 20 */	addi r1, r1, 0x20
/* 802C9508  4E 80 00 20 */	blr 
