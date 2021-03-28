lbl_8034BB88:
/* 8034BB88  7C 08 02 A6 */	mflr r0
/* 8034BB8C  90 01 00 04 */	stw r0, 4(r1)
/* 8034BB90  3C 03 FE DD */	addis r0, r3, 0xfedd
/* 8034BB94  28 00 45 67 */	cmplwi r0, 0x4567
/* 8034BB98  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034BB9C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034BBA0  40 82 00 0C */	bne lbl_8034BBAC
/* 8034BBA4  3B E0 00 FF */	li r31, 0xff
/* 8034BBA8  48 00 00 38 */	b lbl_8034BBE0
lbl_8034BBAC:
/* 8034BBAC  28 00 45 68 */	cmplwi r0, 0x4568
/* 8034BBB0  40 82 00 0C */	bne lbl_8034BBBC
/* 8034BBB4  3B E0 00 FE */	li r31, 0xfe
/* 8034BBB8  48 00 00 28 */	b lbl_8034BBE0
lbl_8034BBBC:
/* 8034BBBC  54 7F 46 3E */	srwi r31, r3, 0x18
/* 8034BBC0  54 63 02 3E */	clrlwi r3, r3, 8
/* 8034BBC4  4B FF FE A9 */	bl ErrorCode2Num
/* 8034BBC8  28 1F 00 06 */	cmplwi r31, 6
/* 8034BBCC  41 80 00 08 */	blt lbl_8034BBD4
/* 8034BBD0  3B E0 00 06 */	li r31, 6
lbl_8034BBD4:
/* 8034BBD4  1C 1F 00 1E */	mulli r0, r31, 0x1e
/* 8034BBD8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8034BBDC  7F E3 02 14 */	add r31, r3, r0
lbl_8034BBE0:
/* 8034BBE0  4B FF 45 C1 */	bl __OSLockSramEx
/* 8034BBE4  9B E3 00 24 */	stb r31, 0x24(r3)
/* 8034BBE8  38 60 00 01 */	li r3, 1
/* 8034BBEC  4B FF 49 71 */	bl __OSUnlockSramEx
/* 8034BBF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034BBF4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034BBF8  38 21 00 18 */	addi r1, r1, 0x18
/* 8034BBFC  7C 08 03 A6 */	mtlr r0
/* 8034BC00  4E 80 00 20 */	blr 
