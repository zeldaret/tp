lbl_80A923BC:
/* 80A923BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A923C0  7C 08 02 A6 */	mflr r0
/* 80A923C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A923C8  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A923CC  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A923D0  4B FF 68 FD */	bl __ct__14daNpc_Ne_HIO_cFv
/* 80A923D4  3C 80 80 A9 */	lis r4, __dt__14daNpc_Ne_HIO_cFv@ha
/* 80A923D8  38 84 23 74 */	addi r4, r4, __dt__14daNpc_Ne_HIO_cFv@l
/* 80A923DC  3C A0 80 A9 */	lis r5, lit_3985@ha
/* 80A923E0  38 A5 2A C8 */	addi r5, r5, lit_3985@l
/* 80A923E4  4B FF 68 75 */	bl __register_global_object
/* 80A923E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A923EC  7C 08 03 A6 */	mtlr r0
/* 80A923F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A923F4  4E 80 00 20 */	blr 
