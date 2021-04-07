lbl_80355B90:
/* 80355B90  7C 08 02 A6 */	mflr r0
/* 80355B94  90 01 00 04 */	stw r0, 4(r1)
/* 80355B98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80355B9C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80355BA0  7C 7A 1B 78 */	mr r26, r3
/* 80355BA4  80 63 00 80 */	lwz r3, 0x80(r3)
/* 80355BA8  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 80355BAC  3B 63 00 00 */	addi r27, r3, 0
/* 80355BB0  28 00 00 00 */	cmplwi r0, 0
/* 80355BB4  40 82 00 14 */	bne lbl_80355BC8
/* 80355BB8  A0 7B 00 22 */	lhz r3, 0x22(r27)
/* 80355BBC  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80355BC0  7C 03 00 40 */	cmplw r3, r0
/* 80355BC4  41 82 00 0C */	beq lbl_80355BD0
lbl_80355BC8:
/* 80355BC8  38 60 FF FA */	li r3, -6
/* 80355BCC  48 00 02 34 */	b lbl_80355E00
lbl_80355BD0:
/* 80355BD0  38 00 01 FC */	li r0, 0x1fc
/* 80355BD4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80355BD8  7C 00 01 95 */	addze. r0, r0
/* 80355BDC  38 9B 00 00 */	addi r4, r27, 0
/* 80355BE0  38 E0 00 00 */	li r7, 0
/* 80355BE4  7C 03 03 78 */	mr r3, r0
/* 80355BE8  38 C0 00 00 */	li r6, 0
/* 80355BEC  40 81 00 BC */	ble lbl_80355CA8
/* 80355BF0  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80355BF4  7C 09 03 A6 */	mtctr r0
/* 80355BF8  41 82 00 94 */	beq lbl_80355C8C
lbl_80355BFC:
/* 80355BFC  A0 A4 00 00 */	lhz r5, 0(r4)
/* 80355C00  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C04  7C C6 2A 14 */	add r6, r6, r5
/* 80355C08  A0 A4 00 02 */	lhz r5, 2(r4)
/* 80355C0C  7C E7 02 14 */	add r7, r7, r0
/* 80355C10  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C14  7C C6 2A 14 */	add r6, r6, r5
/* 80355C18  A0 A4 00 04 */	lhz r5, 4(r4)
/* 80355C1C  7C E7 02 14 */	add r7, r7, r0
/* 80355C20  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C24  7C C6 2A 14 */	add r6, r6, r5
/* 80355C28  A0 A4 00 06 */	lhz r5, 6(r4)
/* 80355C2C  7C E7 02 14 */	add r7, r7, r0
/* 80355C30  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C34  7C C6 2A 14 */	add r6, r6, r5
/* 80355C38  A0 A4 00 08 */	lhz r5, 8(r4)
/* 80355C3C  7C E7 02 14 */	add r7, r7, r0
/* 80355C40  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C44  7C C6 2A 14 */	add r6, r6, r5
/* 80355C48  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 80355C4C  7C E7 02 14 */	add r7, r7, r0
/* 80355C50  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C54  7C C6 2A 14 */	add r6, r6, r5
/* 80355C58  A0 A4 00 0C */	lhz r5, 0xc(r4)
/* 80355C5C  7C E7 02 14 */	add r7, r7, r0
/* 80355C60  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C64  7C C6 2A 14 */	add r6, r6, r5
/* 80355C68  A0 A4 00 0E */	lhz r5, 0xe(r4)
/* 80355C6C  7C E7 02 14 */	add r7, r7, r0
/* 80355C70  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C74  7C C6 2A 14 */	add r6, r6, r5
/* 80355C78  7C E7 02 14 */	add r7, r7, r0
/* 80355C7C  38 84 00 10 */	addi r4, r4, 0x10
/* 80355C80  42 00 FF 7C */	bdnz lbl_80355BFC
/* 80355C84  70 63 00 07 */	andi. r3, r3, 7
/* 80355C88  41 82 00 20 */	beq lbl_80355CA8
lbl_80355C8C:
/* 80355C8C  7C 69 03 A6 */	mtctr r3
lbl_80355C90:
/* 80355C90  A0 A4 00 00 */	lhz r5, 0(r4)
/* 80355C94  38 84 00 02 */	addi r4, r4, 2
/* 80355C98  7C A0 28 F8 */	nor r0, r5, r5
/* 80355C9C  7C C6 2A 14 */	add r6, r6, r5
/* 80355CA0  7C E7 02 14 */	add r7, r7, r0
/* 80355CA4  42 00 FF EC */	bdnz lbl_80355C90
lbl_80355CA8:
/* 80355CA8  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80355CAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80355CB0  40 82 00 08 */	bne lbl_80355CB8
/* 80355CB4  38 C0 00 00 */	li r6, 0
lbl_80355CB8:
/* 80355CB8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80355CBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80355CC0  40 82 00 08 */	bne lbl_80355CC8
/* 80355CC4  38 E0 00 00 */	li r7, 0
lbl_80355CC8:
/* 80355CC8  A0 7B 01 FC */	lhz r3, 0x1fc(r27)
/* 80355CCC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80355CD0  7C 03 00 40 */	cmplw r3, r0
/* 80355CD4  40 82 00 14 */	bne lbl_80355CE8
/* 80355CD8  A0 7B 01 FE */	lhz r3, 0x1fe(r27)
/* 80355CDC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80355CE0  7C 03 00 40 */	cmplw r3, r0
/* 80355CE4  41 82 00 0C */	beq lbl_80355CF0
lbl_80355CE8:
/* 80355CE8  38 60 FF FA */	li r3, -6
/* 80355CEC  48 00 01 14 */	b lbl_80355E00
lbl_80355CF0:
/* 80355CF0  83 FB 00 0C */	lwz r31, 0xc(r27)
/* 80355CF4  83 9B 00 10 */	lwz r28, 0x10(r27)
/* 80355CF8  4B FE A4 A9 */	bl __OSLockSramEx
/* 80355CFC  3C 80 80 45 */	lis r4, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80355D00  38 04 CB C0 */	addi r0, r4, __CARDBlock@l /* 0x8044CBC0@l */
/* 80355D04  3C 80 78 78 */	lis r4, 0x7878 /* 0x78787879@ha */
/* 80355D08  7C 00 D0 50 */	subf r0, r0, r26
/* 80355D0C  38 84 78 79 */	addi r4, r4, 0x7879 /* 0x78787879@l */
/* 80355D10  7C 04 00 96 */	mulhw r0, r4, r0
/* 80355D14  7C 00 3E 70 */	srawi r0, r0, 7
/* 80355D18  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80355D1C  7C 00 22 14 */	add r0, r0, r4
/* 80355D20  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80355D24  3C 80 41 C6 */	lis r4, 0x41C6 /* 0x41C64E6D@ha */
/* 80355D28  3B 3B 00 00 */	addi r25, r27, 0
/* 80355D2C  7F A3 02 14 */	add r29, r3, r0
/* 80355D30  3B C4 4E 6D */	addi r30, r4, 0x4E6D /* 0x41C64E6D@l */
/* 80355D34  3B 40 00 00 */	li r26, 0
lbl_80355D38:
/* 80355D38  7C BF F1 D6 */	mullw r5, r31, r30
/* 80355D3C  7C 7C F0 16 */	mulhwu r3, r28, r30
/* 80355D40  3B E0 00 00 */	li r31, 0
/* 80355D44  7C A5 1A 14 */	add r5, r5, r3
/* 80355D48  7C 7C F9 D6 */	mullw r3, r28, r31
/* 80355D4C  7C 1C F1 D6 */	mullw r0, r28, r30
/* 80355D50  3B 80 30 39 */	li r28, 0x3039
/* 80355D54  7C 80 E0 14 */	addc r4, r0, r28
/* 80355D58  7C 05 1A 14 */	add r0, r5, r3
/* 80355D5C  7C 60 F9 14 */	adde r3, r0, r31
/* 80355D60  38 A0 00 10 */	li r5, 0x10
/* 80355D64  48 00 C9 31 */	bl __shr2i
/* 80355D68  88 1D 00 00 */	lbz r0, 0(r29)
/* 80355D6C  88 D9 00 00 */	lbz r6, 0(r25)
/* 80355D70  7C 04 00 14 */	addc r0, r4, r0
/* 80355D74  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80355D78  7C 06 00 40 */	cmplw r6, r0
/* 80355D7C  41 82 00 14 */	beq lbl_80355D90
/* 80355D80  38 60 00 00 */	li r3, 0
/* 80355D84  4B FE A7 D9 */	bl __OSUnlockSramEx
/* 80355D88  38 60 FF FA */	li r3, -6
/* 80355D8C  48 00 00 74 */	b lbl_80355E00
lbl_80355D90:
/* 80355D90  7C A3 F1 D6 */	mullw r5, r3, r30
/* 80355D94  7C 64 F0 16 */	mulhwu r3, r4, r30
/* 80355D98  7C A5 1A 14 */	add r5, r5, r3
/* 80355D9C  7C 64 F9 D6 */	mullw r3, r4, r31
/* 80355DA0  7C 04 F1 D6 */	mullw r0, r4, r30
/* 80355DA4  7C 80 E0 14 */	addc r4, r0, r28
/* 80355DA8  7C 05 1A 14 */	add r0, r5, r3
/* 80355DAC  7C 60 F9 14 */	adde r3, r0, r31
/* 80355DB0  38 A0 00 10 */	li r5, 0x10
/* 80355DB4  48 00 C8 E1 */	bl __shr2i
/* 80355DB8  3B 5A 00 01 */	addi r26, r26, 1
/* 80355DBC  2C 1A 00 0C */	cmpwi r26, 0xc
/* 80355DC0  38 00 7F FF */	li r0, 0x7fff
/* 80355DC4  7C 9C 00 38 */	and r28, r4, r0
/* 80355DC8  7C 7F F8 38 */	and r31, r3, r31
/* 80355DCC  3B BD 00 01 */	addi r29, r29, 1
/* 80355DD0  3B 39 00 01 */	addi r25, r25, 1
/* 80355DD4  41 80 FF 64 */	blt lbl_80355D38
/* 80355DD8  38 60 00 00 */	li r3, 0
/* 80355DDC  4B FE A7 81 */	bl __OSUnlockSramEx
/* 80355DE0  4B FF DD 95 */	bl __CARDGetFontEncode
/* 80355DE4  A0 1B 00 24 */	lhz r0, 0x24(r27)
/* 80355DE8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80355DEC  7C 00 18 40 */	cmplw r0, r3
/* 80355DF0  41 82 00 0C */	beq lbl_80355DFC
/* 80355DF4  38 60 FF F3 */	li r3, -13
/* 80355DF8  48 00 00 08 */	b lbl_80355E00
lbl_80355DFC:
/* 80355DFC  38 60 00 00 */	li r3, 0
lbl_80355E00:
/* 80355E00  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80355E04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80355E08  38 21 00 30 */	addi r1, r1, 0x30
/* 80355E0C  7C 08 03 A6 */	mtlr r0
/* 80355E10  4E 80 00 20 */	blr 
