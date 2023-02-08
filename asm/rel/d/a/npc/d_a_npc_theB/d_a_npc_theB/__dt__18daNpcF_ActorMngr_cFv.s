lbl_80B0042C:
/* 80B0042C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00430  7C 08 02 A6 */	mflr r0
/* 80B00434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0043C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B00440  41 82 00 1C */	beq lbl_80B0045C
/* 80B00444  3C A0 80 B0 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B012CC@ha */
/* 80B00448  38 05 12 CC */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80B012CC@l */
/* 80B0044C  90 1F 00 04 */	stw r0, 4(r31)
/* 80B00450  7C 80 07 35 */	extsh. r0, r4
/* 80B00454  40 81 00 08 */	ble lbl_80B0045C
/* 80B00458  4B 7C E8 E5 */	bl __dl__FPv
lbl_80B0045C:
/* 80B0045C  7F E3 FB 78 */	mr r3, r31
/* 80B00460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B00464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00468  7C 08 03 A6 */	mtlr r0
/* 80B0046C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00470  4E 80 00 20 */	blr 
