/* do_getSize__12JKRSolidHeapFPv __ct__12JKRSolidHeapFPvUlP7JKRHeapb::do_getSize(void *) */
/* missing reference */
/* 802D1038 002CDF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D103C 002CDF7C  7C 08 02 A6 */	mflr r0
/* 802D1040 002CDF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1044 002CDF84  3C 60 80 3A */	lis r3, lbl_8039CE50@ha
/* 802D1048 002CDF88  38 63 CE 50 */	addi r3, r3, lbl_8039CE50@l
/* 802D104C 002CDF8C  38 63 00 B8 */	addi r3, r3, 0xb8
/* 802D1050 002CDF90  4C C6 31 82 */	crclr 6
/* 802D1054 002CDF94  48 01 76 29 */	bl JUTWarningConsole_f
/* 802D1058 002CDF98  38 60 FF FF */	li r3, -1
/* 802D105C 002CDF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1060 002CDFA0  7C 08 03 A6 */	mtlr r0
/* 802D1064 002CDFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1068 002CDFA8  4E 80 00 20 */	blr
