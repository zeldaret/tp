lbl_80AFD230:
/* 80AFD230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD234  7C 08 02 A6 */	mflr r0
/* 80AFD238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD23C  48 00 04 B5 */	bl main__11daNpcTheB_cFv
/* 80AFD240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD244  7C 08 03 A6 */	mtlr r0
/* 80AFD248  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD24C  4E 80 00 20 */	blr 
