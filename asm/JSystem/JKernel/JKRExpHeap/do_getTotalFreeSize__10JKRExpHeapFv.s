lbl_802CFC84:
/* 802CFC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CFC88  7C 08 02 A6 */	mflr r0
/* 802CFC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CFC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CFC94  93 C1 00 08 */	stw r30, 8(r1)
/* 802CFC98  7C 7E 1B 78 */	mr r30, r3
/* 802CFC9C  3B E0 00 00 */	li r31, 0
/* 802CFCA0  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFCA4  48 06 F3 9D */	bl OSLockMutex
/* 802CFCA8  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 802CFCAC  48 00 00 10 */	b lbl_802CFCBC
lbl_802CFCB0:
/* 802CFCB0  80 03 00 04 */	lwz r0, 4(r3)
/* 802CFCB4  7F FF 02 14 */	add r31, r31, r0
/* 802CFCB8  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802CFCBC:
/* 802CFCBC  28 03 00 00 */	cmplwi r3, 0
/* 802CFCC0  40 82 FF F0 */	bne lbl_802CFCB0
/* 802CFCC4  38 7E 00 18 */	addi r3, r30, 0x18
/* 802CFCC8  48 06 F4 55 */	bl OSUnlockMutex
/* 802CFCCC  7F E3 FB 78 */	mr r3, r31
/* 802CFCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CFCD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CFCD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CFCDC  7C 08 03 A6 */	mtlr r0
/* 802CFCE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CFCE4  4E 80 00 20 */	blr 
