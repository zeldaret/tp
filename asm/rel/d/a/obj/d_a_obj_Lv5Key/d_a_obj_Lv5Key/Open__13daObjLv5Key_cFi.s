lbl_80B9BF08:
/* 80B9BF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9BF0C  7C 08 02 A6 */	mflr r0
/* 80B9BF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9BF14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9BF18  7C 7F 1B 78 */	mr r31, r3
/* 80B9BF1C  A8 03 09 54 */	lha r0, 0x954(r3)
/* 80B9BF20  2C 00 00 00 */	cmpwi r0, 0
/* 80B9BF24  41 82 00 18 */	beq lbl_80B9BF3C
/* 80B9BF28  40 80 00 08 */	bge lbl_80B9BF30
/* 80B9BF2C  48 00 00 9C */	b lbl_80B9BFC8
lbl_80B9BF30:
/* 80B9BF30  2C 00 00 02 */	cmpwi r0, 2
/* 80B9BF34  40 80 00 94 */	bge lbl_80B9BFC8
/* 80B9BF38  48 00 00 28 */	b lbl_80B9BF60
lbl_80B9BF3C:
/* 80B9BF3C  3C 60 80 BA */	lis r3, lit_3755@ha
/* 80B9BF40  C0 03 C9 20 */	lfs f0, lit_3755@l(r3)
/* 80B9BF44  D0 1F 05 A0 */	stfs f0, 0x5a0(r31)
/* 80B9BF48  80 1F 08 38 */	lwz r0, 0x838(r31)
/* 80B9BF4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9BF50  90 1F 08 38 */	stw r0, 0x838(r31)
/* 80B9BF54  38 00 00 01 */	li r0, 1
/* 80B9BF58  B0 1F 09 54 */	sth r0, 0x954(r31)
/* 80B9BF5C  48 00 00 6C */	b lbl_80B9BFC8
lbl_80B9BF60:
/* 80B9BF60  38 7F 05 94 */	addi r3, r31, 0x594
/* 80B9BF64  4B 47 14 C4 */	b play__14mDoExt_baseAnmFv
/* 80B9BF68  38 80 00 01 */	li r4, 1
/* 80B9BF6C  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80B9BF70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B9BF74  40 82 00 1C */	bne lbl_80B9BF90
/* 80B9BF78  3C 60 80 BA */	lis r3, lit_3773@ha
/* 80B9BF7C  C0 23 C9 3C */	lfs f1, lit_3773@l(r3)
/* 80B9BF80  C0 1F 05 A0 */	lfs f0, 0x5a0(r31)
/* 80B9BF84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B9BF88  41 82 00 08 */	beq lbl_80B9BF90
/* 80B9BF8C  38 80 00 00 */	li r4, 0
lbl_80B9BF90:
/* 80B9BF90  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B9BF94  41 82 00 34 */	beq lbl_80B9BFC8
/* 80B9BF98  3C 60 80 BA */	lis r3, lit_3862@ha
/* 80B9BF9C  38 83 C9 DC */	addi r4, r3, lit_3862@l
/* 80B9BFA0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9BFA4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9BFA8  90 61 00 08 */	stw r3, 8(r1)
/* 80B9BFAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9BFB0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9BFB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9BFB8  7F E3 FB 78 */	mr r3, r31
/* 80B9BFBC  38 81 00 08 */	addi r4, r1, 8
/* 80B9BFC0  38 A0 00 01 */	li r5, 1
/* 80B9BFC4  4B FF FD 6D */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
lbl_80B9BFC8:
/* 80B9BFC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9BFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BFD0  7C 08 03 A6 */	mtlr r0
/* 80B9BFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BFD8  4E 80 00 20 */	blr 
