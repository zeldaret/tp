lbl_802CDDC8:
/* 802CDDC8  39 40 00 61 */	li r10, 0x61
/* 802CDDCC  3D 20 CC 01 */	lis r9, 0xCC01 /* 0xCC008000@ha */
/* 802CDDD0  99 49 80 00 */	stb r10, 0x8000(r9)  /* 0xCC008000@l */
/* 802CDDD4  3D 00 FE 08 */	lis r8, 0xFE08 /* 0xFE07FC3F@ha */
/* 802CDDD8  38 08 FC 3F */	addi r0, r8, 0xFC3F /* 0xFE07FC3F@l */
/* 802CDDDC  90 09 80 00 */	stw r0, -0x8000(r9)
/* 802CDDE0  99 49 80 00 */	stb r10, -0x8000(r9)
/* 802CDDE4  54 C8 82 1E */	rlwinm r8, r6, 0x10, 8, 0xf
/* 802CDDE8  38 CD 83 28 */	la r6, cm2hw(r13) /* 804508A8-_SDA_BASE_ */
/* 802CDDEC  7C 06 38 AE */	lbzx r0, r6, r7
/* 802CDDF0  54 06 70 22 */	slwi r6, r0, 0xe
/* 802CDDF4  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 802CDDF8  38 05 FF FF */	addi r0, r5, -1
/* 802CDDFC  54 05 50 2A */	slwi r5, r0, 0xa
/* 802CDE00  54 6A 06 3E */	clrlwi r10, r3, 0x18
/* 802CDE04  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 802CDE08  54 80 25 36 */	rlwinm r0, r4, 4, 0x14, 0x1b
/* 802CDE0C  7D 40 03 78 */	or r0, r10, r0
/* 802CDE10  7C A0 03 78 */	or r0, r5, r0
/* 802CDE14  7C C0 03 78 */	or r0, r6, r0
/* 802CDE18  7D 00 03 78 */	or r0, r8, r0
/* 802CDE1C  90 09 80 00 */	stw r0, -0x8000(r9)
/* 802CDE20  38 80 00 10 */	li r4, 0x10
/* 802CDE24  98 89 80 00 */	stb r4, -0x8000(r9)
/* 802CDE28  38 60 00 00 */	li r3, 0
/* 802CDE2C  B0 69 80 00 */	sth r3, -0x8000(r9)
/* 802CDE30  38 00 10 09 */	li r0, 0x1009
/* 802CDE34  B0 09 80 00 */	sth r0, -0x8000(r9)
/* 802CDE38  90 E9 80 00 */	stw r7, -0x8000(r9)
/* 802CDE3C  98 89 80 00 */	stb r4, -0x8000(r9)
/* 802CDE40  B0 69 80 00 */	sth r3, -0x8000(r9)
/* 802CDE44  38 00 10 3F */	li r0, 0x103f
/* 802CDE48  B0 09 80 00 */	sth r0, -0x8000(r9)
/* 802CDE4C  91 49 80 00 */	stw r10, -0x8000(r9)
/* 802CDE50  4E 80 00 20 */	blr 
