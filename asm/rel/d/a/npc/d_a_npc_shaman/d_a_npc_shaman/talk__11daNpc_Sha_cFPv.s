lbl_80AE50EC:
/* 80AE50EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE50F0  7C 08 02 A6 */	mflr r0
/* 80AE50F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE50F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AE50FC  7C 7F 1B 78 */	mr r31, r3
/* 80AE5100  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AE5104  2C 00 00 02 */	cmpwi r0, 2
/* 80AE5108  41 82 00 38 */	beq lbl_80AE5140
/* 80AE510C  40 80 01 A8 */	bge lbl_80AE52B4
/* 80AE5110  2C 00 00 00 */	cmpwi r0, 0
/* 80AE5114  40 80 00 0C */	bge lbl_80AE5120
/* 80AE5118  48 00 01 9C */	b lbl_80AE52B4
/* 80AE511C  48 00 01 98 */	b lbl_80AE52B4
lbl_80AE5120:
/* 80AE5120  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AE5124  2C 00 00 00 */	cmpwi r0, 0
/* 80AE5128  40 82 00 18 */	bne lbl_80AE5140
/* 80AE512C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AE5130  38 A0 00 00 */	li r5, 0
/* 80AE5134  4B 66 6A BC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AE5138  38 00 00 02 */	li r0, 2
/* 80AE513C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AE5140:
/* 80AE5140  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AE5144  2C 00 00 00 */	cmpwi r0, 0
/* 80AE5148  40 82 01 6C */	bne lbl_80AE52B4
/* 80AE514C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AE5150  28 00 00 00 */	cmplwi r0, 0
/* 80AE5154  40 82 00 20 */	bne lbl_80AE5174
/* 80AE5158  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80AE515C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AE5160  7C 03 00 00 */	cmpw r3, r0
/* 80AE5164  41 82 00 10 */	beq lbl_80AE5174
/* 80AE5168  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80AE516C  28 00 00 01 */	cmplwi r0, 1
/* 80AE5170  40 82 00 EC */	bne lbl_80AE525C
lbl_80AE5174:
/* 80AE5174  7F E3 FB 78 */	mr r3, r31
/* 80AE5178  38 80 00 00 */	li r4, 0
/* 80AE517C  38 A0 00 00 */	li r5, 0
/* 80AE5180  38 C0 00 00 */	li r6, 0
/* 80AE5184  38 E0 00 00 */	li r7, 0
/* 80AE5188  4B 66 6A F0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AE518C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE5190  41 82 00 48 */	beq lbl_80AE51D8
/* 80AE5194  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AE5198  38 81 00 08 */	addi r4, r1, 8
/* 80AE519C  4B 76 53 8C */	b getEventId__10dMsgFlow_cFPi
/* 80AE51A0  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AE51A4  28 00 00 01 */	cmplwi r0, 1
/* 80AE51A8  40 82 00 30 */	bne lbl_80AE51D8
/* 80AE51AC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE51B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AE51B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AE51B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AE51BC  4B 66 05 24 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80AE51C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE51C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE51C8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AE51CC  4B 55 D2 9C */	b reset__14dEvt_control_cFv
/* 80AE51D0  38 00 00 03 */	li r0, 3
/* 80AE51D4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AE51D8:
/* 80AE51D8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE51DC  2C 00 00 01 */	cmpwi r0, 1
/* 80AE51E0  41 82 00 2C */	beq lbl_80AE520C
/* 80AE51E4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE51E8  4B 66 05 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AE51EC  38 00 00 00 */	li r0, 0
/* 80AE51F0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE51F4  3C 60 80 AE */	lis r3, lit_4185@ha
/* 80AE51F8  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)
/* 80AE51FC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE5200  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5204  38 00 00 01 */	li r0, 1
/* 80AE5208  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE520C:
/* 80AE520C  38 00 00 00 */	li r0, 0
/* 80AE5210  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5214  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AE5218  28 00 00 00 */	cmplwi r0, 0
/* 80AE521C  41 82 00 98 */	beq lbl_80AE52B4
/* 80AE5220  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE5224  2C 00 00 00 */	cmpwi r0, 0
/* 80AE5228  41 82 00 28 */	beq lbl_80AE5250
/* 80AE522C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE5230  4B 66 04 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80AE5234  38 00 00 00 */	li r0, 0
/* 80AE5238  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE523C  3C 60 80 AE */	lis r3, lit_4185@ha
/* 80AE5240  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)
/* 80AE5244  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE5248  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE524C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE5250:
/* 80AE5250  38 00 00 00 */	li r0, 0
/* 80AE5254  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5258  48 00 00 5C */	b lbl_80AE52B4
lbl_80AE525C:
/* 80AE525C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AE5260  2C 00 00 01 */	cmpwi r0, 1
/* 80AE5264  41 82 00 2C */	beq lbl_80AE5290
/* 80AE5268  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AE526C  4B 66 04 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AE5270  38 00 00 00 */	li r0, 0
/* 80AE5274  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AE5278  3C 60 80 AE */	lis r3, lit_4185@ha
/* 80AE527C  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)
/* 80AE5280  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AE5284  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5288  38 00 00 01 */	li r0, 1
/* 80AE528C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AE5290:
/* 80AE5290  38 00 00 00 */	li r0, 0
/* 80AE5294  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AE5298  7F E3 FB 78 */	mr r3, r31
/* 80AE529C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80AE52A0  38 A0 FF FF */	li r5, -1
/* 80AE52A4  38 C0 FF FF */	li r6, -1
/* 80AE52A8  38 E0 00 0F */	li r7, 0xf
/* 80AE52AC  39 00 00 00 */	li r8, 0
/* 80AE52B0  4B 66 63 98 */	b step__8daNpcT_cFsiiii
lbl_80AE52B4:
/* 80AE52B4  38 60 00 00 */	li r3, 0
/* 80AE52B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AE52BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE52C0  7C 08 03 A6 */	mtlr r0
/* 80AE52C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE52C8  4E 80 00 20 */	blr 
