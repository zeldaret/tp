lbl_8031CE64:
/* 8031CE64  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 8031CE68  38 80 00 00 */	li r4, 0
/* 8031CE6C  7C 09 03 A6 */	mtctr r0
/* 8031CE70  28 00 00 00 */	cmplwi r0, 0
/* 8031CE74  4C 81 00 20 */	blelr 
lbl_8031CE78:
/* 8031CE78  39 44 00 38 */	addi r10, r4, 0x38
/* 8031CE7C  7D 43 52 14 */	add r10, r3, r10
/* 8031CE80  81 2A 00 00 */	lwz r9, 0(r10)
/* 8031CE84  39 00 00 61 */	li r8, 0x61
/* 8031CE88  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CE8C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CE90  38 05 00 01 */	addi r0, r5, 1
/* 8031CE94  90 06 00 08 */	stw r0, 8(r6)
/* 8031CE98  99 05 00 00 */	stb r8, 0(r5)
/* 8031CE9C  55 27 46 3E */	srwi r7, r9, 0x18
/* 8031CEA0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CEA4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CEA8  38 05 00 01 */	addi r0, r5, 1
/* 8031CEAC  90 06 00 08 */	stw r0, 8(r6)
/* 8031CEB0  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CEB4  55 27 86 3E */	rlwinm r7, r9, 0x10, 0x18, 0x1f
/* 8031CEB8  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CEBC  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CEC0  38 05 00 01 */	addi r0, r5, 1
/* 8031CEC4  90 06 00 08 */	stw r0, 8(r6)
/* 8031CEC8  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CECC  55 27 C6 3E */	rlwinm r7, r9, 0x18, 0x18, 0x1f
/* 8031CED0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CED4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CED8  38 05 00 01 */	addi r0, r5, 1
/* 8031CEDC  90 06 00 08 */	stw r0, 8(r6)
/* 8031CEE0  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CEE4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CEE8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CEEC  38 05 00 01 */	addi r0, r5, 1
/* 8031CEF0  90 06 00 08 */	stw r0, 8(r6)
/* 8031CEF4  99 25 00 00 */	stb r9, 0(r5)
/* 8031CEF8  81 2A 00 04 */	lwz r9, 4(r10)
/* 8031CEFC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CF00  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CF04  38 05 00 01 */	addi r0, r5, 1
/* 8031CF08  90 06 00 08 */	stw r0, 8(r6)
/* 8031CF0C  99 05 00 00 */	stb r8, 0(r5)
/* 8031CF10  55 27 46 3E */	srwi r7, r9, 0x18
/* 8031CF14  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CF18  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CF1C  38 05 00 01 */	addi r0, r5, 1
/* 8031CF20  90 06 00 08 */	stw r0, 8(r6)
/* 8031CF24  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CF28  55 27 86 3E */	rlwinm r7, r9, 0x10, 0x18, 0x1f
/* 8031CF2C  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CF30  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CF34  38 05 00 01 */	addi r0, r5, 1
/* 8031CF38  90 06 00 08 */	stw r0, 8(r6)
/* 8031CF3C  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CF40  55 27 C6 3E */	rlwinm r7, r9, 0x18, 0x18, 0x1f
/* 8031CF44  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CF48  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CF4C  38 05 00 01 */	addi r0, r5, 1
/* 8031CF50  90 06 00 08 */	stw r0, 8(r6)
/* 8031CF54  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CF58  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CF5C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CF60  38 05 00 01 */	addi r0, r5, 1
/* 8031CF64  90 06 00 08 */	stw r0, 8(r6)
/* 8031CF68  99 25 00 00 */	stb r9, 0(r5)
/* 8031CF6C  38 84 00 08 */	addi r4, r4, 8
/* 8031CF70  42 00 FF 08 */	bdnz lbl_8031CE78
/* 8031CF74  4E 80 00 20 */	blr 
