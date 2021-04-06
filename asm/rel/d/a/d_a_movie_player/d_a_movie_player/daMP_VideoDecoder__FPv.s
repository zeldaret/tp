lbl_80875DD8:
/* 80875DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875DDC  7C 08 02 A6 */	mflr r0
/* 80875DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80875DE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80875DEC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80875DF0  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
lbl_80875DF4:
/* 80875DF4  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 80875DF8  28 00 00 00 */	cmplwi r0, 0
/* 80875DFC  41 82 00 70 */	beq lbl_80875E6C
/* 80875E00  48 00 00 60 */	b lbl_80875E60
lbl_80875E04:
/* 80875E04  4B FF FB 45 */	bl daMP_PopReadedBuffer2__Fv
/* 80875E08  7C 7E 1B 78 */	mr r30, r3
/* 80875E0C  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 80875E10  80 83 00 04 */	lwz r4, 4(r3)
/* 80875E14  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80875E18  7C 84 02 14 */	add r4, r4, r0
/* 80875E1C  7C 04 2B 96 */	divwu r0, r4, r5
/* 80875E20  7C 00 29 D6 */	mullw r0, r0, r5
/* 80875E24  7C 80 20 50 */	subf r4, r0, r4
/* 80875E28  38 05 FF FF */	addi r0, r5, -1
/* 80875E2C  7C 04 00 40 */	cmplw r4, r0
/* 80875E30  40 82 00 14 */	bne lbl_80875E44
/* 80875E34  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 80875E38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80875E3C  40 82 00 08 */	bne lbl_80875E44
/* 80875E40  4B FF FE 61 */	bl daMP_VideoDecode__FP18daMP_THPReadBuffer
lbl_80875E44:
/* 80875E44  7F C3 F3 78 */	mr r3, r30
/* 80875E48  4B FF FA D1 */	bl daMP_PushFreeReadBuffer__FPv
/* 80875E4C  4B AC 78 A9 */	bl OSDisableInterrupts
/* 80875E50  80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 80875E54  38 04 00 01 */	addi r0, r4, 1
/* 80875E58  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80875E5C  4B AC 78 C1 */	bl OSRestoreInterrupts
lbl_80875E60:
/* 80875E60  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80875E64  2C 00 00 00 */	cmpwi r0, 0
/* 80875E68  41 80 FF 9C */	blt lbl_80875E04
lbl_80875E6C:
/* 80875E6C  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 80875E70  28 00 00 00 */	cmplwi r0, 0
/* 80875E74  41 82 00 10 */	beq lbl_80875E84
/* 80875E78  4B FF FA D1 */	bl daMP_PopReadedBuffer2__Fv
/* 80875E7C  7C 7E 1B 78 */	mr r30, r3
/* 80875E80  48 00 00 0C */	b lbl_80875E8C
lbl_80875E84:
/* 80875E84  4B FF F9 FD */	bl daMP_PopReadedBuffer__Fv
/* 80875E88  7C 7E 1B 78 */	mr r30, r3
lbl_80875E8C:
/* 80875E8C  7F C3 F3 78 */	mr r3, r30
/* 80875E90  4B FF FE 11 */	bl daMP_VideoDecode__FP18daMP_THPReadBuffer
/* 80875E94  7F C3 F3 78 */	mr r3, r30
/* 80875E98  4B FF FA 81 */	bl daMP_PushFreeReadBuffer__FPv
/* 80875E9C  4B FF FF 58 */	b lbl_80875DF4
