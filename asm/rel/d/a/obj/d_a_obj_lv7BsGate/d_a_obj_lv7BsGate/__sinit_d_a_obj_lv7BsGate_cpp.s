lbl_80C851C0:
/* 80C851C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C851C4  7C 08 02 A6 */	mflr r0
/* 80C851C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C851CC  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C8536C@ha */
/* 80C851D0  38 63 53 6C */	addi r3, r3, l_HIO@l /* 0x80C8536C@l */
/* 80C851D4  4B FF F6 D9 */	bl __ct__17daLv7BsGate_HIO_cFv
/* 80C851D8  3C 80 80 C8 */	lis r4, __dt__17daLv7BsGate_HIO_cFv@ha /* 0x80C85164@ha */
/* 80C851DC  38 84 51 64 */	addi r4, r4, __dt__17daLv7BsGate_HIO_cFv@l /* 0x80C85164@l */
/* 80C851E0  3C A0 80 C8 */	lis r5, lit_3622@ha /* 0x80C85360@ha */
/* 80C851E4  38 A5 53 60 */	addi r5, r5, lit_3622@l /* 0x80C85360@l */
/* 80C851E8  4B FF F6 51 */	bl __register_global_object
/* 80C851EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C851F0  7C 08 03 A6 */	mtlr r0
/* 80C851F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C851F8  4E 80 00 20 */	blr 
