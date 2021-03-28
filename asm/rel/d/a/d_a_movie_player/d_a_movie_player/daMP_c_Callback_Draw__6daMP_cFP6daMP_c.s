lbl_80878F70:
/* 80878F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878F74  7C 08 02 A6 */	mflr r0
/* 80878F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878F7C  3C 80 80 94 */	lis r4, daMP_Fail_alloc@ha
/* 80878F80  80 04 5B 08 */	lwz r0, daMP_Fail_alloc@l(r4)
/* 80878F84  2C 00 00 00 */	cmpwi r0, 0
/* 80878F88  41 82 00 0C */	beq lbl_80878F94
/* 80878F8C  38 60 00 01 */	li r3, 1
/* 80878F90  48 00 00 08 */	b lbl_80878F98
lbl_80878F94:
/* 80878F94  4B FF FE 45 */	bl daMP_c_Draw__6daMP_cFv
lbl_80878F98:
/* 80878F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878F9C  7C 08 03 A6 */	mtlr r0
/* 80878FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80878FA4  4E 80 00 20 */	blr 
