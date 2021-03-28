lbl_8020D698:
/* 8020D698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D69C  7C 08 02 A6 */	mflr r0
/* 8020D6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D6A8  7C 7F 1B 78 */	mr r31, r3
/* 8020D6AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020D6B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020D6B4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8020D6B8  28 00 00 00 */	cmplwi r0, 0
/* 8020D6BC  41 82 00 0C */	beq lbl_8020D6C8
/* 8020D6C0  38 60 00 01 */	li r3, 1
/* 8020D6C4  48 00 00 54 */	b lbl_8020D718
lbl_8020D6C8:
/* 8020D6C8  48 02 AB 65 */	bl getStatus__12dMsgObject_cFv
/* 8020D6CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8020D6D0  20 60 00 01 */	subfic r3, r0, 1
/* 8020D6D4  30 03 FF FF */	addic r0, r3, -1
/* 8020D6D8  7C 00 19 10 */	subfe r0, r0, r3
/* 8020D6DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020D6E0  41 82 00 0C */	beq lbl_8020D6EC
/* 8020D6E4  38 60 00 01 */	li r3, 1
/* 8020D6E8  48 00 00 30 */	b lbl_8020D718
lbl_8020D6EC:
/* 8020D6EC  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8020D6F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020D6F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020D6F8  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 8020D6FC  30 03 FF FF */	addic r0, r3, -1
/* 8020D700  7C 00 19 10 */	subfe r0, r0, r3
/* 8020D704  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8020D708  7C 64 00 50 */	subf r3, r4, r0
/* 8020D70C  30 03 FF FF */	addic r0, r3, -1
/* 8020D710  7C 00 19 10 */	subfe r0, r0, r3
/* 8020D714  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8020D718:
/* 8020D718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D720  7C 08 03 A6 */	mtlr r0
/* 8020D724  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D728  4E 80 00 20 */	blr 
