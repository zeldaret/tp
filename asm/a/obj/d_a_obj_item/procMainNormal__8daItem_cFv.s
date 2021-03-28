lbl_8015BEA4:
/* 8015BEA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015BEA8  7C 08 02 A6 */	mflr r0
/* 8015BEAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015BEB0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8015BEB4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8015BEB8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8015BEBC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8015BEC0  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8015BEC4  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 8015BEC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015BECC  7C 7F 1B 78 */	mr r31, r3
/* 8015BED0  48 00 0B E9 */	bl move_proc_call__8daItem_cFv
/* 8015BED4  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8015BED8  38 9F 09 30 */	addi r4, r31, 0x930
/* 8015BEDC  48 10 B1 91 */	bl __ne__4cXyzCFRC3Vec
/* 8015BEE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015BEE4  41 82 00 70 */	beq lbl_8015BF54
/* 8015BEE8  7F E3 FB 78 */	mr r3, r31
/* 8015BEEC  4B FF F1 CD */	bl getData__12daItemBase_cFv
/* 8015BEF0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8015BEF4  C0 1F 09 30 */	lfs f0, 0x930(r31)
/* 8015BEF8  EF E0 08 24 */	fdivs f31, f0, f1
/* 8015BEFC  7F E3 FB 78 */	mr r3, r31
/* 8015BF00  4B FF F1 B9 */	bl getData__12daItemBase_cFv
/* 8015BF04  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8015BF08  C0 1F 09 34 */	lfs f0, 0x934(r31)
/* 8015BF0C  EF C0 08 24 */	fdivs f30, f0, f1
/* 8015BF10  7F E3 FB 78 */	mr r3, r31
/* 8015BF14  4B FF F1 A5 */	bl getData__12daItemBase_cFv
/* 8015BF18  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8015BF1C  C0 1F 09 38 */	lfs f0, 0x938(r31)
/* 8015BF20  EF A0 08 24 */	fdivs f29, f0, f1
/* 8015BF24  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8015BF28  C0 3F 09 30 */	lfs f1, 0x930(r31)
/* 8015BF2C  FC 40 F8 90 */	fmr f2, f31
/* 8015BF30  48 11 48 11 */	bl cLib_chaseF__FPfff
/* 8015BF34  38 7F 04 F0 */	addi r3, r31, 0x4f0
/* 8015BF38  C0 3F 09 34 */	lfs f1, 0x934(r31)
/* 8015BF3C  FC 40 F0 90 */	fmr f2, f30
/* 8015BF40  48 11 48 01 */	bl cLib_chaseF__FPfff
/* 8015BF44  38 7F 04 F4 */	addi r3, r31, 0x4f4
/* 8015BF48  C0 3F 09 38 */	lfs f1, 0x938(r31)
/* 8015BF4C  FC 40 E8 90 */	fmr f2, f29
/* 8015BF50  48 11 47 F1 */	bl cLib_chaseF__FPfff
lbl_8015BF54:
/* 8015BF54  A8 1F 09 42 */	lha r0, 0x942(r31)
/* 8015BF58  2C 00 00 00 */	cmpwi r0, 0
/* 8015BF5C  40 82 00 40 */	bne lbl_8015BF9C
/* 8015BF60  A8 1F 09 44 */	lha r0, 0x944(r31)
/* 8015BF64  2C 00 00 00 */	cmpwi r0, 0
/* 8015BF68  40 82 00 0C */	bne lbl_8015BF74
/* 8015BF6C  7F E3 FB 78 */	mr r3, r31
/* 8015BF70  48 00 15 11 */	bl deleteItem__8daItem_cFv
lbl_8015BF74:
/* 8015BF74  7F E3 FB 78 */	mr r3, r31
/* 8015BF78  4B FF F1 41 */	bl getData__12daItemBase_cFv
/* 8015BF7C  A8 83 00 14 */	lha r4, 0x14(r3)
/* 8015BF80  80 7F 09 24 */	lwz r3, 0x924(r31)
/* 8015BF84  7C 03 23 D6 */	divw r0, r3, r4
/* 8015BF88  7C 00 21 D6 */	mullw r0, r0, r4
/* 8015BF8C  7C 00 18 51 */	subf. r0, r0, r3
/* 8015BF90  40 82 00 0C */	bne lbl_8015BF9C
/* 8015BF94  7F E3 FB 78 */	mr r3, r31
/* 8015BF98  4B ED BA ED */	bl changeDraw__12daItemBase_cFv
lbl_8015BF9C:
/* 8015BF9C  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015BFA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015BFA4  48 11 32 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8015BFA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015BFAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015BFB0  38 63 23 3C */	addi r3, r3, 0x233c
/* 8015BFB4  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 8015BFB8  48 10 8B F1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8015BFBC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8015BFC0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8015BFC4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8015BFC8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8015BFCC  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 8015BFD0  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8015BFD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015BFD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015BFDC  7C 08 03 A6 */	mtlr r0
/* 8015BFE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8015BFE4  4E 80 00 20 */	blr 
