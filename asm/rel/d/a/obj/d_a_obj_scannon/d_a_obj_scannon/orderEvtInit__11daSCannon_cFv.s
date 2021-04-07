lbl_80CC7A10:
/* 80CC7A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7A14  7C 08 02 A6 */	mflr r0
/* 80CC7A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7A20  7C 7F 1B 78 */	mr r31, r3
/* 80CC7A24  3C 60 80 CD */	lis r3, l_arcName_Zev@ha /* 0x80CC932C@ha */
/* 80CC7A28  80 03 93 2C */	lwz r0, l_arcName_Zev@l(r3)  /* 0x80CC932C@l */
/* 80CC7A2C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CC7A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC7A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7A38  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CC7A3C  7F E4 FB 78 */	mr r4, r31
/* 80CC7A40  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80CC7A44  54 00 10 3A */	slwi r0, r0, 2
/* 80CC7A48  3C A0 80 CD */	lis r5, l_eventName@ha /* 0x80CC9338@ha */
/* 80CC7A4C  38 A5 93 38 */	addi r5, r5, l_eventName@l /* 0x80CC9338@l */
/* 80CC7A50  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CC7A54  38 C0 00 FF */	li r6, 0xff
/* 80CC7A58  4B 37 FD 01 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CC7A5C  B0 7F 06 10 */	sth r3, 0x610(r31)
/* 80CC7A60  7F E3 FB 78 */	mr r3, r31
/* 80CC7A64  A8 9F 06 10 */	lha r4, 0x610(r31)
/* 80CC7A68  38 A0 00 FF */	li r5, 0xff
/* 80CC7A6C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CC7A70  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CC7A74  88 FF 06 18 */	lbz r7, 0x618(r31)
/* 80CC7A78  38 07 FF FF */	addi r0, r7, -1
/* 80CC7A7C  30 00 FF FF */	addic r0, r0, -1
/* 80CC7A80  7C E0 01 10 */	subfe r7, r0, r0
/* 80CC7A84  38 00 00 02 */	li r0, 2
/* 80CC7A88  7C 00 38 78 */	andc r0, r0, r7
/* 80CC7A8C  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 80CC7A90  39 00 00 01 */	li r8, 1
/* 80CC7A94  4B 35 3B E9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CC7A98  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CC7A9C  60 00 00 02 */	ori r0, r0, 2
/* 80CC7AA0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80CC7AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC7AAC  7C 08 03 A6 */	mtlr r0
/* 80CC7AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7AB4  4E 80 00 20 */	blr 
