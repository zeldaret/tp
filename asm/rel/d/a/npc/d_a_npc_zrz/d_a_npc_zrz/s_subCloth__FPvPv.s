lbl_80B951AC:
/* 80B951AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B951B0  7C 08 02 A6 */	mflr r0
/* 80B951B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B951B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B951BC  7C 7F 1B 78 */	mr r31, r3
/* 80B951C0  4B 48 3B 21 */	bl fopAc_IsActor__FPv
/* 80B951C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B951C8  41 82 00 18 */	beq lbl_80B951E0
/* 80B951CC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B951D0  2C 00 01 78 */	cmpwi r0, 0x178
/* 80B951D4  40 82 00 0C */	bne lbl_80B951E0
/* 80B951D8  7F E3 FB 78 */	mr r3, r31
/* 80B951DC  48 00 00 08 */	b lbl_80B951E4
lbl_80B951E0:
/* 80B951E0  38 60 00 00 */	li r3, 0
lbl_80B951E4:
/* 80B951E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B951E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B951EC  7C 08 03 A6 */	mtlr r0
/* 80B951F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B951F4  4E 80 00 20 */	blr 
