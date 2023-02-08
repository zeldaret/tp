lbl_80237B68:
/* 80237B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237B6C  7C 08 02 A6 */	mflr r0
/* 80237B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80237B78  7C 7F 1B 78 */	mr r31, r3
/* 80237B7C  4B FF ED 7D */	bl getStatusLocal__12dMsgObject_cFv
/* 80237B80  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80237B84  41 82 00 60 */	beq lbl_80237BE4
/* 80237B88  7F E3 FB 78 */	mr r3, r31
/* 80237B8C  4B FF ED 6D */	bl getStatusLocal__12dMsgObject_cFv
/* 80237B90  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237B94  28 00 00 01 */	cmplwi r0, 1
/* 80237B98  41 82 00 4C */	beq lbl_80237BE4
/* 80237B9C  88 1F 04 C7 */	lbz r0, 0x4c7(r31)
/* 80237BA0  28 00 00 00 */	cmplwi r0, 0
/* 80237BA4  40 82 00 40 */	bne lbl_80237BE4
/* 80237BA8  7F E3 FB 78 */	mr r3, r31
/* 80237BAC  4B FF ED 4D */	bl getStatusLocal__12dMsgObject_cFv
/* 80237BB0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237BB4  28 00 00 0B */	cmplwi r0, 0xb
/* 80237BB8  41 82 00 2C */	beq lbl_80237BE4
/* 80237BBC  7F E3 FB 78 */	mr r3, r31
/* 80237BC0  4B FF ED 39 */	bl getStatusLocal__12dMsgObject_cFv
/* 80237BC4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80237BC8  28 00 00 06 */	cmplwi r0, 6
/* 80237BCC  40 82 00 10 */	bne lbl_80237BDC
/* 80237BD0  A0 1F 01 66 */	lhz r0, 0x166(r31)
/* 80237BD4  28 00 00 0F */	cmplwi r0, 0xf
/* 80237BD8  41 82 00 0C */	beq lbl_80237BE4
lbl_80237BDC:
/* 80237BDC  38 60 00 01 */	li r3, 1
/* 80237BE0  48 00 00 08 */	b lbl_80237BE8
lbl_80237BE4:
/* 80237BE4  38 60 00 00 */	li r3, 0
lbl_80237BE8:
/* 80237BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80237BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237BF0  7C 08 03 A6 */	mtlr r0
/* 80237BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80237BF8  4E 80 00 20 */	blr 
