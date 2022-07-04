lbl_802E0CD8:
/* 802E0CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E0CDC  7C 08 02 A6 */	mflr r0
/* 802E0CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E0CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 802E0CE8  48 08 14 F1 */	bl _savegpr_28
/* 802E0CEC  7C 7E 1B 78 */	mr r30, r3
/* 802E0CF0  3C 60 80 43 */	lis r3, mPadList__10JUTGamePad-0xC@ha /* 0x804343D8@ha */
/* 802E0CF4  38 63 43 D8 */	addi r3, r3, mPadList__10JUTGamePad-0xC@l /* 0x804343D8@l */
/* 802E0CF8  A8 9E 00 7C */	lha r4, 0x7c(r30)
/* 802E0CFC  2C 04 FF FF */	cmpwi r4, -1
/* 802E0D00  41 82 02 8C */	beq lbl_802E0F8C
/* 802E0D04  7C 80 07 35 */	extsh. r0, r4
/* 802E0D08  41 80 01 28 */	blt lbl_802E0E30
/* 802E0D0C  2C 04 00 04 */	cmpwi r4, 4
/* 802E0D10  40 80 01 20 */	bge lbl_802E0E30
/* 802E0D14  1C 04 00 30 */	mulli r0, r4, 0x30
/* 802E0D18  38 83 00 48 */	addi r4, r3, 0x48
/* 802E0D1C  7C 84 02 14 */	add r4, r4, r0
/* 802E0D20  80 04 00 00 */	lwz r0, 0(r4)
/* 802E0D24  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802E0D28  80 04 00 04 */	lwz r0, 4(r4)
/* 802E0D2C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802E0D30  80 04 00 08 */	lwz r0, 8(r4)
/* 802E0D34  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802E0D38  88 04 00 0C */	lbz r0, 0xc(r4)
/* 802E0D3C  98 1E 00 24 */	stb r0, 0x24(r30)
/* 802E0D40  88 04 00 0D */	lbz r0, 0xd(r4)
/* 802E0D44  98 1E 00 25 */	stb r0, 0x25(r30)
/* 802E0D48  88 04 00 0E */	lbz r0, 0xe(r4)
/* 802E0D4C  98 1E 00 26 */	stb r0, 0x26(r30)
/* 802E0D50  88 04 00 0F */	lbz r0, 0xf(r4)
/* 802E0D54  98 1E 00 27 */	stb r0, 0x27(r30)
/* 802E0D58  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 802E0D5C  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 802E0D60  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802E0D64  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802E0D68  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802E0D6C  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802E0D70  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 802E0D74  90 1E 00 34 */	stw r0, 0x34(r30)
/* 802E0D78  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802E0D7C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 802E0D80  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802E0D84  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802E0D88  80 04 00 28 */	lwz r0, 0x28(r4)
/* 802E0D8C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 802E0D90  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 802E0D94  90 1E 00 44 */	stw r0, 0x44(r30)
/* 802E0D98  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 802E0D9C  54 00 20 36 */	slwi r0, r0, 4
/* 802E0DA0  38 83 01 08 */	addi r4, r3, 0x108
/* 802E0DA4  7C 84 02 14 */	add r4, r4, r0
/* 802E0DA8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E0DAC  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 802E0DB0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802E0DB4  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 802E0DB8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802E0DBC  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 802E0DC0  A8 04 00 0C */	lha r0, 0xc(r4)
/* 802E0DC4  B0 1E 00 54 */	sth r0, 0x54(r30)
/* 802E0DC8  88 04 00 0E */	lbz r0, 0xe(r4)
/* 802E0DCC  98 1E 00 56 */	stb r0, 0x56(r30)
/* 802E0DD0  88 04 00 0F */	lbz r0, 0xf(r4)
/* 802E0DD4  98 1E 00 57 */	stb r0, 0x57(r30)
/* 802E0DD8  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 802E0DDC  54 00 20 36 */	slwi r0, r0, 4
/* 802E0DE0  38 83 01 48 */	addi r4, r3, 0x148
/* 802E0DE4  7C 84 02 14 */	add r4, r4, r0
/* 802E0DE8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E0DEC  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 802E0DF0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802E0DF4  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 802E0DF8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802E0DFC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 802E0E00  A8 04 00 0C */	lha r0, 0xc(r4)
/* 802E0E04  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 802E0E08  88 04 00 0E */	lbz r0, 0xe(r4)
/* 802E0E0C  98 1E 00 66 */	stb r0, 0x66(r30)
/* 802E0E10  88 04 00 0F */	lbz r0, 0xf(r4)
/* 802E0E14  98 1E 00 67 */	stb r0, 0x67(r30)
/* 802E0E18  38 63 00 18 */	addi r3, r3, 0x18
/* 802E0E1C  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 802E0E20  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802E0E24  7C 63 02 14 */	add r3, r3, r0
/* 802E0E28  88 03 00 0A */	lbz r0, 0xa(r3)
/* 802E0E2C  98 1E 00 7E */	stb r0, 0x7e(r30)
lbl_802E0E30:
/* 802E0E30  88 1E 00 A8 */	lbz r0, 0xa8(r30)
/* 802E0E34  28 00 00 00 */	cmplwi r0, 0
/* 802E0E38  41 82 00 1C */	beq lbl_802E0E54
/* 802E0E3C  80 8D 83 68 */	lwz r4, sResetPattern__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0E40  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802E0E44  80 0D 83 6C */	lwz r0, sResetMaskPattern__Q210JUTGamePad13C3ButtonReset(r13)
/* 802E0E48  7C 60 00 38 */	and r0, r3, r0
/* 802E0E4C  7C 04 00 40 */	cmplw r4, r0
/* 802E0E50  41 82 00 10 */	beq lbl_802E0E60
lbl_802E0E54:
/* 802E0E54  38 00 00 00 */	li r0, 0
/* 802E0E58  98 1E 00 98 */	stb r0, 0x98(r30)
/* 802E0E5C  48 00 00 50 */	b lbl_802E0EAC
lbl_802E0E60:
/* 802E0E60  88 0D 8F 81 */	lbz r0, sResetSwitchPushing__Q210JUTGamePad13C3ButtonReset+0x1(r13)
/* 802E0E64  28 00 00 00 */	cmplwi r0, 0
/* 802E0E68  40 82 00 44 */	bne lbl_802E0EAC
/* 802E0E6C  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 802E0E70  28 00 00 01 */	cmplwi r0, 1
/* 802E0E74  40 82 00 24 */	bne lbl_802E0E98
/* 802E0E78  48 06 18 85 */	bl OSGetTime
/* 802E0E7C  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 802E0E80  80 BE 00 A4 */	lwz r5, 0xa4(r30)
/* 802E0E84  7C C5 20 10 */	subfc r6, r5, r4
/* 802E0E88  7C A0 19 10 */	subfe r5, r0, r3
/* 802E0E8C  7F C3 F3 78 */	mr r3, r30
/* 802E0E90  4B FF FD DD */	bl checkResetCallback__10JUTGamePadFx
/* 802E0E94  48 00 00 18 */	b lbl_802E0EAC
lbl_802E0E98:
/* 802E0E98  38 00 00 01 */	li r0, 1
/* 802E0E9C  98 1E 00 98 */	stb r0, 0x98(r30)
/* 802E0EA0  48 06 18 5D */	bl OSGetTime
/* 802E0EA4  90 9E 00 A4 */	stw r4, 0xa4(r30)
/* 802E0EA8  90 7E 00 A0 */	stw r3, 0xa0(r30)
lbl_802E0EAC:
/* 802E0EAC  3C 60 80 43 */	lis r3, sPatternList__19JUTGamePadLongPress@ha /* 0x8043456C@ha */
/* 802E0EB0  83 E3 45 6C */	lwz r31, sPatternList__19JUTGamePadLongPress@l(r3)  /* 0x8043456C@l */
/* 802E0EB4  48 00 00 B4 */	b lbl_802E0F68
lbl_802E0EB8:
/* 802E0EB8  83 9F 00 00 */	lwz r28, 0(r31)
/* 802E0EBC  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 802E0EC0  28 00 00 00 */	cmplwi r0, 0
/* 802E0EC4  41 82 00 A0 */	beq lbl_802E0F64
/* 802E0EC8  AB BE 00 7C */	lha r29, 0x7c(r30)
/* 802E0ECC  7F A0 07 35 */	extsh. r0, r29
/* 802E0ED0  41 80 00 94 */	blt lbl_802E0F64
/* 802E0ED4  2C 1D 00 04 */	cmpwi r29, 4
/* 802E0ED8  40 80 00 8C */	bge lbl_802E0F64
/* 802E0EDC  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 802E0EE0  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 802E0EE4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802E0EE8  7C 00 20 38 */	and r0, r0, r4
/* 802E0EEC  7C 00 18 40 */	cmplw r0, r3
/* 802E0EF0  40 82 00 68 */	bne lbl_802E0F58
/* 802E0EF4  38 7D 00 20 */	addi r3, r29, 0x20
/* 802E0EF8  7C 1C 18 AE */	lbzx r0, r28, r3
/* 802E0EFC  28 00 00 01 */	cmplwi r0, 1
/* 802E0F00  40 82 00 2C */	bne lbl_802E0F2C
/* 802E0F04  48 06 17 F9 */	bl OSGetTime
/* 802E0F08  57 A5 18 38 */	slwi r5, r29, 3
/* 802E0F0C  38 05 00 28 */	addi r0, r5, 0x28
/* 802E0F10  7C BC 02 14 */	add r5, r28, r0
/* 802E0F14  80 A5 00 04 */	lwz r5, 4(r5)
/* 802E0F18  7C A5 20 10 */	subfc r5, r5, r4
/* 802E0F1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E0F20  A8 9E 00 7C */	lha r4, 0x7c(r30)
/* 802E0F24  48 00 0B D9 */	bl checkCallback__19JUTGamePadLongPressFiUl
/* 802E0F28  48 00 00 3C */	b lbl_802E0F64
lbl_802E0F2C:
/* 802E0F2C  38 00 00 01 */	li r0, 1
/* 802E0F30  7C 1C 19 AE */	stbx r0, r28, r3
/* 802E0F34  83 BF 00 00 */	lwz r29, 0(r31)
/* 802E0F38  48 06 17 C5 */	bl OSGetTime
/* 802E0F3C  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 802E0F40  54 05 18 38 */	slwi r5, r0, 3
/* 802E0F44  38 05 00 28 */	addi r0, r5, 0x28
/* 802E0F48  7C BD 02 14 */	add r5, r29, r0
/* 802E0F4C  90 85 00 04 */	stw r4, 4(r5)
/* 802E0F50  90 65 00 00 */	stw r3, 0(r5)
/* 802E0F54  48 00 00 10 */	b lbl_802E0F64
lbl_802E0F58:
/* 802E0F58  38 60 00 00 */	li r3, 0
/* 802E0F5C  38 1D 00 20 */	addi r0, r29, 0x20
/* 802E0F60  7C 7C 01 AE */	stbx r3, r28, r0
lbl_802E0F64:
/* 802E0F64  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802E0F68:
/* 802E0F68  28 1F 00 00 */	cmplwi r31, 0
/* 802E0F6C  40 82 FF 4C */	bne lbl_802E0EB8
/* 802E0F70  A8 9E 00 7C */	lha r4, 0x7c(r30)
/* 802E0F74  7C 80 07 35 */	extsh. r0, r4
/* 802E0F78  41 80 00 14 */	blt lbl_802E0F8C
/* 802E0F7C  2C 04 00 04 */	cmpwi r4, 4
/* 802E0F80  40 80 00 0C */	bge lbl_802E0F8C
/* 802E0F84  38 7E 00 68 */	addi r3, r30, 0x68
/* 802E0F88  48 00 07 99 */	bl update__Q210JUTGamePad7CRumbleFs
lbl_802E0F8C:
/* 802E0F8C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E0F90  48 08 12 95 */	bl _restgpr_28
/* 802E0F94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E0F98  7C 08 03 A6 */	mtlr r0
/* 802E0F9C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E0FA0  4E 80 00 20 */	blr 
