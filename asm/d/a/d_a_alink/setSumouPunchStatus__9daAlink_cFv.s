lbl_800EA92C:
/* 800EA92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA930  7C 08 02 A6 */	mflr r0
/* 800EA934  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA938  38 80 00 44 */	li r4, 0x44
/* 800EA93C  4B FC 89 5D */	bl setBStatus__9daAlink_cFUc
/* 800EA940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA944  7C 08 03 A6 */	mtlr r0
/* 800EA948  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA94C  4E 80 00 20 */	blr 
