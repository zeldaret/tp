lbl_8003C288:
/* 8003C288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C28C  7C 08 02 A6 */	mflr r0
/* 8003C290  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003C298  7C 7F 1B 78 */	mr r31, r3
/* 8003C29C  4B FF FF 49 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C2A0  28 03 00 00 */	cmplwi r3, 0
/* 8003C2A4  40 82 00 0C */	bne lbl_8003C2B0
/* 8003C2A8  38 60 00 00 */	li r3, 0
/* 8003C2AC  48 00 00 2C */	b lbl_8003C2D8
lbl_8003C2B0:
/* 8003C2B0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8003C2B4  28 00 00 00 */	cmplwi r0, 0
/* 8003C2B8  40 82 00 20 */	bne lbl_8003C2D8
/* 8003C2BC  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003C2C0  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003C2C4  38 63 02 C0 */	addi r3, r3, 0x2c0
/* 8003C2C8  7F E4 FB 78 */	mr r4, r31
/* 8003C2CC  4C C6 31 82 */	crclr 6
/* 8003C2D0  4B FC AA 1D */	bl OSReport_Warning
/* 8003C2D4  38 60 00 00 */	li r3, 0
lbl_8003C2D8:
/* 8003C2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003C2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C2E0  7C 08 03 A6 */	mtlr r0
/* 8003C2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C2E8  4E 80 00 20 */	blr 
