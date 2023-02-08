lbl_80D59DE0:
/* 80D59DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59DE4  7C 08 02 A6 */	mflr r0
/* 80D59DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59DEC  88 03 05 F5 */	lbz r0, 0x5f5(r3)
/* 80D59DF0  28 00 00 00 */	cmplwi r0, 0
/* 80D59DF4  40 82 00 0C */	bne lbl_80D59E00
/* 80D59DF8  48 00 00 2D */	bl actionWaitRiver__15daTagKagoFall_cFv
/* 80D59DFC  48 00 00 08 */	b lbl_80D59E04
lbl_80D59E00:
/* 80D59E00  48 00 04 19 */	bl actionWaitFall__15daTagKagoFall_cFv
lbl_80D59E04:
/* 80D59E04  38 60 00 01 */	li r3, 1
/* 80D59E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59E0C  7C 08 03 A6 */	mtlr r0
/* 80D59E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59E14  4E 80 00 20 */	blr 
