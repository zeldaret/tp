lbl_8009CB14:
/* 8009CB14  80 8D 8A 28 */	lwz r4, m_obj__12dEyeHL_mng_c(r13)
/* 8009CB18  28 04 00 00 */	cmplwi r4, 0
/* 8009CB1C  41 82 00 08 */	beq lbl_8009CB24
/* 8009CB20  90 64 00 0C */	stw r3, 0xc(r4)
lbl_8009CB24:
/* 8009CB24  80 0D 8A 28 */	lwz r0, m_obj__12dEyeHL_mng_c(r13)
/* 8009CB28  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009CB2C  90 6D 8A 28 */	stw r3, m_obj__12dEyeHL_mng_c(r13)
/* 8009CB30  4E 80 00 20 */	blr 
