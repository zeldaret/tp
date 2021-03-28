lbl_80059E38:
/* 80059E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059E3C  7C 08 02 A6 */	mflr r0
/* 80059E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059E48  93 C1 00 08 */	stw r30, 8(r1)
/* 80059E4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059E50  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80059E54  88 1F 10 44 */	lbz r0, 0x1044(r31)
/* 80059E58  2C 00 00 01 */	cmpwi r0, 1
/* 80059E5C  41 82 00 AC */	beq lbl_80059F08
/* 80059E60  40 80 00 FC */	bge lbl_80059F5C
/* 80059E64  2C 00 00 00 */	cmpwi r0, 0
/* 80059E68  40 80 00 08 */	bge lbl_80059E70
/* 80059E6C  48 00 00 F0 */	b lbl_80059F5C
lbl_80059E70:
/* 80059E70  80 1F 10 48 */	lwz r0, 0x1048(r31)
/* 80059E74  2C 00 00 00 */	cmpwi r0, 0
/* 80059E78  41 82 00 E4 */	beq lbl_80059F5C
/* 80059E7C  38 60 1C 40 */	li r3, 0x1c40
/* 80059E80  38 80 00 20 */	li r4, 0x20
/* 80059E84  48 27 4D F1 */	bl __nw__FUli
/* 80059E88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80059E8C  41 82 00 50 */	beq lbl_80059EDC
/* 80059E90  7F C4 F3 78 */	mr r4, r30
/* 80059E94  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80059E98  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80059E9C  90 1E 00 00 */	stw r0, 0(r30)
/* 80059EA0  38 00 00 00 */	li r0, 0
/* 80059EA4  90 1E 00 04 */	stw r0, 4(r30)
/* 80059EA8  90 1E 00 08 */	stw r0, 8(r30)
/* 80059EAC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80059EB0  3C 60 80 3B */	lis r3, __vt__18dKankyo_mud_Packet@ha
/* 80059EB4  38 03 9A D4 */	addi r0, r3, __vt__18dKankyo_mud_Packet@l
/* 80059EB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80059EBC  38 64 00 18 */	addi r3, r4, 0x18
/* 80059EC0  3C 80 80 05 */	lis r4, __ct__10EF_MUD_EFFFv@ha
/* 80059EC4  38 84 70 38 */	addi r4, r4, __ct__10EF_MUD_EFFFv@l
/* 80059EC8  3C A0 80 05 */	lis r5, __dt__10EF_MUD_EFFFv@ha
/* 80059ECC  38 A5 6F FC */	addi r5, r5, __dt__10EF_MUD_EFFFv@l
/* 80059ED0  38 C0 00 48 */	li r6, 0x48
/* 80059ED4  38 E0 00 64 */	li r7, 0x64
/* 80059ED8  48 30 7E 89 */	bl __construct_array
lbl_80059EDC:
/* 80059EDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059EE0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059EE4  93 C3 10 4C */	stw r30, 0x104c(r3)
/* 80059EE8  28 1E 00 00 */	cmplwi r30, 0
/* 80059EEC  41 82 00 70 */	beq lbl_80059F5C
/* 80059EF0  48 01 28 A1 */	bl dKyr_mud_init__Fv
/* 80059EF4  48 01 29 69 */	bl dKyr_mud_move__Fv
/* 80059EF8  88 7F 10 44 */	lbz r3, 0x1044(r31)
/* 80059EFC  38 03 00 01 */	addi r0, r3, 1
/* 80059F00  98 1F 10 44 */	stb r0, 0x1044(r31)
/* 80059F04  48 00 00 58 */	b lbl_80059F5C
lbl_80059F08:
/* 80059F08  48 01 29 55 */	bl dKyr_mud_move__Fv
/* 80059F0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059F10  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80059F14  80 1E 10 48 */	lwz r0, 0x1048(r30)
/* 80059F18  2C 00 00 00 */	cmpwi r0, 0
/* 80059F1C  40 82 00 40 */	bne lbl_80059F5C
/* 80059F20  80 7E 10 4C */	lwz r3, 0x104c(r30)
/* 80059F24  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80059F28  2C 00 00 00 */	cmpwi r0, 0
/* 80059F2C  40 82 00 30 */	bne lbl_80059F5C
/* 80059F30  38 00 00 00 */	li r0, 0
/* 80059F34  98 1F 10 44 */	stb r0, 0x1044(r31)
/* 80059F38  28 03 00 00 */	cmplwi r3, 0
/* 80059F3C  41 82 00 18 */	beq lbl_80059F54
/* 80059F40  38 80 00 01 */	li r4, 1
/* 80059F44  81 83 00 00 */	lwz r12, 0(r3)
/* 80059F48  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80059F4C  7D 89 03 A6 */	mtctr r12
/* 80059F50  4E 80 04 21 */	bctrl 
lbl_80059F54:
/* 80059F54  38 00 00 00 */	li r0, 0
/* 80059F58  90 1E 10 4C */	stw r0, 0x104c(r30)
lbl_80059F5C:
/* 80059F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80059F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80059F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80059F68  7C 08 03 A6 */	mtlr r0
/* 80059F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80059F70  4E 80 00 20 */	blr 
