lbl_80AA31EC:
/* 80AA31EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA31F0  7C 08 02 A6 */	mflr r0
/* 80AA31F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA31F8  80 03 0A F8 */	lwz r0, 0xaf8(r3)
/* 80AA31FC  90 03 0A FC */	stw r0, 0xafc(r3)
/* 80AA3200  90 83 0A F8 */	stw r4, 0xaf8(r3)
/* 80AA3204  80 03 0A F8 */	lwz r0, 0xaf8(r3)
/* 80AA3208  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80AA320C  3C 80 80 AA */	lis r4, ActionTable__13daNpcPasser_c@ha
/* 80AA3210  38 04 6A 9C */	addi r0, r4, ActionTable__13daNpcPasser_c@l
/* 80AA3214  7C 00 2A 14 */	add r0, r0, r5
/* 80AA3218  90 03 0A F4 */	stw r0, 0xaf4(r3)
/* 80AA321C  48 00 00 15 */	bl callInit__13daNpcPasser_cFv
/* 80AA3220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA3224  7C 08 03 A6 */	mtlr r0
/* 80AA3228  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA322C  4E 80 00 20 */	blr 
