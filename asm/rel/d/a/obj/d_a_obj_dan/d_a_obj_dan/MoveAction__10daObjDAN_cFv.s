lbl_80BDAB14:
/* 80BDAB14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BDAB18  7C 08 02 A6 */	mflr r0
/* 80BDAB1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BDAB20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BDAB24  7C 7F 1B 78 */	mr r31, r3
/* 80BDAB28  A8 03 07 6A */	lha r0, 0x76a(r3)
/* 80BDAB2C  2C 00 00 00 */	cmpwi r0, 0
/* 80BDAB30  40 82 00 90 */	bne lbl_80BDABC0
/* 80BDAB34  38 61 00 0C */	addi r3, r1, 0xc
/* 80BDAB38  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80BDAB3C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BDAB40  4B 68 BF F5 */	bl __mi__4cXyzCFRC3Vec
/* 80BDAB44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BDAB48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDAB4C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BDAB50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BDAB54  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BDAB58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BDAB5C  3C 60 80 BE */	lis r3, lit_3960@ha /* 0x80BDC408@ha */
/* 80BDAB60  C0 23 C4 08 */	lfs f1, lit_3960@l(r3)  /* 0x80BDC408@l */
/* 80BDAB64  4B 68 CE 29 */	bl cM_rndFX__Ff
/* 80BDAB68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BDAB6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BDAB70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BDAB74  3C 60 80 BE */	lis r3, lit_3960@ha /* 0x80BDC408@ha */
/* 80BDAB78  C0 23 C4 08 */	lfs f1, lit_3960@l(r3)  /* 0x80BDC408@l */
/* 80BDAB7C  4B 68 CE 11 */	bl cM_rndFX__Ff
/* 80BDAB80  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BDAB84  EC 40 08 2A */	fadds f2, f0, f1
/* 80BDAB88  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BDAB8C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80BDAB90  4B 68 CA E5 */	bl cM_atan2s__Fff
/* 80BDAB94  B0 7F 07 78 */	sth r3, 0x778(r31)
/* 80BDAB98  3C 60 80 BE */	lis r3, lit_3938@ha /* 0x80BDC400@ha */
/* 80BDAB9C  C0 23 C4 00 */	lfs f1, lit_3938@l(r3)  /* 0x80BDC400@l */
/* 80BDABA0  4B 68 CD B5 */	bl cM_rndF__Ff
/* 80BDABA4  3C 60 80 BE */	lis r3, lit_3938@ha /* 0x80BDC400@ha */
/* 80BDABA8  C0 03 C4 00 */	lfs f0, lit_3938@l(r3)  /* 0x80BDC400@l */
/* 80BDABAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80BDABB0  FC 00 00 1E */	fctiwz f0, f0
/* 80BDABB4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BDABB8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BDABBC  B0 1F 07 6A */	sth r0, 0x76a(r31)
lbl_80BDABC0:
/* 80BDABC0  7F E3 FB 78 */	mr r3, r31
/* 80BDABC4  4B FF FE 79 */	bl SpeedSet__10daObjDAN_cFv
/* 80BDABC8  7F E3 FB 78 */	mr r3, r31
/* 80BDABCC  4B FF FE D1 */	bl LinkChk__10daObjDAN_cFv
/* 80BDABD0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80BDABD4  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80BDABD8  90 01 00 08 */	stw r0, 8(r1)
/* 80BDABDC  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BDABE0  38 81 00 08 */	addi r4, r1, 8
/* 80BDABE4  38 A0 00 00 */	li r5, 0
/* 80BDABE8  38 C0 FF FF */	li r6, -1
/* 80BDABEC  81 9F 07 B0 */	lwz r12, 0x7b0(r31)
/* 80BDABF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BDABF4  7D 89 03 A6 */	mtctr r12
/* 80BDABF8  4E 80 04 21 */	bctrl 
/* 80BDABFC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BDAC00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BDAC04  7C 08 03 A6 */	mtlr r0
/* 80BDAC08  38 21 00 40 */	addi r1, r1, 0x40
/* 80BDAC0C  4E 80 00 20 */	blr 
