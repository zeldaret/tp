lbl_80C26204:
/* 80C26204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26208  7C 08 02 A6 */	mflr r0
/* 80C2620C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26214  7C 7F 1B 78 */	mr r31, r3
/* 80C26218  A8 63 05 7C */	lha r3, 0x57c(r3)
/* 80C2621C  38 03 00 01 */	addi r0, r3, 1
/* 80C26220  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80C26224  38 60 00 00 */	li r3, 0
/* 80C26228  38 00 00 02 */	li r0, 2
/* 80C2622C  7C 09 03 A6 */	mtctr r0
lbl_80C26230:
/* 80C26230  38 A3 05 82 */	addi r5, r3, 0x582
/* 80C26234  7C 9F 2A AE */	lhax r4, r31, r5
/* 80C26238  2C 04 00 00 */	cmpwi r4, 0
/* 80C2623C  41 82 00 0C */	beq lbl_80C26248
/* 80C26240  38 04 FF FF */	addi r0, r4, -1
/* 80C26244  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80C26248:
/* 80C26248  38 63 00 02 */	addi r3, r3, 2
/* 80C2624C  42 00 FF E4 */	bdnz lbl_80C26230
/* 80C26250  88 1F 05 86 */	lbz r0, 0x586(r31)
/* 80C26254  7C 00 07 75 */	extsb. r0, r0
/* 80C26258  41 82 00 4C */	beq lbl_80C262A4
/* 80C2625C  38 00 00 01 */	li r0, 1
/* 80C26260  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80C26264  38 00 00 00 */	li r0, 0
/* 80C26268  98 1F 05 86 */	stb r0, 0x586(r31)
/* 80C2626C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C26270  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C26274  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C26278  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80C2627C  4B 44 DF D4 */	b Release__4cBgSFP9dBgW_Base
/* 80C26280  38 00 00 00 */	li r0, 0
/* 80C26284  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80C26288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2628C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C26290  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C26294  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C26298  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C2629C  A0 84 00 A6 */	lhz r4, 0xa6(r4)
/* 80C262A0  4B 40 E6 EC */	b onEventBit__11dSv_event_cFUs
lbl_80C262A4:
/* 80C262A4  7F E3 FB 78 */	mr r3, r31
/* 80C262A8  4B FF FE 7D */	bl action__FP15obj_ihasi_class
/* 80C262AC  38 60 00 01 */	li r3, 1
/* 80C262B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C262B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C262B8  7C 08 03 A6 */	mtlr r0
/* 80C262BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C262C0  4E 80 00 20 */	blr 
