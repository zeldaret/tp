lbl_802E8540:
/* 802E8540  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802E8544  7C 08 02 A6 */	mflr r0
/* 802E8548  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E854C  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 802E8550  93 C1 01 08 */	stw r30, 0x108(r1)
/* 802E8554  7C 7E 1B 78 */	mr r30, r3
/* 802E8558  7C 9F 23 78 */	mr r31, r4
/* 802E855C  4B FF FF CD */	bl JUTGetReportConsole
/* 802E8560  28 03 00 00 */	cmplwi r3, 0
/* 802E8564  40 82 00 1C */	bne lbl_802E8580
/* 802E8568  38 61 00 08 */	addi r3, r1, 8
/* 802E856C  38 80 01 00 */	li r4, 0x100
/* 802E8570  7F C5 F3 78 */	mr r5, r30
/* 802E8574  7F E6 FB 78 */	mr r6, r31
/* 802E8578  48 07 E1 19 */	bl vsnprintf
/* 802E857C  48 00 00 34 */	b lbl_802E85B0
lbl_802E8580:
/* 802E8580  4B FF FF A9 */	bl JUTGetReportConsole
/* 802E8584  80 03 00 58 */	lwz r0, 0x58(r3)
/* 802E8588  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 802E858C  41 82 00 24 */	beq lbl_802E85B0
/* 802E8590  38 61 00 08 */	addi r3, r1, 8
/* 802E8594  38 80 01 00 */	li r4, 0x100
/* 802E8598  7F C5 F3 78 */	mr r5, r30
/* 802E859C  7F E6 FB 78 */	mr r6, r31
/* 802E85A0  48 07 E0 F1 */	bl vsnprintf
/* 802E85A4  4B FF FF 85 */	bl JUTGetReportConsole
/* 802E85A8  38 81 00 08 */	addi r4, r1, 8
/* 802E85AC  4B FF F6 8D */	bl print__10JUTConsoleFPCc
lbl_802E85B0:
/* 802E85B0  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 802E85B4  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 802E85B8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802E85BC  7C 08 03 A6 */	mtlr r0
/* 802E85C0  38 21 01 10 */	addi r1, r1, 0x110
/* 802E85C4  4E 80 00 20 */	blr 
