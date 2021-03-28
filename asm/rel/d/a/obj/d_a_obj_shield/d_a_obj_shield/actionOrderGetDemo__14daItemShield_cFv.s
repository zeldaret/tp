lbl_80CD7D04:
/* 80CD7D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7D08  7C 08 02 A6 */	mflr r0
/* 80CD7D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD7D14  7C 7F 1B 78 */	mr r31, r3
/* 80CD7D18  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CD7D1C  28 00 00 04 */	cmplwi r0, 4
/* 80CD7D20  40 82 00 30 */	bne lbl_80CD7D50
/* 80CD7D24  38 00 00 03 */	li r0, 3
/* 80CD7D28  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CD7D2C  80 9F 09 2C */	lwz r4, 0x92c(r31)
/* 80CD7D30  3C 04 00 01 */	addis r0, r4, 1
/* 80CD7D34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CD7D38  41 82 00 30 */	beq lbl_80CD7D68
/* 80CD7D3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD7D40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD7D44  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CD7D48  4B 36 B9 A4 */	b setPtI_Id__14dEvt_control_cFUi
/* 80CD7D4C  48 00 00 1C */	b lbl_80CD7D68
lbl_80CD7D50:
/* 80CD7D50  38 80 00 00 */	li r4, 0
/* 80CD7D54  38 A0 00 00 */	li r5, 0
/* 80CD7D58  4B 34 3C 78 */	b fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CD7D5C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CD7D60  60 00 00 08 */	ori r0, r0, 8
/* 80CD7D64  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CD7D68:
/* 80CD7D68  38 60 00 01 */	li r3, 1
/* 80CD7D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7D74  7C 08 03 A6 */	mtlr r0
/* 80CD7D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7D7C  4E 80 00 20 */	blr 
