lbl_804E2158:
/* 804E2158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E215C  7C 08 02 A6 */	mflr r0
/* 804E2160  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2168  7C 7F 1B 78 */	mr r31, r3
/* 804E216C  4B FF FF 59 */	bl getDoorType__11daBdoorL1_cFv
/* 804E2170  2C 03 00 01 */	cmpwi r3, 1
/* 804E2174  40 82 00 0C */	bne lbl_804E2180
/* 804E2178  38 60 00 04 */	li r3, 4
/* 804E217C  48 00 00 1C */	b lbl_804E2198
lbl_804E2180:
/* 804E2180  7F E3 FB 78 */	mr r3, r31
/* 804E2184  4B FF FF 41 */	bl getDoorType__11daBdoorL1_cFv
/* 804E2188  2C 03 00 00 */	cmpwi r3, 0
/* 804E218C  38 60 FF FF */	li r3, -1
/* 804E2190  40 82 00 08 */	bne lbl_804E2198
/* 804E2194  38 60 00 04 */	li r3, 4
lbl_804E2198:
/* 804E2198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E219C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E21A0  7C 08 03 A6 */	mtlr r0
/* 804E21A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E21A8  4E 80 00 20 */	blr 
