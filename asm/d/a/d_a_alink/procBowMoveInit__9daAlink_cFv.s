lbl_800DFE3C:
/* 800DFE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DFE40  7C 08 02 A6 */	mflr r0
/* 800DFE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DFE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DFE4C  7C 7F 1B 78 */	mr r31, r3
/* 800DFE50  38 80 00 5F */	li r4, 0x5f
/* 800DFE54  4B FE 2F 51 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DFE58  2C 03 00 00 */	cmpwi r3, 0
/* 800DFE5C  40 82 00 0C */	bne lbl_800DFE68
/* 800DFE60  38 60 00 00 */	li r3, 0
/* 800DFE64  48 00 00 48 */	b lbl_800DFEAC
lbl_800DFE68:
/* 800DFE68  7F E3 FB 78 */	mr r3, r31
/* 800DFE6C  4B FD 3A 99 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800DFE70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DFE74  41 82 00 10 */	beq lbl_800DFE84
/* 800DFE78  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DFE7C  60 00 00 01 */	ori r0, r0, 1
/* 800DFE80  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800DFE84:
/* 800DFE84  7F E3 FB 78 */	mr r3, r31
/* 800DFE88  3C 80 80 39 */	lis r4, m__17daAlinkHIO_bow_c0@ha /* 0x8038E658@ha */
/* 800DFE8C  38 84 E6 58 */	addi r4, r4, m__17daAlinkHIO_bow_c0@l /* 0x8038E658@l */
/* 800DFE90  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800DFE94  4B FC EB DD */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800DFE98  38 00 00 00 */	li r0, 0
/* 800DFE9C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800DFEA0  7F E3 FB 78 */	mr r3, r31
/* 800DFEA4  4B FF EC E9 */	bl setBowOrSlingStatus__9daAlink_cFv
/* 800DFEA8  38 60 00 01 */	li r3, 1
lbl_800DFEAC:
/* 800DFEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DFEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DFEB4  7C 08 03 A6 */	mtlr r0
/* 800DFEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 800DFEBC  4E 80 00 20 */	blr 
