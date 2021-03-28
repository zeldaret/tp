lbl_809EEE94:
/* 809EEE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EEE98  7C 08 02 A6 */	mflr r0
/* 809EEE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EEEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EEEA4  93 C1 00 08 */	stw r30, 8(r1)
/* 809EEEA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809EEEAC  7C 9F 23 78 */	mr r31, r4
/* 809EEEB0  41 82 00 38 */	beq lbl_809EEEE8
/* 809EEEB4  3C 60 80 9F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809EEEB8  38 03 FB 94 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809EEEBC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809EEEC0  38 7E 00 14 */	addi r3, r30, 0x14
/* 809EEEC4  38 80 FF FF */	li r4, -1
/* 809EEEC8  4B 88 00 50 */	b __dt__8cM3dGCirFv
/* 809EEECC  7F C3 F3 78 */	mr r3, r30
/* 809EEED0  38 80 00 00 */	li r4, 0
/* 809EEED4  4B 87 91 DC */	b __dt__13cBgS_PolyInfoFv
/* 809EEED8  7F E0 07 35 */	extsh. r0, r31
/* 809EEEDC  40 81 00 0C */	ble lbl_809EEEE8
/* 809EEEE0  7F C3 F3 78 */	mr r3, r30
/* 809EEEE4  4B 8D FE 58 */	b __dl__FPv
lbl_809EEEE8:
/* 809EEEE8  7F C3 F3 78 */	mr r3, r30
/* 809EEEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EEEF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EEEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EEEF8  7C 08 03 A6 */	mtlr r0
/* 809EEEFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809EEF00  4E 80 00 20 */	blr 
