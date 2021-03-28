lbl_804BC36C:
/* 804BC36C  3C C0 80 45 */	lis r6, m_midnaActor__9daPy_py_c@ha
/* 804BC370  38 C6 10 18 */	addi r6, r6, m_midnaActor__9daPy_py_c@l
/* 804BC374  80 C6 00 00 */	lwz r6, 0(r6)
/* 804BC378  80 06 08 90 */	lwz r0, 0x890(r6)
/* 804BC37C  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 804BC380  40 82 00 58 */	bne lbl_804BC3D8
/* 804BC384  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804BC388  28 04 00 06 */	cmplwi r4, 6
/* 804BC38C  41 80 00 4C */	blt lbl_804BC3D8
/* 804BC390  28 04 00 0A */	cmplwi r4, 0xa
/* 804BC394  41 81 00 44 */	bgt lbl_804BC3D8
/* 804BC398  80 63 00 04 */	lwz r3, 4(r3)
/* 804BC39C  38 04 FF FA */	addi r0, r4, -6
/* 804BC3A0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804BC3A4  7C 63 02 14 */	add r3, r3, r0
/* 804BC3A8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804BC3AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 804BC3B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BC3B4  D0 05 00 00 */	stfs f0, 0(r5)
/* 804BC3B8  C0 25 00 04 */	lfs f1, 4(r5)
/* 804BC3BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804BC3C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BC3C4  D0 05 00 04 */	stfs f0, 4(r5)
/* 804BC3C8  C0 25 00 08 */	lfs f1, 8(r5)
/* 804BC3CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804BC3D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BC3D4  D0 05 00 08 */	stfs f0, 8(r5)
lbl_804BC3D8:
/* 804BC3D8  38 60 00 01 */	li r3, 1
/* 804BC3DC  4E 80 00 20 */	blr 
