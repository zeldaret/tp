lbl_80512E74:
/* 80512E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80512E78  7C 08 02 A6 */	mflr r0
/* 80512E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80512E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512E84  7C 7F 1B 78 */	mr r31, r3
/* 80512E88  4B B0 5E 59 */	bl fopAc_IsActor__FPv
/* 80512E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80512E90  41 82 00 18 */	beq lbl_80512EA8
/* 80512E94  A8 1F 00 08 */	lha r0, 8(r31)
/* 80512E98  2C 00 02 E5 */	cmpwi r0, 0x2e5
/* 80512E9C  40 82 00 0C */	bne lbl_80512EA8
/* 80512EA0  38 00 00 01 */	li r0, 1
/* 80512EA4  98 1F 0A 14 */	stb r0, 0xa14(r31)
lbl_80512EA8:
/* 80512EA8  38 60 00 00 */	li r3, 0
/* 80512EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80512EB4  7C 08 03 A6 */	mtlr r0
/* 80512EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80512EBC  4E 80 00 20 */	blr 
