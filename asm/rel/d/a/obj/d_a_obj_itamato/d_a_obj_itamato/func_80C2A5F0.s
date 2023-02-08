lbl_80C2A5F0:
/* 80C2A5F0  38 00 00 00 */	li r0, 0
/* 80C2A5F4  28 05 00 00 */	cmplwi r5, 0
/* 80C2A5F8  41 82 00 1C */	beq lbl_80C2A614
/* 80C2A5FC  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80C2A600  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C2A604  40 82 00 0C */	bne lbl_80C2A610
/* 80C2A608  88 05 05 68 */	lbz r0, 0x568(r5)
/* 80C2A60C  48 00 00 08 */	b lbl_80C2A614
lbl_80C2A610:
/* 80C2A610  38 00 00 01 */	li r0, 1
lbl_80C2A614:
/* 80C2A614  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C2A618  90 03 09 E4 */	stw r0, 0x9e4(r3)
/* 80C2A61C  4E 80 00 20 */	blr 
