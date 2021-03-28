lbl_80D2C41C:
/* 80D2C41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C420  7C 08 02 A6 */	mflr r0
/* 80D2C424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C428  3C 60 80 D3 */	lis r3, l_HIO@ha
/* 80D2C42C  38 63 C5 BC */	addi r3, r3, l_HIO@l
/* 80D2C430  4B FF F7 5D */	bl __ct__14daWtGate_HIO_cFv
/* 80D2C434  3C 80 80 D3 */	lis r4, __dt__14daWtGate_HIO_cFv@ha
/* 80D2C438  38 84 C3 C0 */	addi r4, r4, __dt__14daWtGate_HIO_cFv@l
/* 80D2C43C  3C A0 80 D3 */	lis r5, lit_3619@ha
/* 80D2C440  38 A5 C5 B0 */	addi r5, r5, lit_3619@l
/* 80D2C444  4B FF F6 D5 */	bl __register_global_object
/* 80D2C448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C44C  7C 08 03 A6 */	mtlr r0
/* 80D2C450  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C454  4E 80 00 20 */	blr 
