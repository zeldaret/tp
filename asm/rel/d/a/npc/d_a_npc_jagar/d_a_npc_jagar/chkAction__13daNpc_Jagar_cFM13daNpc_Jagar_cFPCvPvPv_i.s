lbl_80A162B0:
/* 80A162B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A162B4  7C 08 02 A6 */	mflr r0
/* 80A162B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A162BC  38 63 0F E0 */	addi r3, r3, 0xfe0
/* 80A162C0  4B 94 BD 88 */	b __ptmf_cmpr
/* 80A162C4  7C 60 00 34 */	cntlzw r0, r3
/* 80A162C8  54 03 D9 7E */	srwi r3, r0, 5
/* 80A162CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A162D0  7C 08 03 A6 */	mtlr r0
/* 80A162D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A162D8  4E 80 00 20 */	blr 
