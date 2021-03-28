lbl_8012CFEC:
/* 8012CFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012CFF0  7C 08 02 A6 */	mflr r0
/* 8012CFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012CFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012CFFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8012D000  7C 7E 1B 78 */	mr r30, r3
/* 8012D004  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012D008  38 80 00 00 */	li r4, 0
/* 8012D00C  4B FF CB 39 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D010  2C 03 00 00 */	cmpwi r3, 0
/* 8012D014  40 82 00 20 */	bne lbl_8012D034
/* 8012D018  7F E3 FB 78 */	mr r3, r31
/* 8012D01C  48 03 14 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012D020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D024  41 82 00 10 */	beq lbl_8012D034
/* 8012D028  7F C3 F3 78 */	mr r3, r30
/* 8012D02C  38 80 00 17 */	li r4, 0x17
/* 8012D030  4B FF C6 49 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
lbl_8012D034:
/* 8012D034  38 60 00 01 */	li r3, 1
/* 8012D038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D03C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012D040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D044  7C 08 03 A6 */	mtlr r0
/* 8012D048  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D04C  4E 80 00 20 */	blr 
