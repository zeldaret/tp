lbl_8094772C:
/* 8094772C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947730  7C 08 02 A6 */	mflr r0
/* 80947734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80947738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094773C  7C 7F 1B 78 */	mr r31, r3
/* 80947740  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80947744  28 00 00 01 */	cmplwi r0, 1
/* 80947748  40 82 00 38 */	bne lbl_80947780
/* 8094774C  38 7F 06 20 */	addi r3, r31, 0x620
/* 80947750  7F E4 FB 78 */	mr r4, r31
/* 80947754  38 A0 00 00 */	li r5, 0
/* 80947758  38 C0 00 00 */	li r6, 0
/* 8094775C  4B 90 2B 7D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80947760  2C 03 00 00 */	cmpwi r3, 0
/* 80947764  41 82 00 1C */	beq lbl_80947780
/* 80947768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094776C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80947770  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80947774  4B 6F AC F5 */	bl reset__14dEvt_control_cFv
/* 80947778  38 00 00 07 */	li r0, 7
/* 8094777C  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80947780:
/* 80947780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80947784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947788  7C 08 03 A6 */	mtlr r0
/* 8094778C  38 21 00 10 */	addi r1, r1, 0x10
/* 80947790  4E 80 00 20 */	blr 
