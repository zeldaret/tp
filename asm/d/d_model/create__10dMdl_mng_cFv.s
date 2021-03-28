lbl_8009C7AC:
/* 8009C7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009C7B0  7C 08 02 A6 */	mflr r0
/* 8009C7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009C7BC  38 60 00 84 */	li r3, 0x84
/* 8009C7C0  48 23 24 8D */	bl __nw__FUl
/* 8009C7C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009C7C8  41 82 00 28 */	beq lbl_8009C7F0
/* 8009C7CC  3C 80 80 0A */	lis r4, __ct__6dMdl_cFv@ha
/* 8009C7D0  38 84 C9 30 */	addi r4, r4, __ct__6dMdl_cFv@l
/* 8009C7D4  3C A0 80 0A */	lis r5, __dt__6dMdl_cFv@ha
/* 8009C7D8  38 A5 C8 08 */	addi r5, r5, __dt__6dMdl_cFv@l
/* 8009C7DC  38 C0 00 20 */	li r6, 0x20
/* 8009C7E0  38 E0 00 04 */	li r7, 4
/* 8009C7E4  48 2C 55 7D */	bl __construct_array
/* 8009C7E8  38 00 00 00 */	li r0, 0
/* 8009C7EC  98 1F 00 80 */	stb r0, 0x80(r31)
lbl_8009C7F0:
/* 8009C7F0  93 ED 8A 20 */	stw r31, m_myObj__10dMdl_mng_c(r13)
/* 8009C7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009C7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C7FC  7C 08 03 A6 */	mtlr r0
/* 8009C800  38 21 00 10 */	addi r1, r1, 0x10
/* 8009C804  4E 80 00 20 */	blr 
