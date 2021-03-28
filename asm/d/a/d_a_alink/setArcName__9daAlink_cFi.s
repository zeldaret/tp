lbl_8013FF28:
/* 8013FF28  2C 04 00 00 */	cmpwi r4, 0
/* 8013FF2C  41 82 00 10 */	beq lbl_8013FF3C
/* 8013FF30  38 02 92 50 */	la r0, l_wArcName(r2) /* 80452C50-_SDA2_BASE_ */
/* 8013FF34  90 03 06 34 */	stw r0, 0x634(r3)
/* 8013FF38  4E 80 00 20 */	blr 
lbl_8013FF3C:
/* 8013FF3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8013FF40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8013FF44  88 04 00 13 */	lbz r0, 0x13(r4)
/* 8013FF48  28 00 00 2E */	cmplwi r0, 0x2e
/* 8013FF4C  40 82 00 10 */	bne lbl_8013FF5C
/* 8013FF50  38 02 92 58 */	la r0, l_bArcName(r2) /* 80452C58-_SDA2_BASE_ */
/* 8013FF54  90 03 06 34 */	stw r0, 0x634(r3)
/* 8013FF58  4E 80 00 20 */	blr 
lbl_8013FF5C:
/* 8013FF5C  28 00 00 31 */	cmplwi r0, 0x31
/* 8013FF60  40 82 00 10 */	bne lbl_8013FF70
/* 8013FF64  38 02 92 68 */	la r0, l_zArcName(r2) /* 80452C68-_SDA2_BASE_ */
/* 8013FF68  90 03 06 34 */	stw r0, 0x634(r3)
/* 8013FF6C  4E 80 00 20 */	blr 
lbl_8013FF70:
/* 8013FF70  28 00 00 30 */	cmplwi r0, 0x30
/* 8013FF74  40 82 00 10 */	bne lbl_8013FF84
/* 8013FF78  38 02 92 70 */	la r0, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 8013FF7C  90 03 06 34 */	stw r0, 0x634(r3)
/* 8013FF80  4E 80 00 20 */	blr 
lbl_8013FF84:
/* 8013FF84  38 02 92 60 */	la r0, l_kArcName(r2) /* 80452C60-_SDA2_BASE_ */
/* 8013FF88  90 03 06 34 */	stw r0, 0x634(r3)
/* 8013FF8C  4E 80 00 20 */	blr 
