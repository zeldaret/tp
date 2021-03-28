lbl_8013FF90:
/* 8013FF90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8013FF94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8013FF98  88 04 00 15 */	lbz r0, 0x15(r4)
/* 8013FF9C  28 00 00 2A */	cmplwi r0, 0x2a
/* 8013FFA0  41 82 00 0C */	beq lbl_8013FFAC
/* 8013FFA4  28 00 00 FF */	cmplwi r0, 0xff
/* 8013FFA8  40 82 00 10 */	bne lbl_8013FFB8
lbl_8013FFAC:
/* 8013FFAC  38 02 92 80 */	la r0, l_cWShdArcName(r2) /* 80452C80-_SDA2_BASE_ */
/* 8013FFB0  90 03 06 44 */	stw r0, 0x644(r3)
/* 8013FFB4  4E 80 00 20 */	blr 
lbl_8013FFB8:
/* 8013FFB8  28 00 00 2B */	cmplwi r0, 0x2b
/* 8013FFBC  40 82 00 10 */	bne lbl_8013FFCC
/* 8013FFC0  38 02 92 88 */	la r0, l_sWShdArcName(r2) /* 80452C88-_SDA2_BASE_ */
/* 8013FFC4  90 03 06 44 */	stw r0, 0x644(r3)
/* 8013FFC8  4E 80 00 20 */	blr 
lbl_8013FFCC:
/* 8013FFCC  38 02 92 78 */	la r0, l_hyShdArcName(r2) /* 80452C78-_SDA2_BASE_ */
/* 8013FFD0  90 03 06 44 */	stw r0, 0x644(r3)
/* 8013FFD4  4E 80 00 20 */	blr 
