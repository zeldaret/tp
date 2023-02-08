lbl_80459734:
/* 80459734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459738  7C 08 02 A6 */	mflr r0
/* 8045973C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459740  7C 65 1B 78 */	mr r5, r3
/* 80459744  7C 86 23 79 */	or. r6, r4, r4
/* 80459748  41 82 00 08 */	beq lbl_80459750
/* 8045974C  48 00 00 24 */	b lbl_80459770
lbl_80459750:
/* 80459750  3C 60 80 46 */	lis r3, l_brkName@ha /* 0x8045CE20@ha */
/* 80459754  38 63 CE 20 */	addi r3, r3, l_brkName@l /* 0x8045CE20@l */
/* 80459758  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 8045975C  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 80459760  38 84 00 36 */	addi r4, r4, 0x36
/* 80459764  4C C6 31 82 */	crclr 6
/* 80459768  4B F0 CD 75 */	bl sprintf
/* 8045976C  48 00 00 20 */	b lbl_8045978C
lbl_80459770:
/* 80459770  3C 60 80 46 */	lis r3, l_brkName@ha /* 0x8045CE20@ha */
/* 80459774  38 63 CE 20 */	addi r3, r3, l_brkName@l /* 0x8045CE20@l */
/* 80459778  3C 80 80 46 */	lis r4, d_a_bg_obj__stringBase0@ha /* 0x8045CA20@ha */
/* 8045977C  38 84 CA 20 */	addi r4, r4, d_a_bg_obj__stringBase0@l /* 0x8045CA20@l */
/* 80459780  38 84 00 42 */	addi r4, r4, 0x42
/* 80459784  4C C6 31 82 */	crclr 6
/* 80459788  4B F0 CD 55 */	bl sprintf
lbl_8045978C:
/* 8045978C  3C 60 80 46 */	lis r3, l_brkName@ha /* 0x8045CE20@ha */
/* 80459790  38 63 CE 20 */	addi r3, r3, l_brkName@l /* 0x8045CE20@l */
/* 80459794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459798  7C 08 03 A6 */	mtlr r0
/* 8045979C  38 21 00 10 */	addi r1, r1, 0x10
/* 804597A0  4E 80 00 20 */	blr 
