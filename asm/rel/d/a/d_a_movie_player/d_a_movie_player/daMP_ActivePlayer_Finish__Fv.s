lbl_808788D4:
/* 808788D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808788D8  7C 08 02 A6 */	mflr r0
/* 808788DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808788E0  4B FF FA 65 */	bl daMP_THPPlayerStop__Fv
/* 808788E4  4B FF EE 09 */	bl daMP_THPPlayerClose__Fv
/* 808788E8  4B FF E9 E5 */	bl daMP_THPPlayerQuit__Fv
/* 808788EC  3C 60 80 94 */	lis r3, daMP_buffer@ha
/* 808788F0  38 63 5B 04 */	addi r3, r3, daMP_buffer@l
/* 808788F4  80 63 00 00 */	lwz r3, 0(r3)
/* 808788F8  28 03 00 00 */	cmplwi r3, 0
/* 808788FC  41 82 00 08 */	beq lbl_80878904
/* 80878900  48 00 00 15 */	bl JKRFree__FPv
lbl_80878904:
/* 80878904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878908  7C 08 03 A6 */	mtlr r0
/* 8087890C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878910  4E 80 00 20 */	blr 
