lbl_800F6EB0:
/* 800F6EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6EB4  7C 08 02 A6 */	mflr r0
/* 800F6EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6EC0  7C 7F 1B 78 */	mr r31, r3
/* 800F6EC4  38 80 00 9B */	li r4, 0x9b
/* 800F6EC8  4B FC BE DD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F6ECC  2C 03 00 00 */	cmpwi r3, 0
/* 800F6ED0  40 82 00 0C */	bne lbl_800F6EDC
/* 800F6ED4  38 60 00 00 */	li r3, 0
/* 800F6ED8  48 00 00 10 */	b lbl_800F6EE8
lbl_800F6EDC:
/* 800F6EDC  7F E3 FB 78 */	mr r3, r31
/* 800F6EE0  4B FF D6 BD */	bl setSyncCanoePos__9daAlink_cFv
/* 800F6EE4  38 60 00 01 */	li r3, 1
lbl_800F6EE8:
/* 800F6EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6EF0  7C 08 03 A6 */	mtlr r0
/* 800F6EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6EF8  4E 80 00 20 */	blr 
