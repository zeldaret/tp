lbl_80484708:
/* 80484708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048470C  7C 08 02 A6 */	mflr r0
/* 80484710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80484718  7C 7F 1B 78 */	mr r31, r3
/* 8048471C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80484720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80484724  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80484728  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 8048472C  4B BC 2D 91 */	bl getEventData__16dEvent_manager_cFs
/* 80484730  28 03 00 00 */	cmplwi r3, 0
/* 80484734  41 82 00 6C */	beq lbl_804847A0
/* 80484738  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8048473C  2C 00 00 00 */	cmpwi r0, 0
/* 80484740  41 82 00 14 */	beq lbl_80484754
/* 80484744  2C 00 00 01 */	cmpwi r0, 1
/* 80484748  41 82 00 0C */	beq lbl_80484754
/* 8048474C  2C 00 00 02 */	cmpwi r0, 2
/* 80484750  40 82 00 50 */	bne lbl_804847A0
lbl_80484754:
/* 80484754  7F E3 FB 78 */	mr r3, r31
/* 80484758  4B FF FF 5D */	bl demo_stop_puase__Q211daObjSwpush5Act_cFv
/* 8048475C  38 00 00 03 */	li r0, 3
/* 80484760  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 80484764  7F E3 FB 78 */	mr r3, r31
/* 80484768  38 80 00 08 */	li r4, 8
/* 8048476C  38 A0 00 00 */	li r5, 0
/* 80484770  48 00 05 75 */	bl func_80484CE4
/* 80484774  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80484778  7F E3 FB 78 */	mr r3, r31
/* 8048477C  A8 9F 05 BA */	lha r4, 0x5ba(r31)
/* 80484780  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80484784  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80484788  38 E0 00 00 */	li r7, 0
/* 8048478C  39 00 00 01 */	li r8, 1
/* 80484790  4B B9 6E ED */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80484794  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80484798  60 00 00 02 */	ori r0, r0, 2
/* 8048479C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_804847A0:
/* 804847A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804847A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804847A8  7C 08 03 A6 */	mtlr r0
/* 804847AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804847B0  4E 80 00 20 */	blr 
