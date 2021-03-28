lbl_80331FE4:
/* 80331FE4  81 04 00 04 */	lwz r8, 4(r4)
/* 80331FE8  80 E4 00 08 */	lwz r7, 8(r4)
/* 80331FEC  54 A0 08 3C */	slwi r0, r5, 1
/* 80331FF0  7C 07 02 2E */	lhzx r0, r7, r0
/* 80331FF4  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331FF8  7C A8 02 14 */	add r5, r8, r0
/* 80331FFC  54 C0 08 3C */	slwi r0, r6, 1
/* 80332000  7C A5 02 14 */	add r5, r5, r0
/* 80332004  A0 05 00 28 */	lhz r0, 0x28(r5)
/* 80332008  28 00 FF FF */	cmplwi r0, 0xffff
/* 8033200C  41 82 00 20 */	beq lbl_8033202C
/* 80332010  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80332014  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80332018  7C 04 00 2E */	lwzx r0, r4, r0
/* 8033201C  90 03 00 00 */	stw r0, 0(r3)
/* 80332020  88 03 00 02 */	lbz r0, 2(r3)
/* 80332024  B0 03 00 04 */	sth r0, 4(r3)
/* 80332028  4E 80 00 20 */	blr 
lbl_8033202C:
/* 8033202C  3C 80 80 3A */	lis r4, j3dDefaultTexCoordInfo@ha
/* 80332030  80 04 1E FC */	lwz r0, j3dDefaultTexCoordInfo@l(r4)
/* 80332034  90 03 00 00 */	stw r0, 0(r3)
/* 80332038  88 03 00 02 */	lbz r0, 2(r3)
/* 8033203C  B0 03 00 04 */	sth r0, 4(r3)
/* 80332040  4E 80 00 20 */	blr 
