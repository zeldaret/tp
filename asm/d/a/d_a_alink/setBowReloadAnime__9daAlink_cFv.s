lbl_800DEFB8:
/* 800DEFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DEFBC  7C 08 02 A6 */	mflr r0
/* 800DEFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DEFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DEFC8  7C 7F 1B 78 */	mr r31, r3
/* 800DEFCC  38 80 00 09 */	li r4, 9
/* 800DEFD0  38 A0 00 02 */	li r5, 2
/* 800DEFD4  3C C0 80 39 */	lis r6, m__17daAlinkHIO_bow_c0@ha
/* 800DEFD8  38 C6 E6 58 */	addi r6, r6, m__17daAlinkHIO_bow_c0@l
/* 800DEFDC  38 C6 00 14 */	addi r6, r6, 0x14
/* 800DEFE0  4B FC E7 11 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800DEFE4  7F E3 FB 78 */	mr r3, r31
/* 800DEFE8  38 80 00 08 */	li r4, 8
/* 800DEFEC  4B FD 0A BD */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DEFF0  7F E3 FB 78 */	mr r3, r31
/* 800DEFF4  38 80 00 E5 */	li r4, 0xe5
/* 800DEFF8  38 A0 00 01 */	li r5, 1
/* 800DEFFC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800DF000  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800DF004  4B FD 04 AD */	bl setFaceBck__9daAlink_cFUsiUs
/* 800DF008  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DF00C  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DF010  40 82 00 44 */	bne lbl_800DF054
/* 800DF014  7F E3 FB 78 */	mr r3, r31
/* 800DF018  38 80 01 F0 */	li r4, 0x1f0
/* 800DF01C  3C A0 80 39 */	lis r5, m__17daAlinkHIO_bow_c0@ha
/* 800DF020  38 A5 E6 58 */	addi r5, r5, m__17daAlinkHIO_bow_c0@l
/* 800DF024  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800DF028  4B FE 10 5D */	bl changeItemBck__9daAlink_cFUsf
/* 800DF02C  38 00 00 05 */	li r0, 5
/* 800DF030  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800DF034  7F E3 FB 78 */	mr r3, r31
/* 800DF038  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200AF@ha */
/* 800DF03C  38 84 00 AF */	addi r4, r4, 0x00AF /* 0x000200AF@l */
/* 800DF040  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DF044  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DF048  7D 89 03 A6 */	mtctr r12
/* 800DF04C  4E 80 04 21 */	bctrl 
/* 800DF050  48 00 00 40 */	b lbl_800DF090
lbl_800DF054:
/* 800DF054  7F E3 FB 78 */	mr r3, r31
/* 800DF058  38 80 00 41 */	li r4, 0x41
/* 800DF05C  3C A0 80 39 */	lis r5, m__17daAlinkHIO_bow_c0@ha
/* 800DF060  38 A5 E6 58 */	addi r5, r5, m__17daAlinkHIO_bow_c0@l
/* 800DF064  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800DF068  4B FE 10 1D */	bl changeItemBck__9daAlink_cFUsf
/* 800DF06C  38 00 00 07 */	li r0, 7
/* 800DF070  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800DF074  7F E3 FB 78 */	mr r3, r31
/* 800DF078  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020042@ha */
/* 800DF07C  38 84 00 42 */	addi r4, r4, 0x0042 /* 0x00020042@l */
/* 800DF080  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DF084  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DF088  7D 89 03 A6 */	mtctr r12
/* 800DF08C  4E 80 04 21 */	bctrl 
lbl_800DF090:
/* 800DF090  38 00 00 00 */	li r0, 0
/* 800DF094  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800DF098  3C 60 80 39 */	lis r3, m__17daAlinkHIO_bow_c0@ha
/* 800DF09C  38 63 E6 58 */	addi r3, r3, m__17daAlinkHIO_bow_c0@l
/* 800DF0A0  A8 03 00 28 */	lha r0, 0x28(r3)
/* 800DF0A4  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 800DF0A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DF0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DF0B0  7C 08 03 A6 */	mtlr r0
/* 800DF0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800DF0B8  4E 80 00 20 */	blr 
