lbl_80653DB4:
/* 80653DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653DB8  7C 08 02 A6 */	mflr r0
/* 80653DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653DC0  28 03 00 00 */	cmplwi r3, 0
/* 80653DC4  41 82 00 08 */	beq lbl_80653DCC
/* 80653DC8  38 63 05 68 */	addi r3, r3, 0x568
lbl_80653DCC:
/* 80653DCC  3C 80 80 65 */	lis r4, l_arcName@ha /* 0x806556D4@ha */
/* 80653DD0  38 84 56 D4 */	addi r4, r4, l_arcName@l /* 0x806556D4@l */
/* 80653DD4  80 84 00 00 */	lwz r4, 0(r4)
/* 80653DD8  4B 9D 92 31 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80653DDC  38 00 00 00 */	li r0, 0
/* 80653DE0  3C 60 80 65 */	lis r3, myclass__13daBalloon2D_c@ha /* 0x80655844@ha */
/* 80653DE4  90 03 58 44 */	stw r0, myclass__13daBalloon2D_c@l(r3)  /* 0x80655844@l */
/* 80653DE8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80653DEC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80653DF0  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 80653DF4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80653DF8  B0 03 00 A2 */	sth r0, 0xa2(r3)
/* 80653DFC  38 60 00 01 */	li r3, 1
/* 80653E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653E04  7C 08 03 A6 */	mtlr r0
/* 80653E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80653E0C  4E 80 00 20 */	blr 
