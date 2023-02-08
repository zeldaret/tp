lbl_802E7C38:
/* 802E7C38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E7C3C  7C 08 02 A6 */	mflr r0
/* 802E7C40  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E7C44  39 61 00 20 */	addi r11, r1, 0x20
/* 802E7C48  48 07 A5 95 */	bl _savegpr_29
/* 802E7C4C  7C 7D 1B 78 */	mr r29, r3
/* 802E7C50  80 03 00 58 */	lwz r0, 0x58(r3)
/* 802E7C54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802E7C58  41 82 02 C0 */	beq lbl_802E7F18
/* 802E7C5C  7C 9F 23 78 */	mr r31, r4
/* 802E7C60  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802E7C64  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802E7C68  38 63 00 02 */	addi r3, r3, 2
/* 802E7C6C  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7C70  7C 63 01 D6 */	mullw r3, r3, r0
/* 802E7C74  38 63 00 01 */	addi r3, r3, 1
/* 802E7C78  7C 64 1A 14 */	add r3, r4, r3
/* 802E7C7C  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 802E7C80  7F C3 02 14 */	add r30, r3, r0
/* 802E7C84  48 00 02 80 */	b lbl_802E7F04
lbl_802E7C88:
/* 802E7C88  88 1D 00 6A */	lbz r0, 0x6a(r29)
/* 802E7C8C  28 00 00 00 */	cmplwi r0, 0
/* 802E7C90  41 82 00 30 */	beq lbl_802E7CC0
/* 802E7C94  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802E7C98  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7C9C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E7CA0  38 A5 00 01 */	addi r5, r5, 1
/* 802E7CA4  7C 00 28 50 */	subf r0, r0, r5
/* 802E7CA8  7C 00 18 14 */	addc r0, r0, r3
/* 802E7CAC  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7CB0  7C A3 00 78 */	andc r3, r5, r0
/* 802E7CB4  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802E7CB8  7C 00 18 00 */	cmpw r0, r3
/* 802E7CBC  41 82 02 54 */	beq lbl_802E7F10
lbl_802E7CC0:
/* 802E7CC0  2C 04 00 0A */	cmpwi r4, 0xa
/* 802E7CC4  40 82 00 14 */	bne lbl_802E7CD8
/* 802E7CC8  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802E7CCC  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7CD0  3B FF 00 01 */	addi r31, r31, 1
/* 802E7CD4  48 00 00 FC */	b lbl_802E7DD0
lbl_802E7CD8:
/* 802E7CD8  2C 04 00 09 */	cmpwi r4, 9
/* 802E7CDC  40 82 00 50 */	bne lbl_802E7D2C
/* 802E7CE0  38 A0 00 20 */	li r5, 0x20
/* 802E7CE4  3B FF 00 01 */	addi r31, r31, 1
/* 802E7CE8  48 00 00 30 */	b lbl_802E7D18
lbl_802E7CEC:
/* 802E7CEC  98 BE 00 00 */	stb r5, 0(r30)
/* 802E7CF0  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7CF4  38 03 00 01 */	addi r0, r3, 1
/* 802E7CF8  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7CFC  80 9D 00 3C */	lwz r4, 0x3c(r29)
/* 802E7D00  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 802E7D04  7C 04 1B D6 */	divw r0, r4, r3
/* 802E7D08  7C 00 19 D6 */	mullw r0, r0, r3
/* 802E7D0C  7C 00 20 51 */	subf. r0, r0, r4
/* 802E7D10  3B DE 00 01 */	addi r30, r30, 1
/* 802E7D14  41 82 00 BC */	beq lbl_802E7DD0
lbl_802E7D18:
/* 802E7D18  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7D1C  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802E7D20  7C 03 00 40 */	cmplw r3, r0
/* 802E7D24  41 80 FF C8 */	blt lbl_802E7CEC
/* 802E7D28  48 00 00 A8 */	b lbl_802E7DD0
lbl_802E7D2C:
/* 802E7D2C  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 802E7D30  28 03 00 00 */	cmplwi r3, 0
/* 802E7D34  41 82 00 80 */	beq lbl_802E7DB4
/* 802E7D38  81 83 00 00 */	lwz r12, 0(r3)
/* 802E7D3C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802E7D40  7D 89 03 A6 */	mtctr r12
/* 802E7D44  4E 80 04 21 */	bctrl 
/* 802E7D48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E7D4C  41 82 00 68 */	beq lbl_802E7DB4
/* 802E7D50  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7D54  38 63 00 01 */	addi r3, r3, 1
/* 802E7D58  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802E7D5C  7C 03 00 40 */	cmplw r3, r0
/* 802E7D60  40 80 00 38 */	bge lbl_802E7D98
/* 802E7D64  88 1F 00 00 */	lbz r0, 0(r31)
/* 802E7D68  98 1E 00 00 */	stb r0, 0(r30)
/* 802E7D6C  88 1F 00 01 */	lbz r0, 1(r31)
/* 802E7D70  98 1E 00 01 */	stb r0, 1(r30)
/* 802E7D74  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7D78  38 03 00 01 */	addi r0, r3, 1
/* 802E7D7C  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7D80  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7D84  38 03 00 01 */	addi r0, r3, 1
/* 802E7D88  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7D8C  3B FF 00 02 */	addi r31, r31, 2
/* 802E7D90  3B DE 00 02 */	addi r30, r30, 2
/* 802E7D94  48 00 00 3C */	b lbl_802E7DD0
lbl_802E7D98:
/* 802E7D98  38 00 00 00 */	li r0, 0
/* 802E7D9C  98 1E 00 00 */	stb r0, 0(r30)
/* 802E7DA0  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7DA4  38 03 00 01 */	addi r0, r3, 1
/* 802E7DA8  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7DAC  3B DE 00 01 */	addi r30, r30, 1
/* 802E7DB0  48 00 00 20 */	b lbl_802E7DD0
lbl_802E7DB4:
/* 802E7DB4  88 1F 00 00 */	lbz r0, 0(r31)
/* 802E7DB8  98 1E 00 00 */	stb r0, 0(r30)
/* 802E7DBC  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7DC0  38 03 00 01 */	addi r0, r3, 1
/* 802E7DC4  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802E7DC8  3B FF 00 01 */	addi r31, r31, 1
/* 802E7DCC  3B DE 00 01 */	addi r30, r30, 1
lbl_802E7DD0:
/* 802E7DD0  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802E7DD4  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802E7DD8  7C 03 00 40 */	cmplw r3, r0
/* 802E7DDC  41 80 01 28 */	blt lbl_802E7F04
/* 802E7DE0  38 C0 00 00 */	li r6, 0
/* 802E7DE4  98 DE 00 00 */	stb r6, 0(r30)
/* 802E7DE8  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 802E7DEC  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7DF0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E7DF4  38 84 00 01 */	addi r4, r4, 1
/* 802E7DF8  7C 00 20 50 */	subf r0, r0, r4
/* 802E7DFC  7C 00 18 14 */	addc r0, r0, r3
/* 802E7E00  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7E04  7C 80 00 78 */	andc r0, r4, r0
/* 802E7E08  90 1D 00 38 */	stw r0, 0x38(r29)
/* 802E7E0C  90 DD 00 3C */	stw r6, 0x3c(r29)
/* 802E7E10  38 A0 00 FF */	li r5, 0xff
/* 802E7E14  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802E7E18  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802E7E1C  38 63 00 02 */	addi r3, r3, 2
/* 802E7E20  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7E24  7C 03 01 D6 */	mullw r0, r3, r0
/* 802E7E28  7C A4 01 AE */	stbx r5, r4, r0
/* 802E7E2C  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802E7E30  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802E7E34  38 63 00 02 */	addi r3, r3, 2
/* 802E7E38  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7E3C  7C 63 01 D6 */	mullw r3, r3, r0
/* 802E7E40  38 63 00 01 */	addi r3, r3, 1
/* 802E7E44  7C 64 1A 14 */	add r3, r4, r3
/* 802E7E48  7C 7E 1B 78 */	mr r30, r3
/* 802E7E4C  98 C3 00 00 */	stb r6, 0(r3)
/* 802E7E50  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 802E7E54  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7E58  7C 64 00 51 */	subf. r3, r4, r0
/* 802E7E5C  41 80 00 08 */	blt lbl_802E7E64
/* 802E7E60  48 00 00 0C */	b lbl_802E7E6C
lbl_802E7E64:
/* 802E7E64  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7E68  7C 63 02 14 */	add r3, r3, r0
lbl_802E7E6C:
/* 802E7E6C  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802E7E70  7C 03 00 40 */	cmplw r3, r0
/* 802E7E74  40 82 00 24 */	bne lbl_802E7E98
/* 802E7E78  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7E7C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E7E80  38 84 00 01 */	addi r4, r4, 1
/* 802E7E84  7C 00 20 50 */	subf r0, r0, r4
/* 802E7E88  7C 00 18 14 */	addc r0, r0, r3
/* 802E7E8C  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7E90  7C 80 00 78 */	andc r0, r4, r0
/* 802E7E94  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_802E7E98:
/* 802E7E98  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7E9C  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 802E7EA0  7C 00 20 00 */	cmpw r0, r4
/* 802E7EA4  40 82 00 24 */	bne lbl_802E7EC8
/* 802E7EA8  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7EAC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E7EB0  38 84 00 01 */	addi r4, r4, 1
/* 802E7EB4  7C 00 20 50 */	subf r0, r0, r4
/* 802E7EB8  7C 00 18 14 */	addc r0, r0, r3
/* 802E7EBC  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7EC0  7C 80 00 78 */	andc r0, r4, r0
/* 802E7EC4  90 1D 00 34 */	stw r0, 0x34(r29)
lbl_802E7EC8:
/* 802E7EC8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E7ECC  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 802E7ED0  7C 00 20 00 */	cmpw r0, r4
/* 802E7ED4  40 82 00 24 */	bne lbl_802E7EF8
/* 802E7ED8  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802E7EDC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E7EE0  38 84 00 01 */	addi r4, r4, 1
/* 802E7EE4  7C 00 20 50 */	subf r0, r0, r4
/* 802E7EE8  7C 00 18 14 */	addc r0, r0, r3
/* 802E7EEC  7C 00 01 10 */	subfe r0, r0, r0
/* 802E7EF0  7C 80 00 78 */	andc r0, r4, r0
/* 802E7EF4  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_802E7EF8:
/* 802E7EF8  88 1D 00 6B */	lbz r0, 0x6b(r29)
/* 802E7EFC  28 00 00 00 */	cmplwi r0, 0
/* 802E7F00  40 82 00 10 */	bne lbl_802E7F10
lbl_802E7F04:
/* 802E7F04  88 9F 00 00 */	lbz r4, 0(r31)
/* 802E7F08  28 04 00 00 */	cmplwi r4, 0
/* 802E7F0C  40 82 FD 7C */	bne lbl_802E7C88
lbl_802E7F10:
/* 802E7F10  38 00 00 00 */	li r0, 0
/* 802E7F14  98 1E 00 00 */	stb r0, 0(r30)
lbl_802E7F18:
/* 802E7F18  39 61 00 20 */	addi r11, r1, 0x20
/* 802E7F1C  48 07 A3 0D */	bl _restgpr_29
/* 802E7F20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E7F24  7C 08 03 A6 */	mtlr r0
/* 802E7F28  38 21 00 20 */	addi r1, r1, 0x20
/* 802E7F2C  4E 80 00 20 */	blr 
