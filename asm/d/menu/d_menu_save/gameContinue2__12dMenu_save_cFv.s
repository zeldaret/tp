lbl_801F2D78:
/* 801F2D78  88 83 01 BD */	lbz r4, 0x1bd(r3)
/* 801F2D7C  28 04 00 00 */	cmplwi r4, 0
/* 801F2D80  41 82 00 10 */	beq lbl_801F2D90
/* 801F2D84  38 04 FF FF */	addi r0, r4, -1
/* 801F2D88  98 03 01 BD */	stb r0, 0x1bd(r3)
/* 801F2D8C  4E 80 00 20 */	blr 
lbl_801F2D90:
/* 801F2D90  38 00 00 01 */	li r0, 1
/* 801F2D94  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F2D98  90 03 00 00 */	stw r0, 0(r3)
/* 801F2D9C  4E 80 00 20 */	blr 
