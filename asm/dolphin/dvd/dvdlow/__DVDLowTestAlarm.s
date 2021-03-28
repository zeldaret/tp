lbl_803484B8:
/* 803484B8  3C 80 80 45 */	lis r4, AlarmForBreak@ha
/* 803484BC  38 04 C8 C0 */	addi r0, r4, AlarmForBreak@l
/* 803484C0  7C 03 00 40 */	cmplw r3, r0
/* 803484C4  40 82 00 0C */	bne lbl_803484D0
/* 803484C8  38 60 00 01 */	li r3, 1
/* 803484CC  4E 80 00 20 */	blr 
lbl_803484D0:
/* 803484D0  3C 80 80 45 */	lis r4, AlarmForTimeout@ha
/* 803484D4  38 04 C8 98 */	addi r0, r4, AlarmForTimeout@l
/* 803484D8  7C 03 00 40 */	cmplw r3, r0
/* 803484DC  40 82 00 0C */	bne lbl_803484E8
/* 803484E0  38 60 00 01 */	li r3, 1
/* 803484E4  4E 80 00 20 */	blr 
lbl_803484E8:
/* 803484E8  38 60 00 00 */	li r3, 0
/* 803484EC  4E 80 00 20 */	blr 
