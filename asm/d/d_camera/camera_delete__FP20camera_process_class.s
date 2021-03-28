lbl_80182484:
/* 80182484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80182488  7C 08 02 A6 */	mflr r0
/* 8018248C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80182490  38 63 02 48 */	addi r3, r3, 0x248
/* 80182494  38 80 FF FF */	li r4, -1
/* 80182498  4B FD DE 6D */	bl __dt__9dCamera_cFv
/* 8018249C  38 00 00 00 */	li r0, 0
/* 801824A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801824A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801824A8  90 03 5D 74 */	stw r0, 0x5d74(r3)
/* 801824AC  38 60 00 01 */	li r3, 1
/* 801824B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801824B4  7C 08 03 A6 */	mtlr r0
/* 801824B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801824BC  4E 80 00 20 */	blr 
