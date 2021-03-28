lbl_8009CB34:
/* 8009CB34  80 03 00 04 */	lwz r0, 4(r3)
/* 8009CB38  28 00 00 00 */	cmplwi r0, 0
/* 8009CB3C  4D 82 00 20 */	beqlr 
/* 8009CB40  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8009CB44  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8009CB48  28 05 00 00 */	cmplwi r5, 0
/* 8009CB4C  41 82 00 08 */	beq lbl_8009CB54
/* 8009CB50  90 85 00 0C */	stw r4, 0xc(r5)
lbl_8009CB54:
/* 8009CB54  28 04 00 00 */	cmplwi r4, 0
/* 8009CB58  40 82 00 0C */	bne lbl_8009CB64
/* 8009CB5C  90 AD 8A 28 */	stw r5, m_obj__12dEyeHL_mng_c(r13)
/* 8009CB60  48 00 00 08 */	b lbl_8009CB68
lbl_8009CB64:
/* 8009CB64  90 A4 00 10 */	stw r5, 0x10(r4)
lbl_8009CB68:
/* 8009CB68  A8 03 00 08 */	lha r0, 8(r3)
/* 8009CB6C  80 83 00 04 */	lwz r4, 4(r3)
/* 8009CB70  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8009CB74  38 00 00 00 */	li r0, 0
/* 8009CB78  90 03 00 04 */	stw r0, 4(r3)
/* 8009CB7C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8009CB80  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009CB84  4E 80 00 20 */	blr 
