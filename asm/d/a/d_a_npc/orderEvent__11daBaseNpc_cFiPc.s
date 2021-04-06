lbl_8014EFF4:
/* 8014EFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EFF8  7C 08 02 A6 */	mflr r0
/* 8014EFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F004  7C 7F 1B 78 */	mr r31, r3
/* 8014F008  28 05 00 00 */	cmplwi r5, 0
/* 8014F00C  41 82 00 44 */	beq lbl_8014F050
/* 8014F010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014F014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014F018  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8014F01C  7F E4 FB 78 */	mr r4, r31
/* 8014F020  38 C0 00 FF */	li r6, 0xff
/* 8014F024  4B EF 87 35 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8014F028  B0 7F 08 9A */	sth r3, 0x89a(r31)
/* 8014F02C  7F E3 FB 78 */	mr r3, r31
/* 8014F030  A8 9F 08 9A */	lha r4, 0x89a(r31)
/* 8014F034  38 A0 00 FF */	li r5, 0xff
/* 8014F038  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8014F03C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8014F040  38 E0 00 00 */	li r7, 0
/* 8014F044  39 00 00 01 */	li r8, 1
/* 8014F048  4B EC C6 35 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8014F04C  48 00 00 3C */	b lbl_8014F088
lbl_8014F050:
/* 8014F050  80 1F 08 48 */	lwz r0, 0x848(r31)
/* 8014F054  2C 00 00 00 */	cmpwi r0, 0
/* 8014F058  41 80 00 30 */	blt lbl_8014F088
/* 8014F05C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8014F060  28 00 00 0A */	cmplwi r0, 0xa
/* 8014F064  40 82 00 24 */	bne lbl_8014F088
/* 8014F068  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8014F06C  60 00 00 01 */	ori r0, r0, 1
/* 8014F070  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8014F074  2C 04 00 00 */	cmpwi r4, 0
/* 8014F078  41 82 00 10 */	beq lbl_8014F088
/* 8014F07C  38 80 00 00 */	li r4, 0
/* 8014F080  38 A0 00 00 */	li r5, 0
/* 8014F084  4B EC C1 19 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8014F088:
/* 8014F088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F090  7C 08 03 A6 */	mtlr r0
/* 8014F094  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F098  4E 80 00 20 */	blr 
