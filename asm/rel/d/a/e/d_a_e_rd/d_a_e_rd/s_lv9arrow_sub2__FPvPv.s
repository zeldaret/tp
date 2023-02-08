lbl_80512EC0:
/* 80512EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80512EC4  7C 08 02 A6 */	mflr r0
/* 80512EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80512ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512ED0  7C 7F 1B 78 */	mr r31, r3
/* 80512ED4  4B B0 5E 0D */	bl fopAc_IsActor__FPv
/* 80512ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80512EDC  41 82 00 24 */	beq lbl_80512F00
/* 80512EE0  A8 1F 00 08 */	lha r0, 8(r31)
/* 80512EE4  2C 00 02 E5 */	cmpwi r0, 0x2e5
/* 80512EE8  40 82 00 18 */	bne lbl_80512F00
/* 80512EEC  38 60 00 00 */	li r3, 0
/* 80512EF0  98 7F 0A 14 */	stb r3, 0xa14(r31)
/* 80512EF4  38 00 00 05 */	li r0, 5
/* 80512EF8  B0 1F 05 C2 */	sth r0, 0x5c2(r31)
/* 80512EFC  B0 7F 05 C4 */	sth r3, 0x5c4(r31)
lbl_80512F00:
/* 80512F00  38 60 00 00 */	li r3, 0
/* 80512F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80512F0C  7C 08 03 A6 */	mtlr r0
/* 80512F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80512F14  4E 80 00 20 */	blr 
