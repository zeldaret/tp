lbl_805989D0:
/* 805989D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805989D4  7C 08 02 A6 */	mflr r0
/* 805989D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805989DC  3C 80 80 5A */	lis r4, lit_3630@ha
/* 805989E0  C0 24 8F 78 */	lfs f1, lit_3630@l(r4)
/* 805989E4  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 805989E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805989EC  40 82 00 08 */	bne lbl_805989F4
/* 805989F0  48 00 00 15 */	bl init_modeMoveDown__13daSwShutter_cFv
lbl_805989F4:
/* 805989F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805989F8  7C 08 03 A6 */	mtlr r0
/* 805989FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80598A00  4E 80 00 20 */	blr 
