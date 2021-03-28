lbl_80238BDC:
/* 80238BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238BE0  7C 08 02 A6 */	mflr r0
/* 80238BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238BEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80238BF0  41 82 00 34 */	beq lbl_80238C24
/* 80238BF4  3C 60 80 3C */	lis r3, __vt__16dMsgObject_HIO_c@ha
/* 80238BF8  38 03 0B D8 */	addi r0, r3, __vt__16dMsgObject_HIO_c@l
/* 80238BFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80238C00  34 1F 03 5C */	addic. r0, r31, 0x35c
/* 80238C04  41 82 00 10 */	beq lbl_80238C14
/* 80238C08  3C 60 80 3C */	lis r3, __vt__20dMsgObject_HowlHIO_c@ha
/* 80238C0C  38 03 0B E4 */	addi r0, r3, __vt__20dMsgObject_HowlHIO_c@l
/* 80238C10  90 1F 03 5C */	stw r0, 0x35c(r31)
lbl_80238C14:
/* 80238C14  7C 80 07 35 */	extsh. r0, r4
/* 80238C18  40 81 00 0C */	ble lbl_80238C24
/* 80238C1C  7F E3 FB 78 */	mr r3, r31
/* 80238C20  48 09 61 1D */	bl __dl__FPv
lbl_80238C24:
/* 80238C24  7F E3 FB 78 */	mr r3, r31
/* 80238C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238C30  7C 08 03 A6 */	mtlr r0
/* 80238C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80238C38  4E 80 00 20 */	blr 
