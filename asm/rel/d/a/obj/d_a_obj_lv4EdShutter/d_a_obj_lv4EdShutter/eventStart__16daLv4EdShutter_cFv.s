lbl_80C5E594:
/* 80C5E594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E598  7C 08 02 A6 */	mflr r0
/* 80C5E59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E5A0  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 80C5E5A4  28 00 00 00 */	cmplwi r0, 0
/* 80C5E5A8  40 82 00 0C */	bne lbl_80C5E5B4
/* 80C5E5AC  4B FF FE B9 */	bl init_modeClose__16daLv4EdShutter_cFv
/* 80C5E5B0  48 00 00 08 */	b lbl_80C5E5B8
lbl_80C5E5B4:
/* 80C5E5B4  4B FF FD 2D */	bl init_modeOpen__16daLv4EdShutter_cFv
lbl_80C5E5B8:
/* 80C5E5B8  38 60 00 01 */	li r3, 1
/* 80C5E5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E5C0  7C 08 03 A6 */	mtlr r0
/* 80C5E5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E5C8  4E 80 00 20 */	blr 
