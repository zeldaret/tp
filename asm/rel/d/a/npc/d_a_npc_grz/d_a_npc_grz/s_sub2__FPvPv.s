lbl_809EC7BC:
/* 809EC7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EC7C0  7C 08 02 A6 */	mflr r0
/* 809EC7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EC7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EC7CC  7C 7F 1B 78 */	mr r31, r3
/* 809EC7D0  4B 62 C5 10 */	b fopAc_IsActor__FPv
/* 809EC7D4  2C 03 00 00 */	cmpwi r3, 0
/* 809EC7D8  41 82 00 18 */	beq lbl_809EC7F0
/* 809EC7DC  A8 1F 00 08 */	lha r0, 8(r31)
/* 809EC7E0  2C 00 02 7A */	cmpwi r0, 0x27a
/* 809EC7E4  40 82 00 0C */	bne lbl_809EC7F0
/* 809EC7E8  7F E3 FB 78 */	mr r3, r31
/* 809EC7EC  48 00 00 08 */	b lbl_809EC7F4
lbl_809EC7F0:
/* 809EC7F0  38 60 00 00 */	li r3, 0
lbl_809EC7F4:
/* 809EC7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EC7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EC7FC  7C 08 03 A6 */	mtlr r0
/* 809EC800  38 21 00 10 */	addi r1, r1, 0x10
/* 809EC804  4E 80 00 20 */	blr 
