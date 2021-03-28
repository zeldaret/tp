lbl_80656D94:
/* 80656D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656D98  7C 08 02 A6 */	mflr r0
/* 80656D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656DA0  28 03 00 00 */	cmplwi r3, 0
/* 80656DA4  41 82 00 08 */	beq lbl_80656DAC
/* 80656DA8  38 63 05 68 */	addi r3, r3, 0x568
lbl_80656DAC:
/* 80656DAC  3C 80 80 65 */	lis r4, l_arcName@ha
/* 80656DB0  38 84 79 F4 */	addi r4, r4, l_arcName@l
/* 80656DB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80656DB8  4B 9D 62 50 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80656DBC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80656DC0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80656DC4  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 80656DC8  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80656DCC  B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 80656DD0  38 60 00 01 */	li r3, 1
/* 80656DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80656DD8  7C 08 03 A6 */	mtlr r0
/* 80656DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80656DE0  4E 80 00 20 */	blr 
