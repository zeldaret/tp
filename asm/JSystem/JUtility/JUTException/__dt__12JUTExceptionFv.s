lbl_802E40EC:
/* 802E40EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E40F0  7C 08 02 A6 */	mflr r0
/* 802E40F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E40F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E40FC  93 C1 00 08 */	stw r30, 8(r1)
/* 802E4100  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E4104  7C 9F 23 78 */	mr r31, r4
/* 802E4108  41 82 00 28 */	beq lbl_802E4130
/* 802E410C  3C 80 80 3D */	lis r4, __vt__12JUTException@ha
/* 802E4110  38 04 C6 A4 */	addi r0, r4, __vt__12JUTException@l
/* 802E4114  90 1E 00 00 */	stw r0, 0(r30)
/* 802E4118  38 80 00 00 */	li r4, 0
/* 802E411C  4B FE D6 3D */	bl __dt__9JKRThreadFv
/* 802E4120  7F E0 07 35 */	extsh. r0, r31
/* 802E4124  40 81 00 0C */	ble lbl_802E4130
/* 802E4128  7F C3 F3 78 */	mr r3, r30
/* 802E412C  4B FE AC 11 */	bl __dl__FPv
lbl_802E4130:
/* 802E4130  7F C3 F3 78 */	mr r3, r30
/* 802E4134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4138  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E413C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4140  7C 08 03 A6 */	mtlr r0
/* 802E4144  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4148  4E 80 00 20 */	blr 
