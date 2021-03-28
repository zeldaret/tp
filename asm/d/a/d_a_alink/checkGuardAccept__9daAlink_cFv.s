lbl_800DCF64:
/* 800DCF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DCF68  7C 08 02 A6 */	mflr r0
/* 800DCF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DCF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DCF74  3B E0 00 00 */	li r31, 0
/* 800DCF78  7F E5 FB 78 */	mr r5, r31
/* 800DCF7C  7F E6 FB 78 */	mr r6, r31
/* 800DCF80  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800DCF84  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800DCF88  41 82 00 1C */	beq lbl_800DCFA4
/* 800DCF8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800DCF90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800DCF94  88 04 00 15 */	lbz r0, 0x15(r4)
/* 800DCF98  28 00 00 FF */	cmplwi r0, 0xff
/* 800DCF9C  41 82 00 08 */	beq lbl_800DCFA4
/* 800DCFA0  38 C0 00 01 */	li r6, 1
lbl_800DCFA4:
/* 800DCFA4  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 800DCFA8  41 82 00 30 */	beq lbl_800DCFD8
/* 800DCFAC  38 80 00 00 */	li r4, 0
/* 800DCFB0  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800DCFB4  28 00 00 62 */	cmplwi r0, 0x62
/* 800DCFB8  41 82 00 10 */	beq lbl_800DCFC8
/* 800DCFBC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800DCFC0  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800DCFC4  40 82 00 08 */	bne lbl_800DCFCC
lbl_800DCFC8:
/* 800DCFC8  38 80 00 01 */	li r4, 1
lbl_800DCFCC:
/* 800DCFCC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800DCFD0  40 82 00 08 */	bne lbl_800DCFD8
/* 800DCFD4  38 A0 00 01 */	li r5, 1
lbl_800DCFD8:
/* 800DCFD8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800DCFDC  41 82 00 14 */	beq lbl_800DCFF0
/* 800DCFE0  4B FE 35 B5 */	bl checkNotBattleStage__9daAlink_cFv
/* 800DCFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DCFE8  40 82 00 08 */	bne lbl_800DCFF0
/* 800DCFEC  3B E0 00 01 */	li r31, 1
lbl_800DCFF0:
/* 800DCFF0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DCFF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DCFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DCFFC  7C 08 03 A6 */	mtlr r0
/* 800DD000  38 21 00 10 */	addi r1, r1, 0x10
/* 800DD004  4E 80 00 20 */	blr 
