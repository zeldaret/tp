lbl_809BC4AC:
/* 809BC4AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BC4B0  7C 08 02 A6 */	mflr r0
/* 809BC4B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BC4B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809BC4BC  7C 7F 1B 78 */	mr r31, r3
/* 809BC4C0  3C 80 80 9C */	lis r4, lit_4607@ha /* 0x809BE650@ha */
/* 809BC4C4  38 A4 E6 50 */	addi r5, r4, lit_4607@l /* 0x809BE650@l */
/* 809BC4C8  80 85 00 00 */	lwz r4, 0(r5)
/* 809BC4CC  80 05 00 04 */	lwz r0, 4(r5)
/* 809BC4D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 809BC4D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 809BC4D8  80 05 00 08 */	lwz r0, 8(r5)
/* 809BC4DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809BC4E0  38 81 00 14 */	addi r4, r1, 0x14
/* 809BC4E4  48 00 08 4D */	bl chkAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i
/* 809BC4E8  2C 03 00 00 */	cmpwi r3, 0
/* 809BC4EC  41 82 00 1C */	beq lbl_809BC508
/* 809BC4F0  7F E3 FB 78 */	mr r3, r31
/* 809BC4F4  38 80 00 00 */	li r4, 0
/* 809BC4F8  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 809BC4FC  4B 9A 5B 89 */	bl __ptmf_scall
/* 809BC500  60 00 00 00 */	nop 
/* 809BC504  48 00 00 90 */	b lbl_809BC594
lbl_809BC508:
/* 809BC508  38 00 00 00 */	li r0, 0
/* 809BC50C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 809BC510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BC514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BC518  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 809BC51C  28 04 00 01 */	cmplwi r4, 1
/* 809BC520  41 82 00 0C */	beq lbl_809BC52C
/* 809BC524  28 04 00 02 */	cmplwi r4, 2
/* 809BC528  40 82 00 08 */	bne lbl_809BC530
lbl_809BC52C:
/* 809BC52C  38 00 00 01 */	li r0, 1
lbl_809BC530:
/* 809BC530  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809BC534  41 82 00 34 */	beq lbl_809BC568
/* 809BC538  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809BC53C  4B 68 C2 B5 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809BC540  2C 03 00 00 */	cmpwi r3, 0
/* 809BC544  40 82 00 0C */	bne lbl_809BC550
/* 809BC548  38 60 00 01 */	li r3, 1
/* 809BC54C  48 00 00 4C */	b lbl_809BC598
lbl_809BC550:
/* 809BC550  38 00 00 01 */	li r0, 1
/* 809BC554  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 809BC558  7F E3 FB 78 */	mr r3, r31
/* 809BC55C  4B 78 DC C9 */	bl evtChange__8daNpcT_cFv
/* 809BC560  38 60 00 01 */	li r3, 1
/* 809BC564  48 00 00 34 */	b lbl_809BC598
lbl_809BC568:
/* 809BC568  3C 60 80 9C */	lis r3, lit_4617@ha /* 0x809BE65C@ha */
/* 809BC56C  38 83 E6 5C */	addi r4, r3, lit_4617@l /* 0x809BE65C@l */
/* 809BC570  80 64 00 00 */	lwz r3, 0(r4)
/* 809BC574  80 04 00 04 */	lwz r0, 4(r4)
/* 809BC578  90 61 00 08 */	stw r3, 8(r1)
/* 809BC57C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BC580  80 04 00 08 */	lwz r0, 8(r4)
/* 809BC584  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BC588  7F E3 FB 78 */	mr r3, r31
/* 809BC58C  38 81 00 08 */	addi r4, r1, 8
/* 809BC590  48 00 07 CD */	bl setAction__11daNpc_Gnd_cFM11daNpc_Gnd_cFPCvPvPv_i
lbl_809BC594:
/* 809BC594  38 60 00 01 */	li r3, 1
lbl_809BC598:
/* 809BC598  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809BC59C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BC5A0  7C 08 03 A6 */	mtlr r0
/* 809BC5A4  38 21 00 30 */	addi r1, r1, 0x30
/* 809BC5A8  4E 80 00 20 */	blr 
