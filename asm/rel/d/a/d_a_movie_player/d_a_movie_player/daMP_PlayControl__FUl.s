lbl_80877C8C:
/* 80877C8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80877C90  7C 08 02 A6 */	mflr r0
/* 80877C94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80877C98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80877C9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80877CA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80877CA4  3C 80 80 94 */	lis r4, daMP_OldVIPostCallback@ha /* 0x80944930@ha */
/* 80877CA8  81 84 49 30 */	lwz r12, daMP_OldVIPostCallback@l(r4)  /* 0x80944930@l */
/* 80877CAC  28 0C 00 00 */	cmplwi r12, 0
/* 80877CB0  41 82 00 0C */	beq lbl_80877CBC
/* 80877CB4  7D 89 03 A6 */	mtctr r12
/* 80877CB8  4E 80 04 21 */	bctrl 
lbl_80877CBC:
/* 80877CBC  3B C0 FF FF */	li r30, -1
/* 80877CC0  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877CC4  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877CC8  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80877CCC  2C 00 00 00 */	cmpwi r0, 0
/* 80877CD0  41 82 02 5C */	beq lbl_80877F2C
/* 80877CD4  88 1F 00 A4 */	lbz r0, 0xa4(r31)
/* 80877CD8  28 00 00 02 */	cmplwi r0, 2
/* 80877CDC  40 82 02 50 */	bne lbl_80877F2C
/* 80877CE0  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80877CE4  2C 00 00 00 */	cmpwi r0, 0
/* 80877CE8  40 82 00 10 */	bne lbl_80877CF8
/* 80877CEC  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80877CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80877CF4  41 82 00 1C */	beq lbl_80877D10
lbl_80877CF8:
/* 80877CF8  38 00 00 05 */	li r0, 5
/* 80877CFC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877D00  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877D04  98 03 00 A5 */	stb r0, 0xa5(r3)
/* 80877D08  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 80877D0C  48 00 02 20 */	b lbl_80877F2C
lbl_80877D10:
/* 80877D10  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80877D14  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80877D18  38 E0 00 01 */	li r7, 1
/* 80877D1C  38 C0 00 00 */	li r6, 0
/* 80877D20  7C A3 38 14 */	addc r5, r3, r7
/* 80877D24  7C 80 31 14 */	adde r4, r0, r6
/* 80877D28  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80877D2C  90 9F 00 C8 */	stw r4, 0xc8(r31)
/* 80877D30  7C A3 32 78 */	xor r3, r5, r6
/* 80877D34  7C 80 32 78 */	xor r0, r4, r6
/* 80877D38  7C 60 03 79 */	or. r0, r3, r0
/* 80877D3C  40 82 00 94 */	bne lbl_80877DD0
/* 80877D40  4B FF FD 9D */	bl daMP_ProperTimingForStart__Fv
/* 80877D44  2C 03 00 00 */	cmpwi r3, 0
/* 80877D48  41 82 00 78 */	beq lbl_80877DC0
/* 80877D4C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877D50  3B A3 9B D0 */	addi r29, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877D54  88 1D 00 A7 */	lbz r0, 0xa7(r29)
/* 80877D58  28 00 00 00 */	cmplwi r0, 0
/* 80877D5C  41 82 00 54 */	beq lbl_80877DB0
/* 80877D60  80 7D 00 F4 */	lwz r3, 0xf4(r29)
/* 80877D64  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 80877D68  7C 03 00 50 */	subf r0, r3, r0
/* 80877D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80877D70  41 81 00 34 */	bgt lbl_80877DA4
/* 80877D74  38 60 00 00 */	li r3, 0
/* 80877D78  4B FF DE B5 */	bl daMP_PopDecodedTextureSet__Fl
/* 80877D7C  7C 7E 1B 78 */	mr r30, r3
/* 80877D80  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877D84  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877D88  80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 80877D8C  38 03 FF FF */	addi r0, r3, -1
/* 80877D90  90 04 00 D8 */	stw r0, 0xd8(r4)
/* 80877D94  80 7D 00 F0 */	lwz r3, 0xf0(r29)
/* 80877D98  38 03 00 01 */	addi r0, r3, 1
/* 80877D9C  90 1D 00 F0 */	stw r0, 0xf0(r29)
/* 80877DA0  48 00 00 B8 */	b lbl_80877E58
lbl_80877DA4:
/* 80877DA4  38 00 00 02 */	li r0, 2
/* 80877DA8  98 1D 00 A5 */	stb r0, 0xa5(r29)
/* 80877DAC  48 00 00 AC */	b lbl_80877E58
lbl_80877DB0:
/* 80877DB0  38 60 00 00 */	li r3, 0
/* 80877DB4  4B FF DE 79 */	bl daMP_PopDecodedTextureSet__Fl
/* 80877DB8  7C 7E 1B 78 */	mr r30, r3
/* 80877DBC  48 00 00 9C */	b lbl_80877E58
lbl_80877DC0:
/* 80877DC0  38 00 FF FF */	li r0, -1
/* 80877DC4  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80877DC8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80877DCC  48 00 00 8C */	b lbl_80877E58
lbl_80877DD0:
/* 80877DD0  7C A3 3A 78 */	xor r3, r5, r7
/* 80877DD4  7C 80 32 78 */	xor r0, r4, r6
/* 80877DD8  7C 60 03 79 */	or. r0, r3, r0
/* 80877DDC  40 82 00 0C */	bne lbl_80877DE8
/* 80877DE0  38 00 00 02 */	li r0, 2
/* 80877DE4  98 1F 00 A5 */	stb r0, 0xa5(r31)
lbl_80877DE8:
/* 80877DE8  4B FF FD 61 */	bl daMP_ProperTimingForGettingNextFrame__Fv
/* 80877DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80877DF0  41 82 00 68 */	beq lbl_80877E58
/* 80877DF4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877DF8  3B A3 9B D0 */	addi r29, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877DFC  88 1D 00 A7 */	lbz r0, 0xa7(r29)
/* 80877E00  28 00 00 00 */	cmplwi r0, 0
/* 80877E04  41 82 00 48 */	beq lbl_80877E4C
/* 80877E08  80 7D 00 F4 */	lwz r3, 0xf4(r29)
/* 80877E0C  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 80877E10  7C 03 00 50 */	subf r0, r3, r0
/* 80877E14  2C 00 00 01 */	cmpwi r0, 1
/* 80877E18  41 81 00 40 */	bgt lbl_80877E58
/* 80877E1C  38 60 00 00 */	li r3, 0
/* 80877E20  4B FF DE 0D */	bl daMP_PopDecodedTextureSet__Fl
/* 80877E24  7C 7E 1B 78 */	mr r30, r3
/* 80877E28  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877E2C  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877E30  80 64 00 D8 */	lwz r3, 0xd8(r4)
/* 80877E34  38 03 FF FF */	addi r0, r3, -1
/* 80877E38  90 04 00 D8 */	stw r0, 0xd8(r4)
/* 80877E3C  80 7D 00 F0 */	lwz r3, 0xf0(r29)
/* 80877E40  38 03 00 01 */	addi r0, r3, 1
/* 80877E44  90 1D 00 F0 */	stw r0, 0xf0(r29)
/* 80877E48  48 00 00 10 */	b lbl_80877E58
lbl_80877E4C:
/* 80877E4C  38 60 00 00 */	li r3, 0
/* 80877E50  4B FF DD DD */	bl daMP_PopDecodedTextureSet__Fl
/* 80877E54  7C 7E 1B 78 */	mr r30, r3
lbl_80877E58:
/* 80877E58  28 1E 00 00 */	cmplwi r30, 0
/* 80877E5C  41 82 00 2C */	beq lbl_80877E88
/* 80877E60  3C 1E 00 01 */	addis r0, r30, 1
/* 80877E64  28 00 FF FF */	cmplwi r0, 0xffff
/* 80877E68  41 82 00 20 */	beq lbl_80877E88
/* 80877E6C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877E70  3B A3 9B D0 */	addi r29, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877E74  80 7D 00 F8 */	lwz r3, 0xf8(r29)
/* 80877E78  28 03 00 00 */	cmplwi r3, 0
/* 80877E7C  41 82 00 08 */	beq lbl_80877E84
/* 80877E80  4B FF F3 01 */	bl daMP_PushUsedTextureSet__FPv
lbl_80877E84:
/* 80877E84  93 DD 00 F8 */	stw r30, 0xf8(r29)
lbl_80877E88:
/* 80877E88  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877E8C  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877E90  88 04 00 A6 */	lbz r0, 0xa6(r4)
/* 80877E94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80877E98  40 82 00 94 */	bne lbl_80877F2C
/* 80877E9C  88 04 00 A7 */	lbz r0, 0xa7(r4)
/* 80877EA0  28 00 00 00 */	cmplwi r0, 0
/* 80877EA4  41 82 00 38 */	beq lbl_80877EDC
/* 80877EA8  80 64 00 F4 */	lwz r3, 0xf4(r4)
/* 80877EAC  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 80877EB0  7C 63 02 14 */	add r3, r3, r0
/* 80877EB4  80 04 00 50 */	lwz r0, 0x50(r4)
/* 80877EB8  7C 03 00 40 */	cmplw r3, r0
/* 80877EBC  40 82 00 70 */	bne lbl_80877F2C
/* 80877EC0  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 80877EC4  28 00 00 00 */	cmplwi r0, 0
/* 80877EC8  40 82 00 64 */	bne lbl_80877F2C
/* 80877ECC  38 00 00 03 */	li r0, 3
/* 80877ED0  98 04 00 A5 */	stb r0, 0xa5(r4)
/* 80877ED4  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 80877ED8  48 00 00 54 */	b lbl_80877F2C
lbl_80877EDC:
/* 80877EDC  80 64 00 F8 */	lwz r3, 0xf8(r4)
/* 80877EE0  28 03 00 00 */	cmplwi r3, 0
/* 80877EE4  41 82 00 14 */	beq lbl_80877EF8
/* 80877EE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80877EEC  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 80877EF0  7C A3 02 14 */	add r5, r3, r0
/* 80877EF4  48 00 00 0C */	b lbl_80877F00
lbl_80877EF8:
/* 80877EF8  80 64 00 C0 */	lwz r3, 0xc0(r4)
/* 80877EFC  38 A3 FF FF */	addi r5, r3, -1
lbl_80877F00:
/* 80877F00  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877F04  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877F08  80 64 00 50 */	lwz r3, 0x50(r4)
/* 80877F0C  38 03 FF FF */	addi r0, r3, -1
/* 80877F10  7C 05 00 40 */	cmplw r5, r0
/* 80877F14  40 82 00 18 */	bne lbl_80877F2C
/* 80877F18  28 1E 00 00 */	cmplwi r30, 0
/* 80877F1C  40 82 00 10 */	bne lbl_80877F2C
/* 80877F20  38 00 00 03 */	li r0, 3
/* 80877F24  98 04 00 A5 */	stb r0, 0xa5(r4)
/* 80877F28  98 1F 00 A4 */	stb r0, 0xa4(r31)
lbl_80877F2C:
/* 80877F2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80877F30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80877F34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80877F38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80877F3C  7C 08 03 A6 */	mtlr r0
/* 80877F40  38 21 00 20 */	addi r1, r1, 0x20
/* 80877F44  4E 80 00 20 */	blr 
