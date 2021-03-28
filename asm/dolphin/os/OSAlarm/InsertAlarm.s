lbl_8033A908:
/* 8033A908  7C 08 02 A6 */	mflr r0
/* 8033A90C  90 01 00 04 */	stw r0, 4(r1)
/* 8033A910  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033A914  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 8033A918  3B 80 00 00 */	li r28, 0
/* 8033A91C  7C 7D 1B 78 */	mr r29, r3
/* 8033A920  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 8033A924  3B 25 00 00 */	addi r25, r5, 0
/* 8033A928  3B C6 00 00 */	addi r30, r6, 0
/* 8033A92C  3B E7 00 00 */	addi r31, r7, 0
/* 8033A930  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8033A934  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 8033A938  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033A93C  7C 08 E0 10 */	subfc r0, r8, r28
/* 8033A940  7C 63 21 10 */	subfe r3, r3, r4
/* 8033A944  7C 64 21 10 */	subfe r3, r4, r4
/* 8033A948  7C 63 00 D1 */	neg. r3, r3
/* 8033A94C  41 82 00 7C */	beq lbl_8033A9C8
/* 8033A950  48 00 7D CD */	bl __OSGetSystemTime
/* 8033A954  80 FD 00 20 */	lwz r7, 0x20(r29)
/* 8033A958  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8033A95C  81 1D 00 24 */	lwz r8, 0x24(r29)
/* 8033A960  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 8033A964  7C 04 40 10 */	subfc r0, r4, r8
/* 8033A968  7C A5 31 10 */	subfe r5, r5, r6
/* 8033A96C  7C A6 31 10 */	subfe r5, r6, r6
/* 8033A970  7C A5 00 D1 */	neg. r5, r5
/* 8033A974  3B C8 00 00 */	addi r30, r8, 0
/* 8033A978  3B 27 00 00 */	addi r25, r7, 0
/* 8033A97C  41 82 00 4C */	beq lbl_8033A9C8
/* 8033A980  83 7D 00 18 */	lwz r27, 0x18(r29)
/* 8033A984  7C 88 20 10 */	subfc r4, r8, r4
/* 8033A988  83 5D 00 1C */	lwz r26, 0x1c(r29)
/* 8033A98C  7C 67 19 10 */	subfe r3, r7, r3
/* 8033A990  38 BB 00 00 */	addi r5, r27, 0
/* 8033A994  38 DA 00 00 */	addi r6, r26, 0
/* 8033A998  48 02 79 8D */	bl __div2i
/* 8033A99C  38 00 00 01 */	li r0, 1
/* 8033A9A0  7C A4 00 14 */	addc r5, r4, r0
/* 8033A9A4  7C 9B 29 D6 */	mullw r4, r27, r5
/* 8033A9A8  7C 1A 28 16 */	mulhwu r0, r26, r5
/* 8033A9AC  7C 63 E1 14 */	adde r3, r3, r28
/* 8033A9B0  7C 84 02 14 */	add r4, r4, r0
/* 8033A9B4  7C 1A 19 D6 */	mullw r0, r26, r3
/* 8033A9B8  7C 7A 29 D6 */	mullw r3, r26, r5
/* 8033A9BC  7C 04 02 14 */	add r0, r4, r0
/* 8033A9C0  7F DE 18 14 */	addc r30, r30, r3
/* 8033A9C4  7F 39 01 14 */	adde r25, r25, r0
lbl_8033A9C8:
/* 8033A9C8  93 FD 00 00 */	stw r31, 0(r29)
/* 8033A9CC  6F 24 80 00 */	xoris r4, r25, 0x8000
/* 8033A9D0  93 DD 00 0C */	stw r30, 0xc(r29)
/* 8033A9D4  93 3D 00 08 */	stw r25, 8(r29)
/* 8033A9D8  80 CD 90 B8 */	lwz r6, AlarmQueue(r13)
/* 8033A9DC  48 00 00 C4 */	b lbl_8033AAA0
lbl_8033A9E0:
/* 8033A9E0  80 06 00 08 */	lwz r0, 8(r6)
/* 8033A9E4  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 8033A9E8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8033A9EC  7C 05 F0 10 */	subfc r0, r5, r30
/* 8033A9F0  7C 63 21 10 */	subfe r3, r3, r4
/* 8033A9F4  7C 64 21 10 */	subfe r3, r4, r4
/* 8033A9F8  7C 63 00 D1 */	neg. r3, r3
/* 8033A9FC  41 82 00 A0 */	beq lbl_8033AA9C
/* 8033AA00  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8033AA04  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8033AA08  93 A6 00 10 */	stw r29, 0x10(r6)
/* 8033AA0C  90 DD 00 14 */	stw r6, 0x14(r29)
/* 8033AA10  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8033AA14  28 03 00 00 */	cmplwi r3, 0
/* 8033AA18  41 82 00 0C */	beq lbl_8033AA24
/* 8033AA1C  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8033AA20  48 00 01 24 */	b lbl_8033AB44
lbl_8033AA24:
/* 8033AA24  93 AD 90 B8 */	stw r29, AlarmQueue(r13)
/* 8033AA28  48 00 7C F5 */	bl __OSGetSystemTime
/* 8033AA2C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033AA30  38 E0 00 00 */	li r7, 0
/* 8033AA34  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033AA38  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033AA3C  7D 04 30 10 */	subfc r8, r4, r6
/* 8033AA40  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AA44  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AA48  7C 07 40 10 */	subfc r0, r7, r8
/* 8033AA4C  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AA50  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AA54  7C A5 00 D1 */	neg. r5, r5
/* 8033AA58  41 82 00 10 */	beq lbl_8033AA68
/* 8033AA5C  38 60 00 00 */	li r3, 0
/* 8033AA60  4B FF F2 91 */	bl PPCMtdec
/* 8033AA64  48 00 00 E0 */	b lbl_8033AB44
lbl_8033AA68:
/* 8033AA68  3C 80 80 00 */	lis r4, 0x8000
/* 8033AA6C  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AA70  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AA74  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AA78  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AA7C  7C 63 00 D1 */	neg. r3, r3
/* 8033AA80  41 82 00 10 */	beq lbl_8033AA90
/* 8033AA84  7D 03 43 78 */	mr r3, r8
/* 8033AA88  4B FF F2 69 */	bl PPCMtdec
/* 8033AA8C  48 00 00 B8 */	b lbl_8033AB44
lbl_8033AA90:
/* 8033AA90  38 64 FF FF */	addi r3, r4, -1
/* 8033AA94  4B FF F2 5D */	bl PPCMtdec
/* 8033AA98  48 00 00 AC */	b lbl_8033AB44
lbl_8033AA9C:
/* 8033AA9C  80 C6 00 14 */	lwz r6, 0x14(r6)
lbl_8033AAA0:
/* 8033AAA0  28 06 00 00 */	cmplwi r6, 0
/* 8033AAA4  40 82 FF 3C */	bne lbl_8033A9E0
/* 8033AAA8  3B C0 00 00 */	li r30, 0
/* 8033AAAC  93 DD 00 14 */	stw r30, 0x14(r29)
/* 8033AAB0  38 6D 90 B8 */	la r3, AlarmQueue(r13) /* 80451638-_SDA_BASE_ */
/* 8033AAB4  80 83 00 04 */	lwz r4, 4(r3)
/* 8033AAB8  97 A3 00 04 */	stwu r29, 4(r3)
/* 8033AABC  28 04 00 00 */	cmplwi r4, 0
/* 8033AAC0  90 9D 00 10 */	stw r4, 0x10(r29)
/* 8033AAC4  41 82 00 0C */	beq lbl_8033AAD0
/* 8033AAC8  93 A4 00 14 */	stw r29, 0x14(r4)
/* 8033AACC  48 00 00 78 */	b lbl_8033AB44
lbl_8033AAD0:
/* 8033AAD0  93 A3 00 00 */	stw r29, 0(r3)
/* 8033AAD4  93 AD 90 B8 */	stw r29, AlarmQueue(r13)
/* 8033AAD8  48 00 7C 45 */	bl __OSGetSystemTime
/* 8033AADC  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033AAE0  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8033AAE4  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033AAE8  7C E4 30 10 */	subfc r7, r4, r6
/* 8033AAEC  7C 03 01 10 */	subfe r0, r3, r0
/* 8033AAF0  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033AAF4  7C 1E 38 10 */	subfc r0, r30, r7
/* 8033AAF8  7C A5 31 10 */	subfe r5, r5, r6
/* 8033AAFC  7C A6 31 10 */	subfe r5, r6, r6
/* 8033AB00  7C A5 00 D1 */	neg. r5, r5
/* 8033AB04  41 82 00 10 */	beq lbl_8033AB14
/* 8033AB08  38 60 00 00 */	li r3, 0
/* 8033AB0C  4B FF F1 E5 */	bl PPCMtdec
/* 8033AB10  48 00 00 34 */	b lbl_8033AB44
lbl_8033AB14:
/* 8033AB14  3C 80 80 00 */	lis r4, 0x8000
/* 8033AB18  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 8033AB1C  7C 04 38 10 */	subfc r0, r4, r7
/* 8033AB20  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AB24  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AB28  7C 63 00 D1 */	neg. r3, r3
/* 8033AB2C  41 82 00 10 */	beq lbl_8033AB3C
/* 8033AB30  7C E3 3B 78 */	mr r3, r7
/* 8033AB34  4B FF F1 BD */	bl PPCMtdec
/* 8033AB38  48 00 00 0C */	b lbl_8033AB44
lbl_8033AB3C:
/* 8033AB3C  38 64 FF FF */	addi r3, r4, -1
/* 8033AB40  4B FF F1 B1 */	bl PPCMtdec
lbl_8033AB44:
/* 8033AB44  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 8033AB48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033AB4C  38 21 00 40 */	addi r1, r1, 0x40
/* 8033AB50  7C 08 03 A6 */	mtlr r0
/* 8033AB54  4E 80 00 20 */	blr 
