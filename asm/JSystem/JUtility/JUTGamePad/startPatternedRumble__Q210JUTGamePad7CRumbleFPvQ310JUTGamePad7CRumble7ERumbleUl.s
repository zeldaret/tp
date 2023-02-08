lbl_802E18CC:
/* 802E18CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E18D0  7C 08 02 A6 */	mflr r0
/* 802E18D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E18D8  88 04 00 00 */	lbz r0, 0(r4)
/* 802E18DC  54 07 40 2E */	slwi r7, r0, 8
/* 802E18E0  88 04 00 01 */	lbz r0, 1(r4)
/* 802E18E4  7C 07 02 14 */	add r0, r7, r0
/* 802E18E8  90 03 00 0C */	stw r0, 0xc(r3)
/* 802E18EC  38 04 00 02 */	addi r0, r4, 2
/* 802E18F0  90 03 00 08 */	stw r0, 8(r3)
/* 802E18F4  2C 05 00 01 */	cmpwi r5, 1
/* 802E18F8  41 82 00 2C */	beq lbl_802E1924
/* 802E18FC  40 80 00 10 */	bge lbl_802E190C
/* 802E1900  2C 05 00 00 */	cmpwi r5, 0
/* 802E1904  40 80 00 14 */	bge lbl_802E1918
/* 802E1908  48 00 00 30 */	b lbl_802E1938
lbl_802E190C:
/* 802E190C  2C 05 00 03 */	cmpwi r5, 3
/* 802E1910  40 80 00 28 */	bge lbl_802E1938
/* 802E1914  48 00 00 1C */	b lbl_802E1930
lbl_802E1918:
/* 802E1918  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802E191C  4B FF FF 89 */	bl triggerPatternedRumble__Q210JUTGamePad7CRumbleFUl
/* 802E1920  48 00 00 18 */	b lbl_802E1938
lbl_802E1924:
/* 802E1924  38 80 FF FF */	li r4, -1
/* 802E1928  4B FF FF 7D */	bl triggerPatternedRumble__Q210JUTGamePad7CRumbleFUl
/* 802E192C  48 00 00 0C */	b lbl_802E1938
lbl_802E1930:
/* 802E1930  7C C4 33 78 */	mr r4, r6
/* 802E1934  4B FF FF 71 */	bl triggerPatternedRumble__Q210JUTGamePad7CRumbleFUl
lbl_802E1938:
/* 802E1938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E193C  7C 08 03 A6 */	mtlr r0
/* 802E1940  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1944  4E 80 00 20 */	blr 
