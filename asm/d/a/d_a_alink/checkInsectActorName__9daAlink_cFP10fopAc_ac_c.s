lbl_800E70C0:
/* 800E70C0  A8 A4 00 08 */	lha r5, 8(r4)
/* 800E70C4  38 60 00 00 */	li r3, 0
/* 800E70C8  3C 80 80 39 */	lis r4, l_insectNameList@ha /* 0x8038FBBC@ha */
/* 800E70CC  38 84 FB BC */	addi r4, r4, l_insectNameList@l /* 0x8038FBBC@l */
/* 800E70D0  38 00 00 0C */	li r0, 0xc
/* 800E70D4  7C 09 03 A6 */	mtctr r0
lbl_800E70D8:
/* 800E70D8  7C 04 1A AE */	lhax r0, r4, r3
/* 800E70DC  7C 05 00 00 */	cmpw r5, r0
/* 800E70E0  40 82 00 0C */	bne lbl_800E70EC
/* 800E70E4  38 60 00 01 */	li r3, 1
/* 800E70E8  4E 80 00 20 */	blr 
lbl_800E70EC:
/* 800E70EC  38 63 00 02 */	addi r3, r3, 2
/* 800E70F0  42 00 FF E8 */	bdnz lbl_800E70D8
/* 800E70F4  38 60 00 00 */	li r3, 0
/* 800E70F8  4E 80 00 20 */	blr 
