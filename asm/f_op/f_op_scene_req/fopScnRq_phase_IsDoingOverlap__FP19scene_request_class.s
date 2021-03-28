lbl_8001EE84:
/* 8001EE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EE88  7C 08 02 A6 */	mflr r0
/* 8001EE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EE90  4B FF F7 19 */	bl fopOvlpM_IsDoingReq__Fv
/* 8001EE94  2C 03 00 01 */	cmpwi r3, 1
/* 8001EE98  38 60 00 00 */	li r3, 0
/* 8001EE9C  40 82 00 08 */	bne lbl_8001EEA4
/* 8001EEA0  38 60 00 02 */	li r3, 2
lbl_8001EEA4:
/* 8001EEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EEA8  7C 08 03 A6 */	mtlr r0
/* 8001EEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EEB0  4E 80 00 20 */	blr 
