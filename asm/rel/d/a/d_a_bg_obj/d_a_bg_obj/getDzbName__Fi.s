lbl_804597A4:
/* 804597A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804597A8  7C 08 02 A6 */	mflr r0
/* 804597AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804597B0  7C 65 1B 78 */	mr r5, r3
/* 804597B4  3C 60 80 46 */	lis r3, l_dzbName@ha /* 0x8045CE30@ha */
/* 804597B8  38 63 CE 30 */	addi r3, r3, l_dzbName@l /* 0x8045CE30@l */
/* 804597BC  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 804597C0  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 804597C4  38 84 00 51 */	addi r4, r4, 0x51
/* 804597C8  4C C6 31 82 */	crclr 6
/* 804597CC  4B F0 CD 11 */	bl sprintf
/* 804597D0  3C 60 80 46 */	lis r3, l_dzbName@ha /* 0x8045CE30@ha */
/* 804597D4  38 63 CE 30 */	addi r3, r3, l_dzbName@l /* 0x8045CE30@l */
/* 804597D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804597DC  7C 08 03 A6 */	mtlr r0
/* 804597E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804597E4  4E 80 00 20 */	blr 
