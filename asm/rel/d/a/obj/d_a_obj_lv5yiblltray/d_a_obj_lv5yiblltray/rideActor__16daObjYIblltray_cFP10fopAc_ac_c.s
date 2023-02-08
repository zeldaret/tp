lbl_80C6F1E8:
/* 80C6F1E8  80 A3 06 34 */	lwz r5, 0x634(r3)
/* 80C6F1EC  3C 05 00 01 */	addis r0, r5, 1
/* 80C6F1F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C6F1F4  4C 82 00 20 */	bnelr 
/* 80C6F1F8  A8 04 00 0E */	lha r0, 0xe(r4)
/* 80C6F1FC  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80C6F200  4C 82 00 20 */	bnelr 
/* 80C6F204  88 04 0C F0 */	lbz r0, 0xcf0(r4)
/* 80C6F208  2C 00 00 03 */	cmpwi r0, 3
/* 80C6F20C  4C 82 00 20 */	bnelr 
/* 80C6F210  28 04 00 00 */	cmplwi r4, 0
/* 80C6F214  41 82 00 0C */	beq lbl_80C6F220
/* 80C6F218  80 04 00 04 */	lwz r0, 4(r4)
/* 80C6F21C  48 00 00 08 */	b lbl_80C6F224
lbl_80C6F220:
/* 80C6F220  38 00 FF FF */	li r0, -1
lbl_80C6F224:
/* 80C6F224  90 03 06 34 */	stw r0, 0x634(r3)
/* 80C6F228  38 00 00 01 */	li r0, 1
/* 80C6F22C  90 03 06 40 */	stw r0, 0x640(r3)
/* 80C6F230  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 80C6F234  98 04 04 E2 */	stb r0, 0x4e2(r4)
/* 80C6F238  4E 80 00 20 */	blr 
