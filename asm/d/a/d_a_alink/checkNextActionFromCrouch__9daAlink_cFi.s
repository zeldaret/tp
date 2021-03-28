lbl_800BAF08:
/* 800BAF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAF0C  7C 08 02 A6 */	mflr r0
/* 800BAF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAF18  7C 7F 1B 78 */	mr r31, r3
/* 800BAF1C  4B FF F1 B5 */	bl checkNextAction__9daAlink_cFi
/* 800BAF20  2C 03 00 00 */	cmpwi r3, 0
/* 800BAF24  41 82 00 44 */	beq lbl_800BAF68
/* 800BAF28  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 800BAF2C  28 00 00 01 */	cmplwi r0, 1
/* 800BAF30  41 82 00 14 */	beq lbl_800BAF44
/* 800BAF34  28 00 00 02 */	cmplwi r0, 2
/* 800BAF38  41 82 00 0C */	beq lbl_800BAF44
/* 800BAF3C  28 00 00 03 */	cmplwi r0, 3
/* 800BAF40  40 82 00 20 */	bne lbl_800BAF60
lbl_800BAF44:
/* 800BAF44  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 800BAF48  3C 80 80 39 */	lis r4, m__20daAlinkHIO_crouch_c0@ha
/* 800BAF4C  38 84 E0 1C */	addi r4, r4, m__20daAlinkHIO_crouch_c0@l
/* 800BAF50  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 800BAF54  38 80 00 00 */	li r4, 0
/* 800BAF58  38 A0 00 23 */	li r5, 0x23
/* 800BAF5C  4B F5 48 ED */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_800BAF60:
/* 800BAF60  38 60 00 01 */	li r3, 1
/* 800BAF64  48 00 00 08 */	b lbl_800BAF6C
lbl_800BAF68:
/* 800BAF68  38 60 00 00 */	li r3, 0
lbl_800BAF6C:
/* 800BAF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BAF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BAF74  7C 08 03 A6 */	mtlr r0
/* 800BAF78  38 21 00 10 */	addi r1, r1, 0x10
/* 800BAF7C  4E 80 00 20 */	blr 
