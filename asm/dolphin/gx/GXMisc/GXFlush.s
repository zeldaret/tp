lbl_8035BECC:
/* 8035BECC  7C 08 02 A6 */	mflr r0
/* 8035BED0  90 01 00 04 */	stw r0, 4(r1)
/* 8035BED4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035BED8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035BEDC  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8035BEE0  28 00 00 00 */	cmplwi r0, 0
/* 8035BEE4  41 82 00 08 */	beq lbl_8035BEEC
/* 8035BEE8  48 00 07 FD */	bl __GXSetDirtyState
lbl_8035BEEC:
/* 8035BEEC  38 00 00 00 */	li r0, 0
/* 8035BEF0  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035BEF4  90 03 80 00 */	stw r0, 0x8000(r3)
/* 8035BEF8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BEFC  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF00  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF04  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF08  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF0C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF10  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF14  4B FD DD E5 */	bl PPCSync
/* 8035BF18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035BF1C  38 21 00 08 */	addi r1, r1, 8
/* 8035BF20  7C 08 03 A6 */	mtlr r0
/* 8035BF24  4E 80 00 20 */	blr 
