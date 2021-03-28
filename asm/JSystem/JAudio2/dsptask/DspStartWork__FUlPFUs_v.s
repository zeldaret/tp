lbl_8029E920:
/* 8029E920  80 ED 8D 84 */	lwz r7, taskwritep(r13)
/* 8029E924  80 0D 8D 80 */	lwz r0, taskreadp(r13)
/* 8029E928  38 C7 00 01 */	addi r6, r7, 1
/* 8029E92C  54 C8 07 3E */	clrlwi r8, r6, 0x1c
/* 8029E930  7C 08 00 40 */	cmplw r8, r0
/* 8029E934  40 82 00 0C */	bne lbl_8029E940
/* 8029E938  38 60 00 00 */	li r3, 0
/* 8029E93C  4E 80 00 20 */	blr 
lbl_8029E940:
/* 8029E940  3C A0 80 43 */	lis r5, taskwork@ha
/* 8029E944  54 60 84 3E */	srwi r0, r3, 0x10
/* 8029E948  54 E7 18 38 */	slwi r7, r7, 3
/* 8029E94C  91 0D 8D 84 */	stw r8, taskwritep(r13)
/* 8029E950  38 A5 3F E0 */	addi r5, r5, taskwork@l
/* 8029E954  7C C3 33 78 */	mr r3, r6
/* 8029E958  7C 05 3B 2E */	sthx r0, r5, r7
/* 8029E95C  7C A5 3A 14 */	add r5, r5, r7
/* 8029E960  90 85 00 04 */	stw r4, 4(r5)
/* 8029E964  4E 80 00 20 */	blr 
