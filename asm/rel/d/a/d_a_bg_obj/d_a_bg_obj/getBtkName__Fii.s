lbl_804596C4:
/* 804596C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804596C8  7C 08 02 A6 */	mflr r0
/* 804596CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804596D0  7C 65 1B 78 */	mr r5, r3
/* 804596D4  7C 86 23 79 */	or. r6, r4, r4
/* 804596D8  41 82 00 08 */	beq lbl_804596E0
/* 804596DC  48 00 00 24 */	b lbl_80459700
lbl_804596E0:
/* 804596E0  3C 60 80 46 */	lis r3, l_btkName@ha /* 0x8045CE10@ha */
/* 804596E4  38 63 CE 10 */	addi r3, r3, l_btkName@l /* 0x8045CE10@l */
/* 804596E8  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 804596EC  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 804596F0  38 84 00 1B */	addi r4, r4, 0x1b
/* 804596F4  4C C6 31 82 */	crclr 6
/* 804596F8  4B F0 CD E5 */	bl sprintf
/* 804596FC  48 00 00 20 */	b lbl_8045971C
lbl_80459700:
/* 80459700  3C 60 80 46 */	lis r3, l_btkName@ha /* 0x8045CE10@ha */
/* 80459704  38 63 CE 10 */	addi r3, r3, l_btkName@l /* 0x8045CE10@l */
/* 80459708  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 8045970C  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 80459710  38 84 00 27 */	addi r4, r4, 0x27
/* 80459714  4C C6 31 82 */	crclr 6
/* 80459718  4B F0 CD C5 */	bl sprintf
lbl_8045971C:
/* 8045971C  3C 60 80 46 */	lis r3, l_btkName@ha /* 0x8045CE10@ha */
/* 80459720  38 63 CE 10 */	addi r3, r3, l_btkName@l /* 0x8045CE10@l */
/* 80459724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459728  7C 08 03 A6 */	mtlr r0
/* 8045972C  38 21 00 10 */	addi r1, r1, 0x10
/* 80459730  4E 80 00 20 */	blr 
