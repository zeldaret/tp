lbl_80325F94:
/* 80325F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80325F98  7C 08 02 A6 */	mflr r0
/* 80325F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80325FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80325FA4  48 03 C2 39 */	bl _savegpr_29
/* 80325FA8  7C 7D 1B 78 */	mr r29, r3
/* 80325FAC  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80325FB0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80325FB4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80325FB8  90 03 00 58 */	stw r0, 0x58(r3)
/* 80325FBC  A3 FD 00 5C */	lhz r31, 0x5c(r29)
/* 80325FC0  3B C0 00 00 */	li r30, 0
/* 80325FC4  48 00 00 24 */	b lbl_80325FE8
lbl_80325FC8:
/* 80325FC8  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80325FCC  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80325FD0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80325FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80325FD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80325FDC  7D 89 03 A6 */	mtctr r12
/* 80325FE0  4E 80 04 21 */	bctrl 
/* 80325FE4  3B DE 00 01 */	addi r30, r30, 1
lbl_80325FE8:
/* 80325FE8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80325FEC  7C 00 F8 40 */	cmplw r0, r31
/* 80325FF0  41 80 FF D8 */	blt lbl_80325FC8
/* 80325FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80325FF8  48 03 C2 31 */	bl _restgpr_29
/* 80325FFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80326000  7C 08 03 A6 */	mtlr r0
/* 80326004  38 21 00 20 */	addi r1, r1, 0x20
/* 80326008  4E 80 00 20 */	blr 
