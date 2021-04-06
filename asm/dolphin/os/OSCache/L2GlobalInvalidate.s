lbl_8033B8F8:
/* 8033B8F8  7C 08 02 A6 */	mflr r0
/* 8033B8FC  90 01 00 04 */	stw r0, 4(r1)
/* 8033B900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033B904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033B908  7C 00 04 AC */	sync
/* 8033B90C  4B FF E3 D5 */	bl PPCMfl2cr
/* 8033B910  54 63 00 7E */	clrlwi r3, r3, 1
/* 8033B914  4B FF E3 D5 */	bl PPCMtl2cr
/* 8033B918  7C 00 04 AC */	sync
/* 8033B91C  4B FF E3 C5 */	bl PPCMfl2cr
/* 8033B920  64 63 00 20 */	oris r3, r3, 0x20
/* 8033B924  4B FF E3 C5 */	bl PPCMtl2cr
/* 8033B928  48 00 00 04 */	b lbl_8033B92C
lbl_8033B92C:
/* 8033B92C  48 00 00 04 */	b lbl_8033B930
lbl_8033B930:
/* 8033B930  4B FF E3 B1 */	bl PPCMfl2cr
/* 8033B934  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8033B938  28 00 00 00 */	cmplwi r0, 0
/* 8033B93C  40 82 FF F4 */	bne lbl_8033B930
/* 8033B940  4B FF E3 A1 */	bl PPCMfl2cr
/* 8033B944  54 63 02 D2 */	rlwinm r3, r3, 0, 0xb, 9
/* 8033B948  4B FF E3 A1 */	bl PPCMtl2cr
/* 8033B94C  48 00 00 04 */	b lbl_8033B950
lbl_8033B950:
/* 8033B950  3C 60 80 3D */	lis r3, lit_63@ha /* 0x803CF510@ha */
/* 8033B954  3B E3 F5 10 */	addi r31, r3, lit_63@l /* 0x803CF510@l */
/* 8033B958  48 00 00 04 */	b lbl_8033B95C
lbl_8033B95C:
/* 8033B95C  48 00 00 10 */	b lbl_8033B96C
lbl_8033B960:
/* 8033B960  7F E3 FB 78 */	mr r3, r31
/* 8033B964  4C C6 31 82 */	crclr 6
/* 8033B968  48 00 AA CD */	bl DBPrintf
lbl_8033B96C:
/* 8033B96C  4B FF E3 75 */	bl PPCMfl2cr
/* 8033B970  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 8033B974  28 00 00 00 */	cmplwi r0, 0
/* 8033B978  40 82 FF E8 */	bne lbl_8033B960
/* 8033B97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033B980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033B984  38 21 00 10 */	addi r1, r1, 0x10
/* 8033B988  7C 08 03 A6 */	mtlr r0
/* 8033B98C  4E 80 00 20 */	blr 
