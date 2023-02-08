lbl_809B3034:
/* 809B3034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B3038  7C 08 02 A6 */	mflr r0
/* 809B303C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B3040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B3044  7C 7F 1B 78 */	mr r31, r3
/* 809B3048  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 809B304C  7F E4 FB 78 */	mr r4, r31
/* 809B3050  4B FF EF 1D */	bl connect__16_Fairy_Feather_cFP13daNpc_Fairy_c
/* 809B3054  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 809B3058  7F E4 FB 78 */	mr r4, r31
/* 809B305C  4B FF EF 79 */	bl draw__16_Fairy_Feather_cFP13daNpc_Fairy_c
/* 809B3060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B3064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3068  7C 08 03 A6 */	mtlr r0
/* 809B306C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3070  4E 80 00 20 */	blr 
