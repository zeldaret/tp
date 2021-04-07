lbl_809502B4:
/* 809502B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809502B8  7C 08 02 A6 */	mflr r0
/* 809502BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809502C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809502C4  7C 7F 1B 78 */	mr r31, r3
/* 809502C8  A8 03 0A 52 */	lha r0, 0xa52(r3)
/* 809502CC  2C 00 00 00 */	cmpwi r0, 0
/* 809502D0  41 82 00 48 */	beq lbl_80950318
/* 809502D4  38 00 00 0A */	li r0, 0xa
/* 809502D8  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 809502DC  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 809502E0  7F E4 FB 78 */	mr r4, r31
/* 809502E4  38 A0 00 00 */	li r5, 0
/* 809502E8  38 C0 00 00 */	li r6, 0
/* 809502EC  4B 8F 9F ED */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 809502F0  2C 03 00 00 */	cmpwi r3, 0
/* 809502F4  41 82 00 1C */	beq lbl_80950310
/* 809502F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809502FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950300  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80950304  4B 6F 21 65 */	bl reset__14dEvt_control_cFv
/* 80950308  38 00 00 00 */	li r0, 0
/* 8095030C  B0 1F 0A 52 */	sth r0, 0xa52(r31)
lbl_80950310:
/* 80950310  38 60 00 01 */	li r3, 1
/* 80950314  48 00 00 B0 */	b lbl_809503C4
lbl_80950318:
/* 80950318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095031C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950320  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80950324  28 00 00 00 */	cmplwi r0, 0
/* 80950328  41 82 00 30 */	beq lbl_80950358
/* 8095032C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80950330  28 00 00 01 */	cmplwi r0, 1
/* 80950334  40 82 00 24 */	bne lbl_80950358
/* 80950338  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 8095033C  7F E4 FB 78 */	mr r4, r31
/* 80950340  A8 BF 0A 54 */	lha r5, 0xa54(r31)
/* 80950344  38 C0 00 00 */	li r6, 0
/* 80950348  38 E0 00 00 */	li r7, 0
/* 8095034C  4B 8F 9C 45 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80950350  38 00 00 01 */	li r0, 1
/* 80950354  B0 1F 0A 52 */	sth r0, 0xa52(r31)
lbl_80950358:
/* 80950358  88 1F 0A 50 */	lbz r0, 0xa50(r31)
/* 8095035C  2C 00 00 02 */	cmpwi r0, 2
/* 80950360  40 82 00 44 */	bne lbl_809503A4
/* 80950364  A8 1F 0A 54 */	lha r0, 0xa54(r31)
/* 80950368  2C 00 FF FF */	cmpwi r0, -1
/* 8095036C  41 82 00 38 */	beq lbl_809503A4
/* 80950370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950378  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8095037C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80950380  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80950384  41 82 00 20 */	beq lbl_809503A4
/* 80950388  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8095038C  60 00 00 0A */	ori r0, r0, 0xa
/* 80950390  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80950394  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80950398  60 00 00 01 */	ori r0, r0, 1
/* 8095039C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 809503A0  48 00 00 20 */	b lbl_809503C0
lbl_809503A4:
/* 809503A4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809503A8  54 00 00 3E */	slwi r0, r0, 0
/* 809503AC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 809503B0  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 809503B4  38 00 FF F5 */	li r0, -11
/* 809503B8  7C 60 00 38 */	and r0, r3, r0
/* 809503BC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809503C0:
/* 809503C0  38 60 00 00 */	li r3, 0
lbl_809503C4:
/* 809503C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809503C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809503CC  7C 08 03 A6 */	mtlr r0
/* 809503D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809503D4  4E 80 00 20 */	blr 
