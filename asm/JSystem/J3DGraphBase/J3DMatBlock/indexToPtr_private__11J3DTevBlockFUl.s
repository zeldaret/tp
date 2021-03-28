lbl_8031E098:
/* 8031E098  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031E09C  7C 08 02 A6 */	mflr r0
/* 8031E0A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031E0A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8031E0A8  48 04 41 35 */	bl _savegpr_29
/* 8031E0AC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031E0B0  80 03 00 00 */	lwz r0, 0(r3)
/* 8031E0B4  7C 00 22 14 */	add r0, r0, r4
/* 8031E0B8  90 03 00 08 */	stw r0, 8(r3)
/* 8031E0BC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031E0C0  83 E3 00 08 */	lwz r31, 8(r3)
/* 8031E0C4  3B A0 00 00 */	li r29, 0
lbl_8031E0C8:
/* 8031E0C8  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031E0CC  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031E0D0  7F C3 F3 78 */	mr r3, r30
/* 8031E0D4  48 00 5E 91 */	bl isTexNoReg__FPv
/* 8031E0D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8031E0DC  41 82 00 24 */	beq lbl_8031E100
/* 8031E0E0  7F C3 F3 78 */	mr r3, r30
/* 8031E0E4  48 00 5E A5 */	bl getTexNoReg__FPv
/* 8031E0E8  B0 61 00 08 */	sth r3, 8(r1)
/* 8031E0EC  7F A3 EB 78 */	mr r3, r29
/* 8031E0F0  38 81 00 08 */	addi r4, r1, 8
/* 8031E0F4  48 00 5E A1 */	bl loadTexNo__FUlRCUs
/* 8031E0F8  3B BD 00 01 */	addi r29, r29, 1
/* 8031E0FC  4B FF FF CC */	b lbl_8031E0C8
lbl_8031E100:
/* 8031E100  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031E104  80 03 00 08 */	lwz r0, 8(r3)
/* 8031E108  7F E3 FB 78 */	mr r3, r31
/* 8031E10C  7C 9F 00 50 */	subf r4, r31, r0
/* 8031E110  48 01 D4 CD */	bl DCStoreRange
/* 8031E114  39 61 00 20 */	addi r11, r1, 0x20
/* 8031E118  48 04 41 11 */	bl _restgpr_29
/* 8031E11C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031E120  7C 08 03 A6 */	mtlr r0
/* 8031E124  38 21 00 20 */	addi r1, r1, 0x20
/* 8031E128  4E 80 00 20 */	blr 
