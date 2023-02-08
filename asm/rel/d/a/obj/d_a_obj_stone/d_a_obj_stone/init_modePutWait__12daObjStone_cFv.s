lbl_80CEAF88:
/* 80CEAF88  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEAF8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEAF90  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEAF94  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEAF98  60 00 00 01 */	ori r0, r0, 1
/* 80CEAF9C  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEAFA0  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CEAFA4  60 00 00 10 */	ori r0, r0, 0x10
/* 80CEAFA8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CEAFAC  88 03 09 06 */	lbz r0, 0x906(r3)
/* 80CEAFB0  54 00 10 3A */	slwi r0, r0, 2
/* 80CEAFB4  3C 80 80 CF */	lis r4, l_initial_offsetY@ha /* 0x80CECB14@ha */
/* 80CEAFB8  38 84 CB 14 */	addi r4, r4, l_initial_offsetY@l /* 0x80CECB14@l */
/* 80CEAFBC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEAFC0  D0 03 09 40 */	stfs f0, 0x940(r3)
/* 80CEAFC4  38 00 00 00 */	li r0, 0
/* 80CEAFC8  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEAFCC  38 00 00 03 */	li r0, 3
/* 80CEAFD0  98 03 09 07 */	stb r0, 0x907(r3)
/* 80CEAFD4  4E 80 00 20 */	blr 
