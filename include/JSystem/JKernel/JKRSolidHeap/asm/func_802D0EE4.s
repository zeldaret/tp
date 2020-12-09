/* do_free__12JKRSolidHeapFPv __ct__12JKRSolidHeapFPvUlP7JKRHeapb::do_free(void *) */
/* missing reference */
/* 802D0EE4 002CDE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0EE8 002CDE28  7C 08 02 A6 */	mflr r0
/* 802D0EEC 002CDE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0EF0 002CDE30  3C 60 80 3A */	lis r3, lbl_8039CE50@ha
/* 802D0EF4 002CDE34  38 63 CE 50 */	addi r3, r3, lbl_8039CE50@l
/* 802D0EF8 002CDE38  38 63 00 62 */	addi r3, r3, 0x62
/* 802D0EFC 002CDE3C  4C C6 31 82 */	crclr 6
/* 802D0F00 002CDE40  48 01 77 7D */	bl JUTWarningConsole_f
/* 802D0F04 002CDE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0F08 002CDE48  7C 08 03 A6 */	mtlr r0
/* 802D0F0C 002CDE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0F10 002CDE50  4E 80 00 20 */	blr
