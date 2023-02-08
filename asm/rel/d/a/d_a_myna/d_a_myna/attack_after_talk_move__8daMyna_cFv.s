lbl_80946E08:
/* 80946E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946E0C  7C 08 02 A6 */	mflr r0
/* 80946E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80946E18  7C 7F 1B 78 */	mr r31, r3
/* 80946E1C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80946E20  28 00 00 01 */	cmplwi r0, 1
/* 80946E24  40 82 00 4C */	bne lbl_80946E70
/* 80946E28  38 7F 06 20 */	addi r3, r31, 0x620
/* 80946E2C  7F E4 FB 78 */	mr r4, r31
/* 80946E30  38 A0 00 00 */	li r5, 0
/* 80946E34  38 C0 00 00 */	li r6, 0
/* 80946E38  4B 90 34 A1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80946E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80946E40  41 82 00 30 */	beq lbl_80946E70
/* 80946E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80946E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80946E4C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80946E50  4B 6F B6 19 */	bl reset__14dEvt_control_cFv
/* 80946E54  88 1F 09 2F */	lbz r0, 0x92f(r31)
/* 80946E58  60 00 00 04 */	ori r0, r0, 4
/* 80946E5C  98 1F 09 2F */	stb r0, 0x92f(r31)
/* 80946E60  38 00 01 39 */	li r0, 0x139
/* 80946E64  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80946E68  38 00 00 05 */	li r0, 5
/* 80946E6C  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80946E70:
/* 80946E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80946E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946E78  7C 08 03 A6 */	mtlr r0
/* 80946E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80946E80  4E 80 00 20 */	blr 
