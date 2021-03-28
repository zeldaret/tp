lbl_80C171F8:
/* 80C171F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C171FC  7C 08 02 A6 */	mflr r0
/* 80C17200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17208  7C 7F 1B 78 */	mr r31, r3
/* 80C1720C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C17210  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C17214  40 82 00 1C */	bne lbl_80C17230
/* 80C17218  28 1F 00 00 */	cmplwi r31, 0
/* 80C1721C  41 82 00 08 */	beq lbl_80C17224
/* 80C17220  4B FF F5 39 */	bl __ct__14daObjHBarrel_cFv
lbl_80C17224:
/* 80C17224  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C17228  60 00 00 08 */	ori r0, r0, 8
/* 80C1722C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C17230:
/* 80C17230  7F E3 FB 78 */	mr r3, r31
/* 80C17234  4B FF F8 D5 */	bl create__14daObjHBarrel_cFv
/* 80C17238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1723C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17240  7C 08 03 A6 */	mtlr r0
/* 80C17244  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17248  4E 80 00 20 */	blr 
