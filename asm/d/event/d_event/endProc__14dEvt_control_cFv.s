lbl_800421C0:
/* 800421C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800421C4  7C 08 02 A6 */	mflr r0
/* 800421C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800421CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800421D0  7C 7F 1B 78 */	mr r31, r3
/* 800421D4  88 03 00 E4 */	lbz r0, 0xe4(r3)
/* 800421D8  2C 00 00 02 */	cmpwi r0, 2
/* 800421DC  41 82 00 20 */	beq lbl_800421FC
/* 800421E0  40 80 00 20 */	bge lbl_80042200
/* 800421E4  2C 00 00 01 */	cmpwi r0, 1
/* 800421E8  40 80 00 0C */	bge lbl_800421F4
/* 800421EC  48 00 00 14 */	b lbl_80042200
/* 800421F0  48 00 00 10 */	b lbl_80042200
lbl_800421F4:
/* 800421F4  4B FF FB 41 */	bl talkEnd__14dEvt_control_cFv
/* 800421F8  48 00 00 08 */	b lbl_80042200
lbl_800421FC:
/* 800421FC  4B FF FD 1D */	bl demoEnd__14dEvt_control_cFv
lbl_80042200:
/* 80042200  38 60 00 00 */	li r3, 0
/* 80042204  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 80042208  38 00 00 FF */	li r0, 0xff
/* 8004220C  98 1F 00 EA */	stb r0, 0xea(r31)
/* 80042210  98 1F 00 EB */	stb r0, 0xeb(r31)
/* 80042214  90 7F 00 F4 */	stw r3, 0xf4(r31)
/* 80042218  98 1F 00 EC */	stb r0, 0xec(r31)
/* 8004221C  98 7F 00 ED */	stb r3, 0xed(r31)
/* 80042220  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 80042224  98 1F 00 EE */	stb r0, 0xee(r31)
/* 80042228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004222C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80042230  38 63 51 88 */	addi r3, r3, 0x5188
/* 80042234  38 80 FF FE */	li r4, -2
/* 80042238  48 00 41 B9 */	bl setStartDemo__18dEvent_exception_cFi
/* 8004223C  38 60 00 01 */	li r3, 1
/* 80042240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80042244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80042248  7C 08 03 A6 */	mtlr r0
/* 8004224C  38 21 00 10 */	addi r1, r1, 0x10
/* 80042250  4E 80 00 20 */	blr 
