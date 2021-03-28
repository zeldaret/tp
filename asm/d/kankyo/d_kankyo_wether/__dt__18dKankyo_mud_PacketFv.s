lbl_80057D08:
/* 80057D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057D0C  7C 08 02 A6 */	mflr r0
/* 80057D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80057D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80057D18  93 C1 00 08 */	stw r30, 8(r1)
/* 80057D1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80057D20  7C 9F 23 78 */	mr r31, r4
/* 80057D24  41 82 00 4C */	beq lbl_80057D70
/* 80057D28  3C 60 80 3B */	lis r3, __vt__18dKankyo_mud_Packet@ha
/* 80057D2C  38 03 9A D4 */	addi r0, r3, __vt__18dKankyo_mud_Packet@l
/* 80057D30  90 1E 00 00 */	stw r0, 0(r30)
/* 80057D34  38 7E 00 18 */	addi r3, r30, 0x18
/* 80057D38  3C 80 80 05 */	lis r4, __dt__10EF_MUD_EFFFv@ha
/* 80057D3C  38 84 6F FC */	addi r4, r4, __dt__10EF_MUD_EFFFv@l
/* 80057D40  38 A0 00 48 */	li r5, 0x48
/* 80057D44  38 C0 00 64 */	li r6, 0x64
/* 80057D48  48 30 9F A1 */	bl __destroy_arr
/* 80057D4C  28 1E 00 00 */	cmplwi r30, 0
/* 80057D50  41 82 00 10 */	beq lbl_80057D60
/* 80057D54  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80057D58  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80057D5C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80057D60:
/* 80057D60  7F E0 07 35 */	extsh. r0, r31
/* 80057D64  40 81 00 0C */	ble lbl_80057D70
/* 80057D68  7F C3 F3 78 */	mr r3, r30
/* 80057D6C  48 27 6F D1 */	bl __dl__FPv
lbl_80057D70:
/* 80057D70  7F C3 F3 78 */	mr r3, r30
/* 80057D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80057D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80057D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80057D80  7C 08 03 A6 */	mtlr r0
/* 80057D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80057D88  4E 80 00 20 */	blr 
