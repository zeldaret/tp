lbl_80057E94:
/* 80057E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057E98  7C 08 02 A6 */	mflr r0
/* 80057E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80057EA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80057EA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80057EAC  7C 9F 23 78 */	mr r31, r4
/* 80057EB0  41 82 00 4C */	beq lbl_80057EFC
/* 80057EB4  3C 60 80 3B */	lis r3, __vt__20dKankyo_housi_Packet@ha
/* 80057EB8  38 03 9B 10 */	addi r0, r3, __vt__20dKankyo_housi_Packet@l
/* 80057EBC  90 1E 00 00 */	stw r0, 0(r30)
/* 80057EC0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80057EC4  3C 80 80 05 */	lis r4, __dt__9HOUSI_EFFFv@ha
/* 80057EC8  38 84 6E A8 */	addi r4, r4, __dt__9HOUSI_EFFFv@l
/* 80057ECC  38 A0 00 50 */	li r5, 0x50
/* 80057ED0  38 C0 01 2C */	li r6, 0x12c
/* 80057ED4  48 30 9E 15 */	bl __destroy_arr
/* 80057ED8  28 1E 00 00 */	cmplwi r30, 0
/* 80057EDC  41 82 00 10 */	beq lbl_80057EEC
/* 80057EE0  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80057EE4  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80057EE8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80057EEC:
/* 80057EEC  7F E0 07 35 */	extsh. r0, r31
/* 80057EF0  40 81 00 0C */	ble lbl_80057EFC
/* 80057EF4  7F C3 F3 78 */	mr r3, r30
/* 80057EF8  48 27 6E 45 */	bl __dl__FPv
lbl_80057EFC:
/* 80057EFC  7F C3 F3 78 */	mr r3, r30
/* 80057F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80057F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80057F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057F0C  7C 08 03 A6 */	mtlr r0
/* 80057F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80057F14  4E 80 00 20 */	blr 
