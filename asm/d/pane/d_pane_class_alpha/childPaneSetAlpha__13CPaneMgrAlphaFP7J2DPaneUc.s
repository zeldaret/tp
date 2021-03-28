lbl_80255B5C:
/* 80255B5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80255B60  7C 08 02 A6 */	mflr r0
/* 80255B64  90 01 00 44 */	stw r0, 0x44(r1)
/* 80255B68  39 61 00 40 */	addi r11, r1, 0x40
/* 80255B6C  48 10 C6 71 */	bl _savegpr_29
/* 80255B70  7C 7D 1B 78 */	mr r29, r3
/* 80255B74  7C 9E 23 79 */	or. r30, r4, r4
/* 80255B78  7C BF 2B 78 */	mr r31, r5
/* 80255B7C  41 82 00 D4 */	beq lbl_80255C50
/* 80255B80  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 80255B84  28 00 00 00 */	cmplwi r0, 0
/* 80255B88  40 82 00 8C */	bne lbl_80255C14
/* 80255B8C  88 7D 00 18 */	lbz r3, 0x18(r29)
/* 80255B90  28 03 00 00 */	cmplwi r3, 0
/* 80255B94  40 82 00 0C */	bne lbl_80255BA0
/* 80255B98  C0 42 B4 D0 */	lfs f2, lit_3721(r2)
/* 80255B9C  48 00 00 34 */	b lbl_80255BD0
lbl_80255BA0:
/* 80255BA0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80255BA4  C8 42 B4 C8 */	lfd f2, lit_3708(r2)
/* 80255BA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80255BAC  3C 00 43 30 */	lis r0, 0x4330
/* 80255BB0  90 01 00 08 */	stw r0, 8(r1)
/* 80255BB4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80255BB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80255BBC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80255BC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80255BC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80255BC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80255BCC  EC 41 00 24 */	fdivs f2, f1, f0
lbl_80255BD0:
/* 80255BD0  7F C3 F3 78 */	mr r3, r30
/* 80255BD4  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80255BD8  88 04 00 00 */	lbz r0, 0(r4)
/* 80255BDC  C8 22 B4 C8 */	lfd f1, lit_3708(r2)
/* 80255BE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80255BE4  3C 00 43 30 */	lis r0, 0x4330
/* 80255BE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80255BEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80255BF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80255BF4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80255BF8  FC 00 00 1E */	fctiwz f0, f0
/* 80255BFC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80255C00  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80255C04  81 9E 00 00 */	lwz r12, 0(r30)
/* 80255C08  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80255C0C  7D 89 03 A6 */	mtctr r12
/* 80255C10  4E 80 04 21 */	bctrl 
lbl_80255C14:
/* 80255C14  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80255C18  38 03 00 01 */	addi r0, r3, 1
/* 80255C1C  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80255C20  7F C3 F3 78 */	mr r3, r30
/* 80255C24  48 0A 1E 69 */	bl getFirstChildPane__7J2DPaneFv
/* 80255C28  7C 64 1B 78 */	mr r4, r3
/* 80255C2C  7F A3 EB 78 */	mr r3, r29
/* 80255C30  7F E5 FB 78 */	mr r5, r31
/* 80255C34  4B FF FF 29 */	bl childPaneSetAlpha__13CPaneMgrAlphaFP7J2DPaneUc
/* 80255C38  7F C3 F3 78 */	mr r3, r30
/* 80255C3C  48 0A 1E 89 */	bl getNextChildPane__7J2DPaneFv
/* 80255C40  7C 64 1B 78 */	mr r4, r3
/* 80255C44  7F A3 EB 78 */	mr r3, r29
/* 80255C48  7F E5 FB 78 */	mr r5, r31
/* 80255C4C  4B FF FF 11 */	bl childPaneSetAlpha__13CPaneMgrAlphaFP7J2DPaneUc
lbl_80255C50:
/* 80255C50  39 61 00 40 */	addi r11, r1, 0x40
/* 80255C54  48 10 C5 D5 */	bl _restgpr_29
/* 80255C58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80255C5C  7C 08 03 A6 */	mtlr r0
/* 80255C60  38 21 00 40 */	addi r1, r1, 0x40
/* 80255C64  4E 80 00 20 */	blr 
