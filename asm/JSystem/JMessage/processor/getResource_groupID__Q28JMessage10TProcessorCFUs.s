lbl_802A7C54:
/* 802A7C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7C58  7C 08 02 A6 */	mflr r0
/* 802A7C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A7C64  7C 7F 1B 78 */	mr r31, r3
/* 802A7C68  38 C0 00 00 */	li r6, 0
/* 802A7C6C  80 63 00 08 */	lwz r3, 8(r3)
/* 802A7C70  28 03 00 00 */	cmplwi r3, 0
/* 802A7C74  41 82 00 1C */	beq lbl_802A7C90
/* 802A7C78  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 802A7C7C  A0 A5 00 0C */	lhz r5, 0xc(r5)
/* 802A7C80  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 802A7C84  7C 00 28 40 */	cmplw r0, r5
/* 802A7C88  40 82 00 08 */	bne lbl_802A7C90
/* 802A7C8C  38 C0 00 01 */	li r6, 1
lbl_802A7C90:
/* 802A7C90  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802A7C94  41 82 00 08 */	beq lbl_802A7C9C
/* 802A7C98  48 00 00 28 */	b lbl_802A7CC0
lbl_802A7C9C:
/* 802A7C9C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A7CA0  80 63 00 04 */	lwz r3, 4(r3)
/* 802A7CA4  28 03 00 00 */	cmplwi r3, 0
/* 802A7CA8  40 82 00 0C */	bne lbl_802A7CB4
/* 802A7CAC  38 60 00 00 */	li r3, 0
/* 802A7CB0  48 00 00 0C */	b lbl_802A7CBC
lbl_802A7CB4:
/* 802A7CB4  38 63 00 08 */	addi r3, r3, 8
/* 802A7CB8  48 00 12 B5 */	bl Get_groupID__Q38JMessage18TResourceContainer10TCResourceFUs
lbl_802A7CBC:
/* 802A7CBC  90 7F 00 08 */	stw r3, 8(r31)
lbl_802A7CC0:
/* 802A7CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A7CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7CC8  7C 08 03 A6 */	mtlr r0
/* 802A7CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7CD0  4E 80 00 20 */	blr 
