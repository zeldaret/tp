lbl_805A46B8:
/* 805A46B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A46BC  7C 08 02 A6 */	mflr r0
/* 805A46C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A46C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A46C8  7C 7F 1B 78 */	mr r31, r3
/* 805A46CC  88 83 05 70 */	lbz r4, 0x570(r3)
/* 805A46D0  28 04 00 FF */	cmplwi r4, 0xff
/* 805A46D4  41 82 00 60 */	beq lbl_805A4734
/* 805A46D8  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A46DC  28 00 00 02 */	cmplwi r0, 2
/* 805A46E0  41 82 00 54 */	beq lbl_805A4734
/* 805A46E4  28 00 00 00 */	cmplwi r0, 0
/* 805A46E8  40 82 00 20 */	bne lbl_805A4708
/* 805A46EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A46F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A46F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A46F8  7C 05 07 74 */	extsb r5, r0
/* 805A46FC  4B A9 0C 65 */	bl isSwitch__10dSv_info_cCFii
/* 805A4700  2C 03 00 00 */	cmpwi r3, 0
/* 805A4704  40 82 00 30 */	bne lbl_805A4734
lbl_805A4708:
/* 805A4708  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 805A470C  28 00 00 01 */	cmplwi r0, 1
/* 805A4710  40 82 00 30 */	bne lbl_805A4740
/* 805A4714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A4718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A471C  88 9F 05 70 */	lbz r4, 0x570(r31)
/* 805A4720  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4724  7C 05 07 74 */	extsb r5, r0
/* 805A4728  4B A9 0C 39 */	bl isSwitch__10dSv_info_cCFii
/* 805A472C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4730  40 82 00 10 */	bne lbl_805A4740
lbl_805A4734:
/* 805A4734  38 00 00 01 */	li r0, 1
/* 805A4738  98 1F 05 71 */	stb r0, 0x571(r31)
/* 805A473C  48 00 00 0C */	b lbl_805A4748
lbl_805A4740:
/* 805A4740  38 00 00 00 */	li r0, 0
/* 805A4744  98 1F 05 71 */	stb r0, 0x571(r31)
lbl_805A4748:
/* 805A4748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A474C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4750  7C 08 03 A6 */	mtlr r0
/* 805A4754  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4758  4E 80 00 20 */	blr 
