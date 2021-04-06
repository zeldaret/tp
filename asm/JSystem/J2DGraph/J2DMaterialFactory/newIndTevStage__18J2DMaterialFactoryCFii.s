lbl_802F3E24:
/* 802F3E24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F3E28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F3E2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802F3E30  3C E0 80 3A */	lis r7, j2dDefaultIndTevStageInfo@ha /* 0x803A1BF4@ha */
/* 802F3E34  39 07 1B F4 */	addi r8, r7, j2dDefaultIndTevStageInfo@l /* 0x803A1BF4@l */
/* 802F3E38  80 E8 00 00 */	lwz r7, 0(r8)
/* 802F3E3C  80 08 00 04 */	lwz r0, 4(r8)
/* 802F3E40  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802F3E44  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F3E48  80 08 00 08 */	lwz r0, 8(r8)
/* 802F3E4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F3E50  8B C1 00 14 */	lbz r30, 0x14(r1)
/* 802F3E54  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802F3E58  54 1F 10 3A */	slwi r31, r0, 2
/* 802F3E5C  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802F3E60  54 0C 20 36 */	slwi r12, r0, 4
/* 802F3E64  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802F3E68  54 0B 40 2E */	slwi r11, r0, 8
/* 802F3E6C  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802F3E70  54 0A 58 28 */	slwi r10, r0, 0xb
/* 802F3E74  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802F3E78  54 09 80 1E */	slwi r9, r0, 0x10
/* 802F3E7C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802F3E80  54 08 A0 16 */	slwi r8, r0, 0x14
/* 802F3E84  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802F3E88  54 07 B0 12 */	slwi r7, r0, 0x16
/* 802F3E8C  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802F3E90  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802F3E94  7C E0 03 78 */	or r0, r7, r0
/* 802F3E98  7D 00 03 78 */	or r0, r8, r0
/* 802F3E9C  7D 20 03 78 */	or r0, r9, r0
/* 802F3EA0  7D 40 03 78 */	or r0, r10, r0
/* 802F3EA4  7D 60 03 78 */	or r0, r11, r0
/* 802F3EA8  7D 80 03 78 */	or r0, r12, r0
/* 802F3EAC  7F E0 03 78 */	or r0, r31, r0
/* 802F3EB0  7F C7 03 78 */	or r7, r30, r0
/* 802F3EB4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802F3EB8  28 04 00 00 */	cmplwi r4, 0
/* 802F3EBC  41 82 00 A8 */	beq lbl_802F3F64
/* 802F3EC0  1C 05 01 28 */	mulli r0, r5, 0x128
/* 802F3EC4  7C A4 02 14 */	add r5, r4, r0
/* 802F3EC8  88 05 00 00 */	lbz r0, 0(r5)
/* 802F3ECC  28 00 00 01 */	cmplwi r0, 1
/* 802F3ED0  40 82 00 94 */	bne lbl_802F3F64
/* 802F3ED4  1C 86 00 0C */	mulli r4, r6, 0xc
/* 802F3ED8  38 04 00 68 */	addi r0, r4, 0x68
/* 802F3EDC  7C A5 02 14 */	add r5, r5, r0
/* 802F3EE0  80 85 00 00 */	lwz r4, 0(r5)
/* 802F3EE4  80 05 00 04 */	lwz r0, 4(r5)
/* 802F3EE8  90 81 00 08 */	stw r4, 8(r1)
/* 802F3EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F3EF0  80 05 00 08 */	lwz r0, 8(r5)
/* 802F3EF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F3EF8  89 61 00 08 */	lbz r11, 8(r1)
/* 802F3EFC  88 01 00 09 */	lbz r0, 9(r1)
/* 802F3F00  54 0A 10 3A */	slwi r10, r0, 2
/* 802F3F04  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802F3F08  54 09 20 36 */	slwi r9, r0, 4
/* 802F3F0C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F3F10  54 08 40 2E */	slwi r8, r0, 8
/* 802F3F14  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802F3F18  54 07 58 28 */	slwi r7, r0, 0xb
/* 802F3F1C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F3F20  54 06 80 1E */	slwi r6, r0, 0x10
/* 802F3F24  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802F3F28  54 05 A0 16 */	slwi r5, r0, 0x14
/* 802F3F2C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802F3F30  54 04 B0 12 */	slwi r4, r0, 0x16
/* 802F3F34  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802F3F38  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802F3F3C  7C 80 03 78 */	or r0, r4, r0
/* 802F3F40  7C A0 03 78 */	or r0, r5, r0
/* 802F3F44  7C C0 03 78 */	or r0, r6, r0
/* 802F3F48  7C E0 03 78 */	or r0, r7, r0
/* 802F3F4C  7D 00 03 78 */	or r0, r8, r0
/* 802F3F50  7D 20 03 78 */	or r0, r9, r0
/* 802F3F54  7D 40 03 78 */	or r0, r10, r0
/* 802F3F58  7D 60 03 78 */	or r0, r11, r0
/* 802F3F5C  90 03 00 00 */	stw r0, 0(r3)
/* 802F3F60  48 00 00 08 */	b lbl_802F3F68
lbl_802F3F64:
/* 802F3F64  90 E3 00 00 */	stw r7, 0(r3)
lbl_802F3F68:
/* 802F3F68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F3F6C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802F3F70  38 21 00 30 */	addi r1, r1, 0x30
/* 802F3F74  4E 80 00 20 */	blr 
