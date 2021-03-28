lbl_80A3A404:
/* 80A3A404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3A408  7C 08 02 A6 */	mflr r0
/* 80A3A40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3A410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3A414  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3A418  7C 7F 1B 78 */	mr r31, r3
/* 80A3A41C  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80A3A420  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A424  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A428  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A3A42C  4B 92 E7 B8 */	b strlen
/* 80A3A430  28 03 00 00 */	cmplwi r3, 0
/* 80A3A434  41 82 00 B8 */	beq lbl_80A3A4EC
/* 80A3A438  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80A3A43C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80A3A440  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A444  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A448  7C 63 02 14 */	add r3, r3, r0
/* 80A3A44C  80 03 00 04 */	lwz r0, 4(r3)
/* 80A3A450  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A454  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A3A458  4B 92 E7 8C */	b strlen
/* 80A3A45C  28 03 00 00 */	cmplwi r3, 0
/* 80A3A460  41 82 00 3C */	beq lbl_80A3A49C
/* 80A3A464  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80A3A468  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80A3A46C  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A470  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A474  7C 63 02 14 */	add r3, r3, r0
/* 80A3A478  80 03 00 04 */	lwz r0, 4(r3)
/* 80A3A47C  54 00 10 3A */	slwi r0, r0, 2
/* 80A3A480  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A3A484  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80A3A488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3A48C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3A490  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A3A494  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80A3A498  4B 60 C3 68 */	b setObjectArchive__16dEvent_manager_cFPc
lbl_80A3A49C:
/* 80A3A49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3A4A0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A3A4A4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80A3A4A8  7F E4 FB 78 */	mr r4, r31
/* 80A3A4AC  80 BF 05 B4 */	lwz r5, 0x5b4(r31)
/* 80A3A4B0  A0 1F 0E 36 */	lhz r0, 0xe36(r31)
/* 80A3A4B4  54 00 18 38 */	slwi r0, r0, 3
/* 80A3A4B8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A3A4BC  38 C0 00 FF */	li r6, 0xff
/* 80A3A4C0  4B 60 D2 98 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A3A4C4  B0 7F 0E 24 */	sth r3, 0xe24(r31)
/* 80A3A4C8  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A3A4CC  7F E4 FB 78 */	mr r4, r31
/* 80A3A4D0  4B 60 80 48 */	b reset__14dEvt_control_cFPv
/* 80A3A4D4  7F E3 FB 78 */	mr r3, r31
/* 80A3A4D8  A8 9F 0E 24 */	lha r4, 0xe24(r31)
/* 80A3A4DC  38 A0 00 01 */	li r5, 1
/* 80A3A4E0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A3A4E4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A3A4E8  4B 5E 10 FC */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
lbl_80A3A4EC:
/* 80A3A4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3A4F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3A4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3A4F8  7C 08 03 A6 */	mtlr r0
/* 80A3A4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3A500  4E 80 00 20 */	blr 
