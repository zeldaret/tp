lbl_800E01CC:
/* 800E01CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E01D0  7C 08 02 A6 */	mflr r0
/* 800E01D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E01D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E01DC  7C 9F 23 78 */	mr r31, r4
/* 800E01E0  48 00 00 31 */	bl getBoomerangActor__9daAlink_cFv
/* 800E01E4  28 03 00 00 */	cmplwi r3, 0
/* 800E01E8  41 82 00 14 */	beq lbl_800E01FC
/* 800E01EC  7F E4 FB 78 */	mr r4, r31
/* 800E01F0  39 83 0D D8 */	addi r12, r3, 0xdd8
/* 800E01F4  48 28 1E 91 */	bl __ptmf_scall
/* 800E01F8  60 00 00 00 */	nop 
lbl_800E01FC:
/* 800E01FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0204  7C 08 03 A6 */	mtlr r0
/* 800E0208  38 21 00 10 */	addi r1, r1, 0x10
/* 800E020C  4E 80 00 20 */	blr 
