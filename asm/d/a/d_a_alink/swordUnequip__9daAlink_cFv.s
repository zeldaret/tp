lbl_800B9580:
/* 800B9580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9584  7C 08 02 A6 */	mflr r0
/* 800B9588  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B958C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9590  7C 7F 1B 78 */	mr r31, r3
/* 800B9594  48 00 02 59 */	bl checkFastUnequip__9daAlink_cFv
/* 800B9598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B959C  41 82 00 14 */	beq lbl_800B95B0
/* 800B95A0  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha
/* 800B95A4  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l
/* 800B95A8  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 800B95AC  48 00 00 10 */	b lbl_800B95BC
lbl_800B95B0:
/* 800B95B0  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha
/* 800B95B4  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l
/* 800B95B8  C0 23 00 18 */	lfs f1, 0x18(r3)
lbl_800B95BC:
/* 800B95BC  38 00 00 00 */	li r0, 0
/* 800B95C0  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B95C4  28 03 00 01 */	cmplwi r3, 1
/* 800B95C8  41 82 00 0C */	beq lbl_800B95D4
/* 800B95CC  28 03 00 02 */	cmplwi r3, 2
/* 800B95D0  40 82 00 08 */	bne lbl_800B95D8
lbl_800B95D4:
/* 800B95D4  38 00 00 01 */	li r0, 1
lbl_800B95D8:
/* 800B95D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B95DC  38 80 02 55 */	li r4, 0x255
/* 800B95E0  41 82 00 08 */	beq lbl_800B95E8
/* 800B95E4  38 80 02 61 */	li r4, 0x261
lbl_800B95E8:
/* 800B95E8  7F E3 FB 78 */	mr r3, r31
/* 800B95EC  38 A0 00 02 */	li r5, 2
/* 800B95F0  3C C0 80 39 */	lis r6, m__17daAlinkHIO_cut_c0@ha
/* 800B95F4  38 E6 DE 8C */	addi r7, r6, m__17daAlinkHIO_cut_c0@l
/* 800B95F8  C0 47 00 1C */	lfs f2, 0x1c(r7)
/* 800B95FC  A8 C7 00 14 */	lha r6, 0x14(r7)
/* 800B9600  C0 67 00 20 */	lfs f3, 0x20(r7)
/* 800B9604  4B FF 3D D5 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800B9608  7F E3 FB 78 */	mr r3, r31
/* 800B960C  38 80 00 2D */	li r4, 0x2d
/* 800B9610  4B FF 64 99 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800B9614  7F E3 FB 78 */	mr r3, r31
/* 800B9618  38 80 01 5E */	li r4, 0x15e
/* 800B961C  38 A0 00 01 */	li r5, 1
/* 800B9620  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B9624  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B9628  4B FF 5E 89 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800B962C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B9630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9634  7C 08 03 A6 */	mtlr r0
/* 800B9638  38 21 00 10 */	addi r1, r1, 0x10
/* 800B963C  4E 80 00 20 */	blr 
