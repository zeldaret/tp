lbl_80CDAC18:
/* 80CDAC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDAC1C  7C 08 02 A6 */	mflr r0
/* 80CDAC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDAC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDAC28  7C 7F 1B 78 */	mr r31, r3
/* 80CDAC2C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CDAC30  28 00 00 04 */	cmplwi r0, 4
/* 80CDAC34  40 82 00 30 */	bne lbl_80CDAC64
/* 80CDAC38  38 00 00 04 */	li r0, 4
/* 80CDAC3C  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDAC40  80 9F 09 2C */	lwz r4, 0x92c(r31)
/* 80CDAC44  3C 04 00 01 */	addis r0, r4, 1
/* 80CDAC48  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CDAC4C  41 82 00 30 */	beq lbl_80CDAC7C
/* 80CDAC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDAC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDAC58  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CDAC5C  4B 36 8A 91 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80CDAC60  48 00 00 1C */	b lbl_80CDAC7C
lbl_80CDAC64:
/* 80CDAC64  38 80 00 00 */	li r4, 0
/* 80CDAC68  38 A0 00 00 */	li r5, 0
/* 80CDAC6C  4B 34 0D 65 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80CDAC70  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CDAC74  60 00 00 08 */	ori r0, r0, 8
/* 80CDAC78  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CDAC7C:
/* 80CDAC7C  38 60 00 01 */	li r3, 1
/* 80CDAC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDAC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDAC88  7C 08 03 A6 */	mtlr r0
/* 80CDAC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDAC90  4E 80 00 20 */	blr 
