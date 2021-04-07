lbl_80057D8C:
/* 80057D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057D90  7C 08 02 A6 */	mflr r0
/* 80057D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80057D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80057DA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80057DA4  7C 9F 23 78 */	mr r31, r4
/* 80057DA8  41 82 00 4C */	beq lbl_80057DF4
/* 80057DAC  3C 60 80 3B */	lis r3, __vt__20dKankyo_odour_Packet@ha /* 0x803A9AE8@ha */
/* 80057DB0  38 03 9A E8 */	addi r0, r3, __vt__20dKankyo_odour_Packet@l /* 0x803A9AE8@l */
/* 80057DB4  90 1E 00 00 */	stw r0, 0(r30)
/* 80057DB8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80057DBC  3C 80 80 05 */	lis r4, __dt__12EF_ODOUR_EFFFv@ha /* 0x80056F8C@ha */
/* 80057DC0  38 84 6F 8C */	addi r4, r4, __dt__12EF_ODOUR_EFFFv@l /* 0x80056F8C@l */
/* 80057DC4  38 A0 00 30 */	li r5, 0x30
/* 80057DC8  38 C0 07 D0 */	li r6, 0x7d0
/* 80057DCC  48 30 9F 1D */	bl __destroy_arr
/* 80057DD0  28 1E 00 00 */	cmplwi r30, 0
/* 80057DD4  41 82 00 10 */	beq lbl_80057DE4
/* 80057DD8  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80057DDC  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80057DE0  90 1E 00 00 */	stw r0, 0(r30)
lbl_80057DE4:
/* 80057DE4  7F E0 07 35 */	extsh. r0, r31
/* 80057DE8  40 81 00 0C */	ble lbl_80057DF4
/* 80057DEC  7F C3 F3 78 */	mr r3, r30
/* 80057DF0  48 27 6F 4D */	bl __dl__FPv
lbl_80057DF4:
/* 80057DF4  7F C3 F3 78 */	mr r3, r30
/* 80057DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80057DFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80057E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057E04  7C 08 03 A6 */	mtlr r0
/* 80057E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80057E0C  4E 80 00 20 */	blr 
