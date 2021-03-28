lbl_80146C98:
/* 80146C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80146C9C  7C 08 02 A6 */	mflr r0
/* 80146CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80146CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80146CA8  7C 7F 1B 78 */	mr r31, r3
/* 80146CAC  4B FF EA 29 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80146CB0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80146CB4  38 80 00 00 */	li r4, 0
/* 80146CB8  38 1F 01 58 */	addi r0, r31, 0x158
/* 80146CBC  7C A3 00 50 */	subf r5, r3, r0
/* 80146CC0  4B EB C7 99 */	bl memset
/* 80146CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80146CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80146CCC  7C 08 03 A6 */	mtlr r0
/* 80146CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80146CD4  4E 80 00 20 */	blr 
