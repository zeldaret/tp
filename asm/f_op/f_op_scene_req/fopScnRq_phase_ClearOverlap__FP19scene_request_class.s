lbl_8001EE34:
/* 8001EE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EE38  7C 08 02 A6 */	mflr r0
/* 8001EE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EE40  4B FF F7 91 */	bl fopOvlpM_ClearOfReq__Fv
/* 8001EE44  2C 03 00 01 */	cmpwi r3, 1
/* 8001EE48  38 60 00 00 */	li r3, 0
/* 8001EE4C  40 82 00 08 */	bne lbl_8001EE54
/* 8001EE50  38 60 00 02 */	li r3, 2
lbl_8001EE54:
/* 8001EE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EE58  7C 08 03 A6 */	mtlr r0
/* 8001EE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EE60  4E 80 00 20 */	blr 
