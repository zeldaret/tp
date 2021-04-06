lbl_804E44B4:
/* 804E44B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E44B8  7C 08 02 A6 */	mflr r0
/* 804E44BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E44C0  4B FF E7 01 */	bl demoProc__11daBdoorL1_cFv
/* 804E44C4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804E44C8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804E44CC  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804E44D0  60 00 00 02 */	ori r0, r0, 2
/* 804E44D4  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804E44D8  38 60 00 01 */	li r3, 1
/* 804E44DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E44E0  7C 08 03 A6 */	mtlr r0
/* 804E44E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E44E8  4E 80 00 20 */	blr 
