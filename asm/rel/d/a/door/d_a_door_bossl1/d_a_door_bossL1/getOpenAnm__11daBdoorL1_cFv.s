lbl_804E2104:
/* 804E2104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2108  7C 08 02 A6 */	mflr r0
/* 804E210C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2114  7C 7F 1B 78 */	mr r31, r3
/* 804E2118  4B FF FF AD */	bl getDoorType__11daBdoorL1_cFv
/* 804E211C  2C 03 00 01 */	cmpwi r3, 1
/* 804E2120  40 82 00 0C */	bne lbl_804E212C
/* 804E2124  38 60 00 05 */	li r3, 5
/* 804E2128  48 00 00 1C */	b lbl_804E2144
lbl_804E212C:
/* 804E212C  7F E3 FB 78 */	mr r3, r31
/* 804E2130  4B FF FF 95 */	bl getDoorType__11daBdoorL1_cFv
/* 804E2134  2C 03 00 00 */	cmpwi r3, 0
/* 804E2138  38 60 FF FF */	li r3, -1
/* 804E213C  40 82 00 08 */	bne lbl_804E2144
/* 804E2140  38 60 00 05 */	li r3, 5
lbl_804E2144:
/* 804E2144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E214C  7C 08 03 A6 */	mtlr r0
/* 804E2150  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2154  4E 80 00 20 */	blr 
