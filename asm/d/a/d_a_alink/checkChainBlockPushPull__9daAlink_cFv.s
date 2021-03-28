lbl_800E7BD0:
/* 800E7BD0  38 80 00 00 */	li r4, 0
/* 800E7BD4  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E7BD8  28 00 00 62 */	cmplwi r0, 0x62
/* 800E7BDC  41 82 00 10 */	beq lbl_800E7BEC
/* 800E7BE0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E7BE4  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800E7BE8  40 82 00 08 */	bne lbl_800E7BF0
lbl_800E7BEC:
/* 800E7BEC  38 80 00 01 */	li r4, 1
lbl_800E7BF0:
/* 800E7BF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800E7BF4  41 82 00 34 */	beq lbl_800E7C28
/* 800E7BF8  80 63 28 48 */	lwz r3, 0x2848(r3)
/* 800E7BFC  28 03 00 00 */	cmplwi r3, 0
/* 800E7C00  41 82 00 28 */	beq lbl_800E7C28
/* 800E7C04  A8 03 00 08 */	lha r0, 8(r3)
/* 800E7C08  2C 00 00 7E */	cmpwi r0, 0x7e
/* 800E7C0C  41 82 00 14 */	beq lbl_800E7C20
/* 800E7C10  2C 00 01 6F */	cmpwi r0, 0x16f
/* 800E7C14  41 82 00 0C */	beq lbl_800E7C20
/* 800E7C18  2C 00 00 7F */	cmpwi r0, 0x7f
/* 800E7C1C  40 82 00 0C */	bne lbl_800E7C28
lbl_800E7C20:
/* 800E7C20  38 60 00 01 */	li r3, 1
/* 800E7C24  4E 80 00 20 */	blr 
lbl_800E7C28:
/* 800E7C28  38 60 00 00 */	li r3, 0
/* 800E7C2C  4E 80 00 20 */	blr 
