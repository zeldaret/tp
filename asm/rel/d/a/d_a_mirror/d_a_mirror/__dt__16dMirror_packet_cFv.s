lbl_80871E84:
/* 80871E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80871E88  7C 08 02 A6 */	mflr r0
/* 80871E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80871E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80871E94  93 C1 00 08 */	stw r30, 8(r1)
/* 80871E98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80871E9C  7C 9F 23 78 */	mr r31, r4
/* 80871EA0  41 82 00 4C */	beq lbl_80871EEC
/* 80871EA4  3C 60 80 87 */	lis r3, __vt__16dMirror_packet_c@ha
/* 80871EA8  38 03 26 C4 */	addi r0, r3, __vt__16dMirror_packet_c@l
/* 80871EAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80871EB0  38 7E 01 34 */	addi r3, r30, 0x134
/* 80871EB4  3C 80 80 87 */	lis r4, __dt__4cXyzFv@ha
/* 80871EB8  38 84 0C 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80871EBC  38 A0 00 0C */	li r5, 0xc
/* 80871EC0  38 C0 00 04 */	li r6, 4
/* 80871EC4  4B AE FE 24 */	b __destroy_arr
/* 80871EC8  28 1E 00 00 */	cmplwi r30, 0
/* 80871ECC  41 82 00 10 */	beq lbl_80871EDC
/* 80871ED0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80871ED4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80871ED8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80871EDC:
/* 80871EDC  7F E0 07 35 */	extsh. r0, r31
/* 80871EE0  40 81 00 0C */	ble lbl_80871EEC
/* 80871EE4  7F C3 F3 78 */	mr r3, r30
/* 80871EE8  4B A5 CE 54 */	b __dl__FPv
lbl_80871EEC:
/* 80871EEC  7F C3 F3 78 */	mr r3, r30
/* 80871EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80871EF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80871EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80871EFC  7C 08 03 A6 */	mtlr r0
/* 80871F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80871F04  4E 80 00 20 */	blr 
