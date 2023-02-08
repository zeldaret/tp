lbl_80CFF48C:
/* 80CFF48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF490  7C 08 02 A6 */	mflr r0
/* 80CFF494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF49C  7C 7F 1B 78 */	mr r31, r3
/* 80CFF4A0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CFF4A4  28 00 00 02 */	cmplwi r0, 2
/* 80CFF4A8  40 82 00 0C */	bne lbl_80CFF4B4
/* 80CFF4AC  48 00 00 55 */	bl demo_runSw_init__Q212daObjSwpush25Act_cFv
/* 80CFF4B0  48 00 00 3C */	b lbl_80CFF4EC
lbl_80CFF4B4:
/* 80CFF4B4  38 80 00 08 */	li r4, 8
/* 80CFF4B8  38 A0 00 00 */	li r5, 0
/* 80CFF4BC  48 00 07 15 */	bl func_80CFFBD0
/* 80CFF4C0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80CFF4C4  7F E3 FB 78 */	mr r3, r31
/* 80CFF4C8  A8 9F 05 CE */	lha r4, 0x5ce(r31)
/* 80CFF4CC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80CFF4D0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80CFF4D4  38 E0 00 00 */	li r7, 0
/* 80CFF4D8  39 00 00 01 */	li r8, 1
/* 80CFF4DC  4B 31 C1 A1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80CFF4E0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CFF4E4  60 00 00 02 */	ori r0, r0, 2
/* 80CFF4E8  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CFF4EC:
/* 80CFF4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF4F4  7C 08 03 A6 */	mtlr r0
/* 80CFF4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF4FC  4E 80 00 20 */	blr 
