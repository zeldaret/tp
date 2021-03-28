lbl_801F16B8:
/* 801F16B8  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 801F16BC  80 04 00 00 */	lwz r0, 0(r4)
/* 801F16C0  2C 00 00 00 */	cmpwi r0, 0
/* 801F16C4  4C 82 00 20 */	bnelr 
/* 801F16C8  88 83 01 BD */	lbz r4, 0x1bd(r3)
/* 801F16CC  28 04 00 00 */	cmplwi r4, 0
/* 801F16D0  41 82 00 10 */	beq lbl_801F16E0
/* 801F16D4  38 04 FF FF */	addi r0, r4, -1
/* 801F16D8  98 03 01 BD */	stb r0, 0x1bd(r3)
/* 801F16DC  4E 80 00 20 */	blr 
lbl_801F16E0:
/* 801F16E0  38 00 00 00 */	li r0, 0
/* 801F16E4  98 03 01 BF */	stb r0, 0x1bf(r3)
/* 801F16E8  38 00 00 06 */	li r0, 6
/* 801F16EC  98 03 01 B2 */	stb r0, 0x1b2(r3)
/* 801F16F0  4E 80 00 20 */	blr 
