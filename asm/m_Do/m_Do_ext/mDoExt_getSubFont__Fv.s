lbl_80014BA0:
/* 80014BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014BA4  7C 08 02 A6 */	mflr r0
/* 80014BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014BAC  80 0D 86 DC */	lwz r0, mDoExt_font2(r13)
/* 80014BB0  28 00 00 00 */	cmplwi r0, 0
/* 80014BB4  40 82 00 08 */	bne lbl_80014BBC
/* 80014BB8  4B FF FF 89 */	bl mDoExt_initFont2__Fv
lbl_80014BBC:
/* 80014BBC  80 6D 86 E0 */	lwz r3, mDoExt_font2_getCount(r13)
/* 80014BC0  38 03 00 01 */	addi r0, r3, 1
/* 80014BC4  90 0D 86 E0 */	stw r0, mDoExt_font2_getCount(r13)
/* 80014BC8  80 6D 86 DC */	lwz r3, mDoExt_font2(r13)
/* 80014BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014BD0  7C 08 03 A6 */	mtlr r0
/* 80014BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80014BD8  4E 80 00 20 */	blr 
