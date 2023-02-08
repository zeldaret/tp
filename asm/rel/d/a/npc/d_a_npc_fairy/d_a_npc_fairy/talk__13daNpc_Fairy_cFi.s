lbl_809B4360:
/* 809B4360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B4364  7C 08 02 A6 */	mflr r0
/* 809B4368  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B436C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B4370  7C 7F 1B 78 */	mr r31, r3
/* 809B4374  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809B4378  2C 00 00 02 */	cmpwi r0, 2
/* 809B437C  41 82 00 6C */	beq lbl_809B43E8
/* 809B4380  40 80 00 B8 */	bge lbl_809B4438
/* 809B4384  2C 00 FF FF */	cmpwi r0, -1
/* 809B4388  41 82 00 B0 */	beq lbl_809B4438
/* 809B438C  40 80 00 08 */	bge lbl_809B4394
/* 809B4390  48 00 00 A8 */	b lbl_809B4438
lbl_809B4394:
/* 809B4394  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809B4398  2C 00 00 00 */	cmpwi r0, 0
/* 809B439C  40 82 00 9C */	bne lbl_809B4438
/* 809B43A0  88 1F 0F F6 */	lbz r0, 0xff6(r31)
/* 809B43A4  28 00 00 01 */	cmplwi r0, 1
/* 809B43A8  40 82 00 14 */	bne lbl_809B43BC
/* 809B43AC  38 80 FF FF */	li r4, -1
/* 809B43B0  38 A0 00 00 */	li r5, 0
/* 809B43B4  4B 79 78 3D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B43B8  48 00 00 10 */	b lbl_809B43C8
lbl_809B43BC:
/* 809B43BC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809B43C0  38 A0 00 00 */	li r5, 0
/* 809B43C4  4B 79 78 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809B43C8:
/* 809B43C8  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 809B43CC  2C 00 00 01 */	cmpwi r0, 1
/* 809B43D0  40 82 00 0C */	bne lbl_809B43DC
/* 809B43D4  38 00 00 00 */	li r0, 0
/* 809B43D8  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_809B43DC:
/* 809B43DC  38 00 00 02 */	li r0, 2
/* 809B43E0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809B43E4  48 00 00 54 */	b lbl_809B4438
lbl_809B43E8:
/* 809B43E8  88 1F 0F F6 */	lbz r0, 0xff6(r31)
/* 809B43EC  28 00 00 01 */	cmplwi r0, 1
/* 809B43F0  40 82 00 48 */	bne lbl_809B4438
/* 809B43F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B43F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B43FC  80 9F 0F DC */	lwz r4, 0xfdc(r31)
/* 809B4400  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 809B4404  7C 05 07 74 */	extsb r5, r0
/* 809B4408  4B 68 0F 59 */	bl isSwitch__10dSv_info_cCFii
/* 809B440C  2C 03 00 00 */	cmpwi r3, 0
/* 809B4410  40 82 00 10 */	bne lbl_809B4420
/* 809B4414  7F E3 FB 78 */	mr r3, r31
/* 809B4418  48 00 00 39 */	bl AppearDemoCall__13daNpc_Fairy_cFv
/* 809B441C  48 00 00 0C */	b lbl_809B4428
lbl_809B4420:
/* 809B4420  7F E3 FB 78 */	mr r3, r31
/* 809B4424  48 00 01 65 */	bl ReturnDemoCall__13daNpc_Fairy_cFv
lbl_809B4428:
/* 809B4428  7F E3 FB 78 */	mr r3, r31
/* 809B442C  4B 79 5D F9 */	bl evtChange__8daNpcT_cFv
/* 809B4430  38 60 00 01 */	li r3, 1
/* 809B4434  48 00 00 08 */	b lbl_809B443C
lbl_809B4438:
/* 809B4438  38 60 00 01 */	li r3, 1
lbl_809B443C:
/* 809B443C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4444  7C 08 03 A6 */	mtlr r0
/* 809B4448  38 21 00 10 */	addi r1, r1, 0x10
/* 809B444C  4E 80 00 20 */	blr 
