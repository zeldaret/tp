lbl_802D5C64:
/* 802D5C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5C68  7C 08 02 A6 */	mflr r0
/* 802D5C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5C74  7C 7F 1B 78 */	mr r31, r3
/* 802D5C78  28 04 00 00 */	cmplwi r4, 0
/* 802D5C7C  41 82 00 10 */	beq lbl_802D5C8C
/* 802D5C80  3C 04 C0 C1 */	addis r0, r4, 0xc0c1
/* 802D5C84  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 802D5C88  40 82 00 18 */	bne lbl_802D5CA0
lbl_802D5C8C:
/* 802D5C8C  7F E3 FB 78 */	mr r3, r31
/* 802D5C90  7C A4 2B 78 */	mr r4, r5
/* 802D5C94  48 00 0A 19 */	bl findNameResource__10JKRArchiveCFPCc
/* 802D5C98  7C 64 1B 78 */	mr r4, r3
/* 802D5C9C  48 00 00 0C */	b lbl_802D5CA8
lbl_802D5CA0:
/* 802D5CA0  48 00 08 55 */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 802D5CA4  7C 64 1B 78 */	mr r4, r3
lbl_802D5CA8:
/* 802D5CA8  28 04 00 00 */	cmplwi r4, 0
/* 802D5CAC  41 82 00 20 */	beq lbl_802D5CCC
/* 802D5CB0  7F E3 FB 78 */	mr r3, r31
/* 802D5CB4  38 A0 00 00 */	li r5, 0
/* 802D5CB8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5CBC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5CC0  7D 89 03 A6 */	mtctr r12
/* 802D5CC4  4E 80 04 21 */	bctrl 
/* 802D5CC8  48 00 00 08 */	b lbl_802D5CD0
lbl_802D5CCC:
/* 802D5CCC  38 60 00 00 */	li r3, 0
lbl_802D5CD0:
/* 802D5CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5CD8  7C 08 03 A6 */	mtlr r0
/* 802D5CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5CE0  4E 80 00 20 */	blr 
