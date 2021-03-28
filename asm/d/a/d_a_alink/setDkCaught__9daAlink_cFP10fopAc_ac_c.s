lbl_800D6DF0:
/* 800D6DF0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800D6DF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D6DF8  4C 82 00 20 */	bnelr 
/* 800D6DFC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800D6E00  60 00 00 01 */	ori r0, r0, 1
/* 800D6E04  90 03 05 74 */	stw r0, 0x574(r3)
/* 800D6E08  28 04 00 00 */	cmplwi r4, 0
/* 800D6E0C  41 82 00 0C */	beq lbl_800D6E18
/* 800D6E10  80 04 00 04 */	lwz r0, 4(r4)
/* 800D6E14  48 00 00 08 */	b lbl_800D6E1C
lbl_800D6E18:
/* 800D6E18  38 00 FF FF */	li r0, -1
lbl_800D6E1C:
/* 800D6E1C  90 03 28 F8 */	stw r0, 0x28f8(r3)
/* 800D6E20  4E 80 00 20 */	blr 
