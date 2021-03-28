lbl_80057F18:
/* 80057F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057F1C  7C 08 02 A6 */	mflr r0
/* 80057F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80057F28  93 C1 00 08 */	stw r30, 8(r1)
/* 80057F2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80057F30  7C 9F 23 78 */	mr r31, r4
/* 80057F34  41 82 00 4C */	beq lbl_80057F80
/* 80057F38  3C 60 80 3B */	lis r3, __vt__19dKankyo_star_Packet@ha
/* 80057F3C  38 03 9B 38 */	addi r0, r3, __vt__19dKankyo_star_Packet@l
/* 80057F40  90 1E 00 00 */	stw r0, 0(r30)
/* 80057F44  38 7E 00 14 */	addi r3, r30, 0x14
/* 80057F48  3C 80 80 05 */	lis r4, __dt__8STAR_EFFFv@ha
/* 80057F4C  38 84 6D C8 */	addi r4, r4, __dt__8STAR_EFFFv@l
/* 80057F50  38 A0 00 34 */	li r5, 0x34
/* 80057F54  38 C0 00 01 */	li r6, 1
/* 80057F58  48 30 9D 91 */	bl __destroy_arr
/* 80057F5C  28 1E 00 00 */	cmplwi r30, 0
/* 80057F60  41 82 00 10 */	beq lbl_80057F70
/* 80057F64  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80057F68  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80057F6C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80057F70:
/* 80057F70  7F E0 07 35 */	extsh. r0, r31
/* 80057F74  40 81 00 0C */	ble lbl_80057F80
/* 80057F78  7F C3 F3 78 */	mr r3, r30
/* 80057F7C  48 27 6D C1 */	bl __dl__FPv
lbl_80057F80:
/* 80057F80  7F C3 F3 78 */	mr r3, r30
/* 80057F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80057F88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80057F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057F90  7C 08 03 A6 */	mtlr r0
/* 80057F94  38 21 00 10 */	addi r1, r1, 0x10
/* 80057F98  4E 80 00 20 */	blr 
