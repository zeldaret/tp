lbl_802E41E8:
/* 802E41E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E41EC  7C 08 02 A6 */	mflr r0
/* 802E41F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E41F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E41F8  7C 7F 1B 78 */	mr r31, r3
/* 802E41FC  38 00 FF FF */	li r0, -1
/* 802E4200  90 03 00 18 */	stw r0, 0x18(r3)
/* 802E4204  38 80 00 00 */	li r4, 0
/* 802E4208  38 A0 00 00 */	li r5, 0
/* 802E420C  38 C0 00 00 */	li r6, 0
/* 802E4210  48 00 03 5D */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 802E4214  7F E3 FB 78 */	mr r3, r31
/* 802E4218  38 80 00 FF */	li r4, 0xff
/* 802E421C  38 A0 00 FF */	li r5, 0xff
/* 802E4220  38 C0 00 FF */	li r6, 0xff
/* 802E4224  48 00 05 A5 */	bl setCharColor__14JUTDirectPrintFUcUcUc
/* 802E4228  7F E3 FB 78 */	mr r3, r31
/* 802E422C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4234  7C 08 03 A6 */	mtlr r0
/* 802E4238  38 21 00 10 */	addi r1, r1, 0x10
/* 802E423C  4E 80 00 20 */	blr 
