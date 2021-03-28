lbl_8036F648:
/* 8036F648  7D 00 00 A6 */	mfmsr r8
/* 8036F64C  39 40 00 00 */	li r10, 0
lbl_8036F650:
/* 8036F650  7C 0A 28 00 */	cmpw r10, r5
/* 8036F654  41 82 00 24 */	beq lbl_8036F678
/* 8036F658  7C E0 01 24 */	mtmsr r7
/* 8036F65C  7C 00 04 AC */	sync
/* 8036F660  7D 2A 20 AE */	lbzx r9, r10, r4
/* 8036F664  7C C0 01 24 */	mtmsr r6
/* 8036F668  7C 00 04 AC */	sync
/* 8036F66C  7D 2A 19 AE */	stbx r9, r10, r3
/* 8036F670  39 4A 00 01 */	addi r10, r10, 1
/* 8036F674  4B FF FF DC */	b lbl_8036F650
lbl_8036F678:
/* 8036F678  7D 00 01 24 */	mtmsr r8
/* 8036F67C  7C 00 04 AC */	sync
/* 8036F680  4E 80 00 20 */	blr 
