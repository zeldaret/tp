lbl_80BA80F4:
/* 80BA80F4  3C 60 80 BB */	lis r3, data_80BA8FF8@ha
/* 80BA80F8  80 03 8F F8 */	lwz r0, data_80BA8FF8@l(r3)
/* 80BA80FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA8100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA8104  90 03 5E 0C */	stw r0, 0x5e0c(r3)
/* 80BA8108  4E 80 00 20 */	blr 
