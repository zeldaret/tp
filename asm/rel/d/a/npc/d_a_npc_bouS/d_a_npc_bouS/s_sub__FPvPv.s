lbl_80974998:
/* 80974998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097499C  7C 08 02 A6 */	mflr r0
/* 809749A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809749A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809749A8  93 C1 00 08 */	stw r30, 8(r1)
/* 809749AC  7C 7E 1B 78 */	mr r30, r3
/* 809749B0  7C 9F 23 78 */	mr r31, r4
/* 809749B4  4B 6A 43 2C */	b fopAc_IsActor__FPv
/* 809749B8  2C 03 00 00 */	cmpwi r3, 0
/* 809749BC  41 82 00 2C */	beq lbl_809749E8
/* 809749C0  A8 1E 00 08 */	lha r0, 8(r30)
/* 809749C4  2C 00 02 4D */	cmpwi r0, 0x24d
/* 809749C8  40 82 00 20 */	bne lbl_809749E8
/* 809749CC  7F E3 FB 78 */	mr r3, r31
/* 809749D0  7F C4 F3 78 */	mr r4, r30
/* 809749D4  48 00 00 31 */	bl checkInstructionTag__11daNpcBouS_cFP10fopAc_ac_c
/* 809749D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809749DC  41 82 00 0C */	beq lbl_809749E8
/* 809749E0  7F C3 F3 78 */	mr r3, r30
/* 809749E4  48 00 00 08 */	b lbl_809749EC
lbl_809749E8:
/* 809749E8  38 60 00 00 */	li r3, 0
lbl_809749EC:
/* 809749EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809749F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809749F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809749F8  7C 08 03 A6 */	mtlr r0
/* 809749FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80974A00  4E 80 00 20 */	blr 
