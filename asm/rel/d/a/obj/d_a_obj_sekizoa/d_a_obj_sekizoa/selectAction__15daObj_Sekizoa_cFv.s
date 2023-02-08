lbl_80CD0A84:
/* 80CD0A84  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80CD0A88  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80CD0A8C  80 85 00 00 */	lwz r4, 0(r5)
/* 80CD0A90  80 05 00 04 */	lwz r0, 4(r5)
/* 80CD0A94  90 83 11 0C */	stw r4, 0x110c(r3)
/* 80CD0A98  90 03 11 10 */	stw r0, 0x1110(r3)
/* 80CD0A9C  80 05 00 08 */	lwz r0, 8(r5)
/* 80CD0AA0  90 03 11 14 */	stw r0, 0x1114(r3)
/* 80CD0AA4  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CD0AA8  2C 00 00 02 */	cmpwi r0, 2
/* 80CD0AAC  40 80 00 34 */	bge lbl_80CD0AE0
/* 80CD0AB0  2C 00 00 00 */	cmpwi r0, 0
/* 80CD0AB4  40 80 00 08 */	bge lbl_80CD0ABC
/* 80CD0AB8  48 00 00 28 */	b lbl_80CD0AE0
lbl_80CD0ABC:
/* 80CD0ABC  3C 80 80 CD */	lis r4, lit_5491@ha /* 0x80CD66B4@ha */
/* 80CD0AC0  38 A4 66 B4 */	addi r5, r4, lit_5491@l /* 0x80CD66B4@l */
/* 80CD0AC4  80 85 00 00 */	lwz r4, 0(r5)
/* 80CD0AC8  80 05 00 04 */	lwz r0, 4(r5)
/* 80CD0ACC  90 83 11 0C */	stw r4, 0x110c(r3)
/* 80CD0AD0  90 03 11 10 */	stw r0, 0x1110(r3)
/* 80CD0AD4  80 05 00 08 */	lwz r0, 8(r5)
/* 80CD0AD8  90 03 11 14 */	stw r0, 0x1114(r3)
/* 80CD0ADC  48 00 00 24 */	b lbl_80CD0B00
lbl_80CD0AE0:
/* 80CD0AE0  3C 80 80 CD */	lis r4, lit_5493@ha /* 0x80CD66C0@ha */
/* 80CD0AE4  38 A4 66 C0 */	addi r5, r4, lit_5493@l /* 0x80CD66C0@l */
/* 80CD0AE8  80 85 00 00 */	lwz r4, 0(r5)
/* 80CD0AEC  80 05 00 04 */	lwz r0, 4(r5)
/* 80CD0AF0  90 83 11 0C */	stw r4, 0x110c(r3)
/* 80CD0AF4  90 03 11 10 */	stw r0, 0x1110(r3)
/* 80CD0AF8  80 05 00 08 */	lwz r0, 8(r5)
/* 80CD0AFC  90 03 11 14 */	stw r0, 0x1114(r3)
lbl_80CD0B00:
/* 80CD0B00  38 60 00 01 */	li r3, 1
/* 80CD0B04  4E 80 00 20 */	blr 
