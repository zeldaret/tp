lbl_80B14264:
/* 80B14264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14268  7C 08 02 A6 */	mflr r0
/* 80B1426C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B14270  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B14274  38 63 45 10 */	addi r3, r3, l_HIO@l
/* 80B14278  4B FF CB 75 */	bl __ct__16daNpc_Tkj2_HIO_cFv
/* 80B1427C  3C 80 80 B1 */	lis r4, __dt__16daNpc_Tkj2_HIO_cFv@ha
/* 80B14280  38 84 42 1C */	addi r4, r4, __dt__16daNpc_Tkj2_HIO_cFv@l
/* 80B14284  3C A0 80 B1 */	lis r5, lit_3643@ha
/* 80B14288  38 A5 45 04 */	addi r5, r5, lit_3643@l
/* 80B1428C  4B FF CA ED */	bl __register_global_object
/* 80B14290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B14294  7C 08 03 A6 */	mtlr r0
/* 80B14298  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1429C  4E 80 00 20 */	blr 
