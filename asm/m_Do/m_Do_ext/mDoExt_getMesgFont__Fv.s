lbl_800149F0:
/* 800149F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800149F4  7C 08 02 A6 */	mflr r0
/* 800149F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800149FC  80 0D 86 C4 */	lwz r0, mDoExt_font0(r13)
/* 80014A00  28 00 00 00 */	cmplwi r0, 0
/* 80014A04  40 82 00 08 */	bne lbl_80014A0C
/* 80014A08  4B FF FF 8D */	bl mDoExt_initFont0__Fv
lbl_80014A0C:
/* 80014A0C  80 6D 86 C8 */	lwz r3, mDoExt_font0_getCount(r13)
/* 80014A10  38 03 00 01 */	addi r0, r3, 1
/* 80014A14  90 0D 86 C8 */	stw r0, mDoExt_font0_getCount(r13)
/* 80014A18  80 6D 86 C4 */	lwz r3, mDoExt_font0(r13)
/* 80014A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014A20  7C 08 03 A6 */	mtlr r0
/* 80014A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80014A28  4E 80 00 20 */	blr 
