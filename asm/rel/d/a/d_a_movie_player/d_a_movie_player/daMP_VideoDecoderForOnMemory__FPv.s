lbl_80875EA0:
/* 80875EA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80875EA4  7C 08 02 A6 */	mflr r0
/* 80875EA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80875EAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80875EB0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80875EB4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80875EB8  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha
/* 80875EBC  3B E4 9B D0 */	addi r31, r4, daMP_ActivePlayer@l
/* 80875EC0  83 DF 00 BC */	lwz r30, 0xbc(r31)
/* 80875EC4  90 61 00 08 */	stw r3, 8(r1)
/* 80875EC8  3B A0 00 00 */	li r29, 0
lbl_80875ECC:
/* 80875ECC  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 80875ED0  28 00 00 00 */	cmplwi r0, 0
/* 80875ED4  41 82 00 84 */	beq lbl_80875F58
/* 80875ED8  48 00 00 74 */	b lbl_80875F4C
lbl_80875EDC:
/* 80875EDC  4B AC 78 18 */	b OSDisableInterrupts
/* 80875EE0  80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 80875EE4  38 04 00 01 */	addi r0, r4, 1
/* 80875EE8  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80875EEC  4B AC 78 30 */	b OSRestoreInterrupts
/* 80875EF0  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80875EF4  7C 7D 02 14 */	add r3, r29, r0
/* 80875EF8  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80875EFC  7C 03 23 96 */	divwu r0, r3, r4
/* 80875F00  7C 00 21 D6 */	mullw r0, r0, r4
/* 80875F04  7C 60 18 50 */	subf r3, r0, r3
/* 80875F08  38 04 FF FF */	addi r0, r4, -1
/* 80875F0C  7C 03 00 40 */	cmplw r3, r0
/* 80875F10  40 82 00 24 */	bne lbl_80875F34
/* 80875F14  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 80875F18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80875F1C  41 82 00 3C */	beq lbl_80875F58
/* 80875F20  80 61 00 08 */	lwz r3, 8(r1)
/* 80875F24  83 C3 00 00 */	lwz r30, 0(r3)
/* 80875F28  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80875F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80875F30  48 00 00 18 */	b lbl_80875F48
lbl_80875F34:
/* 80875F34  80 61 00 08 */	lwz r3, 8(r1)
/* 80875F38  80 83 00 00 */	lwz r4, 0(r3)
/* 80875F3C  7C 03 F2 14 */	add r0, r3, r30
/* 80875F40  90 01 00 08 */	stw r0, 8(r1)
/* 80875F44  7C 9E 23 78 */	mr r30, r4
lbl_80875F48:
/* 80875F48  3B BD 00 01 */	addi r29, r29, 1
lbl_80875F4C:
/* 80875F4C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80875F50  2C 00 00 00 */	cmpwi r0, 0
/* 80875F54  41 80 FF 88 */	blt lbl_80875EDC
lbl_80875F58:
/* 80875F58  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80875F5C  38 61 00 08 */	addi r3, r1, 8
/* 80875F60  4B FF FD 41 */	bl daMP_VideoDecode__FP18daMP_THPReadBuffer
/* 80875F64  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80875F68  7C 7D 02 14 */	add r3, r29, r0
/* 80875F6C  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80875F70  7C 03 23 96 */	divwu r0, r3, r4
/* 80875F74  7C 00 21 D6 */	mullw r0, r0, r4
/* 80875F78  7C 60 18 50 */	subf r3, r0, r3
/* 80875F7C  38 04 FF FF */	addi r0, r4, -1
/* 80875F80  7C 03 00 40 */	cmplw r3, r0
/* 80875F84  40 82 00 34 */	bne lbl_80875FB8
/* 80875F88  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 80875F8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80875F90  41 82 00 18 */	beq lbl_80875FA8
/* 80875F94  80 61 00 08 */	lwz r3, 8(r1)
/* 80875F98  83 C3 00 00 */	lwz r30, 0(r3)
/* 80875F9C  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80875FA0  90 01 00 08 */	stw r0, 8(r1)
/* 80875FA4  48 00 00 28 */	b lbl_80875FCC
lbl_80875FA8:
/* 80875FA8  3C 60 80 88 */	lis r3, daMP_VideoDecodeThread@ha
/* 80875FAC  38 63 C1 A0 */	addi r3, r3, daMP_VideoDecodeThread@l
/* 80875FB0  4B AC BA 8C */	b OSSuspendThread
/* 80875FB4  48 00 00 18 */	b lbl_80875FCC
lbl_80875FB8:
/* 80875FB8  80 61 00 08 */	lwz r3, 8(r1)
/* 80875FBC  80 83 00 00 */	lwz r4, 0(r3)
/* 80875FC0  7C 03 F2 14 */	add r0, r3, r30
/* 80875FC4  90 01 00 08 */	stw r0, 8(r1)
/* 80875FC8  7C 9E 23 78 */	mr r30, r4
lbl_80875FCC:
/* 80875FCC  3B BD 00 01 */	addi r29, r29, 1
/* 80875FD0  4B FF FE FC */	b lbl_80875ECC
