lbl_802CFC10:
/* 802CFC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CFC14  7C 08 02 A6 */	mflr r0
/* 802CFC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CFC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CFC20  93 C1 00 08 */	stw r30, 8(r1)
/* 802CFC24  7C 7E 1B 78 */	mr r30, r3
/* 802CFC28  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFC2C  48 06 F4 15 */	bl OSLockMutex
/* 802CFC30  38 60 00 00 */	li r3, 0
/* 802CFC34  3B E0 00 00 */	li r31, 0
/* 802CFC38  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 802CFC3C  48 00 00 1C */	b lbl_802CFC58
lbl_802CFC40:
/* 802CFC40  80 04 00 04 */	lwz r0, 4(r4)
/* 802CFC44  7C 03 00 00 */	cmpw r3, r0
/* 802CFC48  40 80 00 0C */	bge lbl_802CFC54
/* 802CFC4C  7C 03 03 78 */	mr r3, r0
/* 802CFC50  7C 9F 23 78 */	mr r31, r4
lbl_802CFC54:
/* 802CFC54  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802CFC58:
/* 802CFC58  28 04 00 00 */	cmplwi r4, 0
/* 802CFC5C  40 82 FF E4 */	bne lbl_802CFC40
/* 802CFC60  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFC64  48 06 F4 B9 */	bl OSUnlockMutex
/* 802CFC68  7F E3 FB 78 */	mr r3, r31
/* 802CFC6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CFC70  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CFC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CFC78  7C 08 03 A6 */	mtlr r0
/* 802CFC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CFC80  4E 80 00 20 */	blr 
