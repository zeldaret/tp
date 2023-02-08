lbl_80D02F88:
/* 80D02F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02F8C  7C 08 02 A6 */	mflr r0
/* 80D02F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02F94  88 03 07 79 */	lbz r0, 0x779(r3)
/* 80D02F98  28 00 00 00 */	cmplwi r0, 0
/* 80D02F9C  40 82 00 08 */	bne lbl_80D02FA4
/* 80D02FA0  48 00 00 19 */	bl init_modeDropInit__10daSyRock_cFv
lbl_80D02FA4:
/* 80D02FA4  38 60 00 01 */	li r3, 1
/* 80D02FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02FAC  7C 08 03 A6 */	mtlr r0
/* 80D02FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02FB4  4E 80 00 20 */	blr 
