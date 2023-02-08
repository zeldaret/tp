lbl_806E3420:
/* 806E3420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E3424  7C 08 02 A6 */	mflr r0
/* 806E3428  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E342C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E3430  7C 7F 1B 78 */	mr r31, r3
/* 806E3434  A8 03 05 D6 */	lha r0, 0x5d6(r3)
/* 806E3438  2C 00 00 01 */	cmpwi r0, 1
/* 806E343C  41 82 00 58 */	beq lbl_806E3494
/* 806E3440  40 80 00 10 */	bge lbl_806E3450
/* 806E3444  2C 00 00 00 */	cmpwi r0, 0
/* 806E3448  40 80 00 14 */	bge lbl_806E345C
/* 806E344C  48 00 00 68 */	b lbl_806E34B4
lbl_806E3450:
/* 806E3450  2C 00 00 03 */	cmpwi r0, 3
/* 806E3454  40 80 00 60 */	bge lbl_806E34B4
/* 806E3458  48 00 00 58 */	b lbl_806E34B0
lbl_806E345C:
/* 806E345C  A8 1F 05 C0 */	lha r0, 0x5c0(r31)
/* 806E3460  2C 00 00 00 */	cmpwi r0, 0
/* 806E3464  40 82 00 50 */	bne lbl_806E34B4
/* 806E3468  38 80 00 06 */	li r4, 6
/* 806E346C  38 A0 00 00 */	li r5, 0
/* 806E3470  3C C0 80 6E */	lis r6, lit_4385@ha /* 0x806E5A00@ha */
/* 806E3474  C0 26 5A 00 */	lfs f1, lit_4385@l(r6)  /* 0x806E5A00@l */
/* 806E3478  3C C0 80 6E */	lis r6, lit_3793@ha /* 0x806E5928@ha */
/* 806E347C  C0 46 59 28 */	lfs f2, lit_3793@l(r6)  /* 0x806E5928@l */
/* 806E3480  4B FF DA 0D */	bl SetAnm__8daE_HM_cFiiff
/* 806E3484  A8 7F 05 D6 */	lha r3, 0x5d6(r31)
/* 806E3488  38 03 00 01 */	addi r0, r3, 1
/* 806E348C  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 806E3490  48 00 00 24 */	b lbl_806E34B4
lbl_806E3494:
/* 806E3494  38 9F 06 00 */	addi r4, r31, 0x600
/* 806E3498  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F2@ha */
/* 806E349C  38 A5 84 F2 */	addi r5, r5, 0x84F2 /* 0x000084F2@l */
/* 806E34A0  4B FF D9 11 */	bl Particle_Set__8daE_HM_cFRUlUs
/* 806E34A4  7F E3 FB 78 */	mr r3, r31
/* 806E34A8  4B FF FD 61 */	bl AttackMotion__8daE_HM_cFv
/* 806E34AC  48 00 00 08 */	b lbl_806E34B4
lbl_806E34B0:
/* 806E34B0  4B FF FD 01 */	bl AttackAfter__8daE_HM_cFv
lbl_806E34B4:
/* 806E34B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E34B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E34BC  7C 08 03 A6 */	mtlr r0
/* 806E34C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E34C4  4E 80 00 20 */	blr 
