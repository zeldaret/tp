lbl_802DE840:
/* 802DE840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE844  7C 08 02 A6 */	mflr r0
/* 802DE848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE84C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE850  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE854  7C 7E 1B 78 */	mr r30, r3
/* 802DE858  7C 9F 23 78 */	mr r31, r4
/* 802DE85C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802DE860  28 03 00 00 */	cmplwi r3, 0
/* 802DE864  41 82 00 08 */	beq lbl_802DE86C
/* 802DE868  48 00 00 F5 */	bl load__10JUTPaletteFv
lbl_802DE86C:
/* 802DE86C  7F C3 F3 78 */	mr r3, r30
/* 802DE870  7F E4 FB 78 */	mr r4, r31
/* 802DE874  48 07 FB A1 */	bl GXLoadTexObj
/* 802DE878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE87C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE884  7C 08 03 A6 */	mtlr r0
/* 802DE888  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE88C  4E 80 00 20 */	blr 
