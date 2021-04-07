lbl_80459658:
/* 80459658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045965C  7C 08 02 A6 */	mflr r0
/* 80459660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459664  7C 65 1B 78 */	mr r5, r3
/* 80459668  7C 86 23 79 */	or. r6, r4, r4
/* 8045966C  41 82 00 08 */	beq lbl_80459674
/* 80459670  48 00 00 20 */	b lbl_80459690
lbl_80459674:
/* 80459674  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x8045CE00@ha */
/* 80459678  38 63 CE 00 */	addi r3, r3, l_bmdName@l /* 0x8045CE00@l */
/* 8045967C  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 80459680  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 80459684  4C C6 31 82 */	crclr 6
/* 80459688  4B F0 CE 55 */	bl sprintf
/* 8045968C  48 00 00 20 */	b lbl_804596AC
lbl_80459690:
/* 80459690  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x8045CE00@ha */
/* 80459694  38 63 CE 00 */	addi r3, r3, l_bmdName@l /* 0x8045CE00@l */
/* 80459698  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 8045969C  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 804596A0  38 84 00 0C */	addi r4, r4, 0xc
/* 804596A4  4C C6 31 82 */	crclr 6
/* 804596A8  4B F0 CE 35 */	bl sprintf
lbl_804596AC:
/* 804596AC  3C 60 80 46 */	lis r3, l_bmdName@ha /* 0x8045CE00@ha */
/* 804596B0  38 63 CE 00 */	addi r3, r3, l_bmdName@l /* 0x8045CE00@l */
/* 804596B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804596B8  7C 08 03 A6 */	mtlr r0
/* 804596BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804596C0  4E 80 00 20 */	blr 
