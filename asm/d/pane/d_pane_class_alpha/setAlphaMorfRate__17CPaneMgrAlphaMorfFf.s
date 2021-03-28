lbl_80255E28:
/* 80255E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255E2C  7C 08 02 A6 */	mflr r0
/* 80255E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255E34  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80255E38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80255E3C  7C 7F 1B 78 */	mr r31, r3
/* 80255E40  FF E0 08 90 */	fmr f31, f1
/* 80255E44  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80255E48  28 00 00 00 */	cmplwi r0, 0
/* 80255E4C  41 82 00 30 */	beq lbl_80255E7C
/* 80255E50  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80255E54  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80255E58  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80255E5C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80255E60  80 7F 00 04 */	lwz r3, 4(r31)
/* 80255E64  48 0A 1C 29 */	bl getFirstChildPane__7J2DPaneFv
/* 80255E68  7C 64 1B 78 */	mr r4, r3
/* 80255E6C  7F E3 FB 78 */	mr r3, r31
/* 80255E70  FC 20 F8 90 */	fmr f1, f31
/* 80255E74  48 00 00 B5 */	bl childPaneSetAlphaMorf__17CPaneMgrAlphaMorfFP7J2DPanef
/* 80255E78  48 00 00 08 */	b lbl_80255E80
lbl_80255E7C:
/* 80255E7C  4B FF F9 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80255E80:
/* 80255E80  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80255E84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80255E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80255E8C  7C 08 03 A6 */	mtlr r0
/* 80255E90  38 21 00 20 */	addi r1, r1, 0x20
/* 80255E94  4E 80 00 20 */	blr 
