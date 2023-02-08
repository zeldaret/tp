lbl_80522E28:
/* 80522E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522E2C  7C 08 02 A6 */	mflr r0
/* 80522E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522E38  93 C1 00 08 */	stw r30, 8(r1)
/* 80522E3C  7C 9E 23 78 */	mr r30, r4
/* 80522E40  7C AC 2B 78 */	mr r12, r5
/* 80522E44  7C CB 33 78 */	mr r11, r6
/* 80522E48  7C E9 3B 78 */	mr r9, r7
/* 80522E4C  7D 0A 43 78 */	mr r10, r8
/* 80522E50  A0 C3 00 10 */	lhz r6, 0x10(r3)
/* 80522E54  1C 86 00 48 */	mulli r4, r6, 0x48
/* 80522E58  3B E4 00 14 */	addi r31, r4, 0x14
/* 80522E5C  7F E3 FA 14 */	add r31, r3, r31
/* 80522E60  7C C5 33 78 */	mr r5, r6
/* 80522E64  20 06 03 E8 */	subfic r0, r6, 0x3e8
/* 80522E68  7C 09 03 A6 */	mtctr r0
/* 80522E6C  2C 06 03 E8 */	cmpwi r6, 0x3e8
/* 80522E70  40 80 00 38 */	bge lbl_80522EA8
lbl_80522E74:
/* 80522E74  88 1F 00 00 */	lbz r0, 0(r31)
/* 80522E78  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80522E7C  40 82 00 20 */	bne lbl_80522E9C
/* 80522E80  7F E4 FB 78 */	mr r4, r31
/* 80522E84  7F C6 F3 78 */	mr r6, r30
/* 80522E88  7D 87 63 78 */	mr r7, r12
/* 80522E8C  7D 68 5B 78 */	mr r8, r11
/* 80522E90  4B FF FE 2D */	bl setData__16dFlower_packet_cFP14dFlower_data_ciScR4cXyziScs
/* 80522E94  7F E3 FB 78 */	mr r3, r31
/* 80522E98  48 00 00 5C */	b lbl_80522EF4
lbl_80522E9C:
/* 80522E9C  3B FF 00 48 */	addi r31, r31, 0x48
/* 80522EA0  38 A5 00 01 */	addi r5, r5, 1
/* 80522EA4  42 00 FF D0 */	bdnz lbl_80522E74
lbl_80522EA8:
/* 80522EA8  3B E3 00 14 */	addi r31, r3, 0x14
/* 80522EAC  38 A0 00 00 */	li r5, 0
/* 80522EB0  7C C9 03 A6 */	mtctr r6
/* 80522EB4  2C 06 00 00 */	cmpwi r6, 0
/* 80522EB8  40 81 00 38 */	ble lbl_80522EF0
lbl_80522EBC:
/* 80522EBC  88 1F 00 00 */	lbz r0, 0(r31)
/* 80522EC0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80522EC4  40 82 00 20 */	bne lbl_80522EE4
/* 80522EC8  7F E4 FB 78 */	mr r4, r31
/* 80522ECC  7F C6 F3 78 */	mr r6, r30
/* 80522ED0  7D 87 63 78 */	mr r7, r12
/* 80522ED4  7D 68 5B 78 */	mr r8, r11
/* 80522ED8  4B FF FD E5 */	bl setData__16dFlower_packet_cFP14dFlower_data_ciScR4cXyziScs
/* 80522EDC  7F E3 FB 78 */	mr r3, r31
/* 80522EE0  48 00 00 14 */	b lbl_80522EF4
lbl_80522EE4:
/* 80522EE4  3B FF 00 48 */	addi r31, r31, 0x48
/* 80522EE8  38 A5 00 01 */	addi r5, r5, 1
/* 80522EEC  42 00 FF D0 */	bdnz lbl_80522EBC
lbl_80522EF0:
/* 80522EF0  38 60 00 00 */	li r3, 0
lbl_80522EF4:
/* 80522EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522F00  7C 08 03 A6 */	mtlr r0
/* 80522F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80522F08  4E 80 00 20 */	blr 
