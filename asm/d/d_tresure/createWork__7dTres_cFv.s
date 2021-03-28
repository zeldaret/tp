lbl_8009BBD8:
/* 8009BBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009BBDC  7C 08 02 A6 */	mflr r0
/* 8009BBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009BBE4  38 60 07 10 */	li r3, 0x710
/* 8009BBE8  48 23 30 DD */	bl __nwa__FUl
/* 8009BBEC  38 80 00 00 */	li r4, 0
/* 8009BBF0  38 A0 00 00 */	li r5, 0
/* 8009BBF4  38 C0 00 1C */	li r6, 0x1c
/* 8009BBF8  38 E0 00 40 */	li r7, 0x40
/* 8009BBFC  48 2C 63 19 */	bl __construct_new_array
/* 8009BC00  90 6D 8A 18 */	stw r3, mTypeGroupData__7dTres_c(r13)
/* 8009BC04  38 60 00 01 */	li r3, 1
/* 8009BC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009BC0C  7C 08 03 A6 */	mtlr r0
/* 8009BC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8009BC14  4E 80 00 20 */	blr 
