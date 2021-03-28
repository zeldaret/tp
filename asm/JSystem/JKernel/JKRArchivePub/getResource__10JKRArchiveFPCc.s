lbl_802D5BE8:
/* 802D5BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5BEC  7C 08 02 A6 */	mflr r0
/* 802D5BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5BF8  7C 7F 1B 78 */	mr r31, r3
/* 802D5BFC  88 04 00 00 */	lbz r0, 0(r4)
/* 802D5C00  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D5C04  40 82 00 18 */	bne lbl_802D5C1C
/* 802D5C08  38 84 00 01 */	addi r4, r4, 1
/* 802D5C0C  38 A0 00 00 */	li r5, 0
/* 802D5C10  48 00 09 95 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D5C14  7C 64 1B 78 */	mr r4, r3
/* 802D5C18  48 00 00 10 */	b lbl_802D5C28
lbl_802D5C1C:
/* 802D5C1C  80 AD 8E A0 */	lwz r5, sCurrentDirID__10JKRArchive(r13)
/* 802D5C20  48 00 09 85 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D5C24  7C 64 1B 78 */	mr r4, r3
lbl_802D5C28:
/* 802D5C28  28 04 00 00 */	cmplwi r4, 0
/* 802D5C2C  41 82 00 20 */	beq lbl_802D5C4C
/* 802D5C30  7F E3 FB 78 */	mr r3, r31
/* 802D5C34  38 A0 00 00 */	li r5, 0
/* 802D5C38  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5C3C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5C40  7D 89 03 A6 */	mtctr r12
/* 802D5C44  4E 80 04 21 */	bctrl 
/* 802D5C48  48 00 00 08 */	b lbl_802D5C50
lbl_802D5C4C:
/* 802D5C4C  38 60 00 00 */	li r3, 0
lbl_802D5C50:
/* 802D5C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5C58  7C 08 03 A6 */	mtlr r0
/* 802D5C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5C60  4E 80 00 20 */	blr 
