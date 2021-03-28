lbl_80371B24:
/* 80371B24  3C 80 80 45 */	lis r4, lc_base@ha
/* 80371B28  38 84 F8 10 */	addi r4, r4, lc_base@l
/* 80371B2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80371B30  7C 03 20 40 */	cmplw r3, r4
/* 80371B34  41 80 00 24 */	blt lbl_80371B58
/* 80371B38  38 04 40 00 */	addi r0, r4, 0x4000
/* 80371B3C  7C 03 00 40 */	cmplw r3, r0
/* 80371B40  40 80 00 18 */	bge lbl_80371B58
/* 80371B44  3C 80 80 45 */	lis r4, gTRKCPUState@ha
/* 80371B48  38 84 F3 38 */	addi r4, r4, gTRKCPUState@l
/* 80371B4C  80 04 02 38 */	lwz r0, 0x238(r4)
/* 80371B50  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80371B54  4C 82 00 20 */	bnelr 
lbl_80371B58:
/* 80371B58  3C 00 7E 00 */	lis r0, 0x7e00
/* 80371B5C  7C 03 00 40 */	cmplw r3, r0
/* 80371B60  41 80 00 10 */	blt lbl_80371B70
/* 80371B64  3C 00 80 00 */	lis r0, 0x8000
/* 80371B68  7C 03 00 40 */	cmplw r3, r0
/* 80371B6C  4C 81 00 20 */	blelr 
lbl_80371B70:
/* 80371B70  54 60 00 BE */	clrlwi r0, r3, 2
/* 80371B74  64 03 80 00 */	oris r3, r0, 0x8000
/* 80371B78  4E 80 00 20 */	blr 
