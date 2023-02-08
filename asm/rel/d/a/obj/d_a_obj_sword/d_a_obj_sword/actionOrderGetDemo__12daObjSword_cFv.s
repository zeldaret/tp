lbl_80CFDB04:
/* 80CFDB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDB08  7C 08 02 A6 */	mflr r0
/* 80CFDB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDB14  7C 7F 1B 78 */	mr r31, r3
/* 80CFDB18  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CFDB1C  28 00 00 04 */	cmplwi r0, 4
/* 80CFDB20  40 82 00 30 */	bne lbl_80CFDB50
/* 80CFDB24  38 00 00 02 */	li r0, 2
/* 80CFDB28  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CFDB2C  80 9F 09 30 */	lwz r4, 0x930(r31)
/* 80CFDB30  3C 04 00 01 */	addis r0, r4, 1
/* 80CFDB34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CFDB38  41 82 00 30 */	beq lbl_80CFDB68
/* 80CFDB3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFDB40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFDB44  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CFDB48  4B 34 5B A5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80CFDB4C  48 00 00 1C */	b lbl_80CFDB68
lbl_80CFDB50:
/* 80CFDB50  38 80 00 00 */	li r4, 0
/* 80CFDB54  38 A0 00 00 */	li r5, 0
/* 80CFDB58  4B 31 DE 79 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CFDB5C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CFDB60  60 00 00 08 */	ori r0, r0, 8
/* 80CFDB64  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CFDB68:
/* 80CFDB68  38 60 00 01 */	li r3, 1
/* 80CFDB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDB74  7C 08 03 A6 */	mtlr r0
/* 80CFDB78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDB7C  4E 80 00 20 */	blr 
