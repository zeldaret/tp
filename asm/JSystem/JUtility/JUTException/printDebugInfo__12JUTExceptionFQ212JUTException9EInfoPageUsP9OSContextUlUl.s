lbl_802E2E70:
/* 802E2E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2E74  7C 08 02 A6 */	mflr r0
/* 802E2E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2E7C  2C 04 00 03 */	cmpwi r4, 3
/* 802E2E80  41 82 00 68 */	beq lbl_802E2EE8
/* 802E2E84  40 80 00 14 */	bge lbl_802E2E98
/* 802E2E88  2C 04 00 01 */	cmpwi r4, 1
/* 802E2E8C  41 82 00 1C */	beq lbl_802E2EA8
/* 802E2E90  40 80 00 24 */	bge lbl_802E2EB4
/* 802E2E94  48 00 00 74 */	b lbl_802E2F08
lbl_802E2E98:
/* 802E2E98  2C 04 00 05 */	cmpwi r4, 5
/* 802E2E9C  41 82 00 64 */	beq lbl_802E2F00
/* 802E2EA0  40 80 00 68 */	bge lbl_802E2F08
/* 802E2EA4  48 00 00 50 */	b lbl_802E2EF4
lbl_802E2EA8:
/* 802E2EA8  7C C4 33 78 */	mr r4, r6
/* 802E2EAC  4B FF FB D9 */	bl showGPR__12JUTExceptionFP9OSContext
/* 802E2EB0  48 00 00 58 */	b lbl_802E2F08
lbl_802E2EB4:
/* 802E2EB4  7C C4 33 78 */	mr r4, r6
/* 802E2EB8  4B FF F5 9D */	bl showFloat__12JUTExceptionFP9OSContext
/* 802E2EBC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2EC0  28 03 00 00 */	cmplwi r3, 0
/* 802E2EC4  41 82 00 44 */	beq lbl_802E2F08
/* 802E2EC8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2ECC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2ED0  38 84 04 4A */	addi r4, r4, 0x44a
/* 802E2ED4  80 AD 8F A0 */	lwz r5, msr__12JUTException(r13)
/* 802E2ED8  80 CD 8F A4 */	lwz r6, fpscr__12JUTException(r13)
/* 802E2EDC  4C C6 31 82 */	crclr 6
/* 802E2EE0  48 00 4C D9 */	bl print_f__10JUTConsoleFPCce
/* 802E2EE4  48 00 00 24 */	b lbl_802E2F08
lbl_802E2EE8:
/* 802E2EE8  7C C4 33 78 */	mr r4, r6
/* 802E2EEC  4B FF F7 C5 */	bl showStack__12JUTExceptionFP9OSContext
/* 802E2EF0  48 00 00 18 */	b lbl_802E2F08
lbl_802E2EF4:
/* 802E2EF4  7C C4 33 78 */	mr r4, r6
/* 802E2EF8  4B FF FD A9 */	bl showGPRMap__12JUTExceptionFP9OSContext
/* 802E2EFC  48 00 00 0C */	b lbl_802E2F08
lbl_802E2F00:
/* 802E2F00  7C C4 33 78 */	mr r4, r6
/* 802E2F04  4B FF FE A9 */	bl showSRR0Map__12JUTExceptionFP9OSContext
lbl_802E2F08:
/* 802E2F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2F0C  7C 08 03 A6 */	mtlr r0
/* 802E2F10  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2F14  4E 80 00 20 */	blr 
