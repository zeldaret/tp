lbl_802D7DB4:
/* 802D7DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D7DB8  7C 08 02 A6 */	mflr r0
/* 802D7DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7DC4  48 08 A4 15 */	bl _savegpr_28
/* 802D7DC8  7C 7D 1B 78 */	mr r29, r3
/* 802D7DCC  7C 9C 23 78 */	mr r28, r4
/* 802D7DD0  38 00 00 00 */	li r0, 0
/* 802D7DD4  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D7DD8  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D7DDC  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D7DE0  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D7DE4  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D7DE8  38 60 00 F8 */	li r3, 0xf8
/* 802D7DEC  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D7DF0  38 A0 00 00 */	li r5, 0
/* 802D7DF4  4B FF 6E A5 */	bl __nw__FUlP7JKRHeapi
/* 802D7DF8  7C 60 1B 79 */	or. r0, r3, r3
/* 802D7DFC  41 82 00 10 */	beq lbl_802D7E0C
/* 802D7E00  7F 84 E3 78 */	mr r4, r28
/* 802D7E04  48 00 18 9D */	bl __ct__10JKRDvdFileFl
/* 802D7E08  7C 60 1B 78 */	mr r0, r3
lbl_802D7E0C:
/* 802D7E0C  90 1D 00 68 */	stw r0, 0x68(r29)
/* 802D7E10  80 1D 00 68 */	lwz r0, 0x68(r29)
/* 802D7E14  28 00 00 00 */	cmplwi r0, 0
/* 802D7E18  40 82 00 14 */	bne lbl_802D7E2C
/* 802D7E1C  38 00 00 00 */	li r0, 0
/* 802D7E20  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 802D7E24  38 60 00 00 */	li r3, 0
/* 802D7E28  48 00 02 10 */	b lbl_802D8038
lbl_802D7E2C:
/* 802D7E2C  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D7E30  38 80 00 20 */	li r4, 0x20
/* 802D7E34  38 A0 00 20 */	li r5, 0x20
/* 802D7E38  4B FF 66 9D */	bl alloc__7JKRHeapFUli
/* 802D7E3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7E40  40 82 00 10 */	bne lbl_802D7E50
/* 802D7E44  38 00 00 00 */	li r0, 0
/* 802D7E48  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 802D7E4C  48 00 01 9C */	b lbl_802D7FE8
lbl_802D7E50:
/* 802D7E50  38 00 00 00 */	li r0, 0
/* 802D7E54  90 01 00 08 */	stw r0, 8(r1)
/* 802D7E58  7F 83 E3 78 */	mr r3, r28
/* 802D7E5C  7F C4 F3 78 */	mr r4, r30
/* 802D7E60  38 A0 00 01 */	li r5, 1
/* 802D7E64  38 C0 00 20 */	li r6, 0x20
/* 802D7E68  38 E0 00 00 */	li r7, 0
/* 802D7E6C  39 00 00 01 */	li r8, 1
/* 802D7E70  39 20 00 00 */	li r9, 0
/* 802D7E74  39 5D 00 5C */	addi r10, r29, 0x5c
/* 802D7E78  48 00 1D DD */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D7E7C  7F C3 F3 78 */	mr r3, r30
/* 802D7E80  38 80 00 20 */	li r4, 0x20
/* 802D7E84  48 06 36 FD */	bl DCInvalidateRange
/* 802D7E88  80 1D 00 60 */	lwz r0, 0x60(r29)
/* 802D7E8C  2C 00 00 01 */	cmpwi r0, 1
/* 802D7E90  3B E0 FF E0 */	li r31, -32
/* 802D7E94  40 82 00 08 */	bne lbl_802D7E9C
/* 802D7E98  3B E0 00 20 */	li r31, 0x20
lbl_802D7E9C:
/* 802D7E9C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802D7EA0  7F E4 FB 78 */	mr r4, r31
/* 802D7EA4  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802D7EA8  4B FF 65 CD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D7EAC  90 7D 00 44 */	stw r3, 0x44(r29)
/* 802D7EB0  80 9D 00 44 */	lwz r4, 0x44(r29)
/* 802D7EB4  28 04 00 00 */	cmplwi r4, 0
/* 802D7EB8  40 82 00 10 */	bne lbl_802D7EC8
/* 802D7EBC  38 00 00 00 */	li r0, 0
/* 802D7EC0  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 802D7EC4  48 00 01 24 */	b lbl_802D7FE8
lbl_802D7EC8:
/* 802D7EC8  38 00 00 00 */	li r0, 0
/* 802D7ECC  90 01 00 08 */	stw r0, 8(r1)
/* 802D7ED0  7F 83 E3 78 */	mr r3, r28
/* 802D7ED4  38 A0 00 01 */	li r5, 1
/* 802D7ED8  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 802D7EDC  38 E0 00 00 */	li r7, 0
/* 802D7EE0  39 00 00 01 */	li r8, 1
/* 802D7EE4  39 20 00 20 */	li r9, 0x20
/* 802D7EE8  39 40 00 00 */	li r10, 0
/* 802D7EEC  48 00 1D 69 */	bl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 802D7EF0  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7EF4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D7EF8  48 06 36 89 */	bl DCInvalidateRange
/* 802D7EFC  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7F00  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7F04  7C 03 02 14 */	add r0, r3, r0
/* 802D7F08  90 1D 00 48 */	stw r0, 0x48(r29)
/* 802D7F0C  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7F10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D7F14  7C 03 02 14 */	add r0, r3, r0
/* 802D7F18  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 802D7F1C  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7F20  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D7F24  7C 03 02 14 */	add r0, r3, r0
/* 802D7F28  90 1D 00 54 */	stw r0, 0x54(r29)
/* 802D7F2C  38 00 00 00 */	li r0, 0
/* 802D7F30  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802D7F34  38 80 00 00 */	li r4, 0
/* 802D7F38  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 802D7F3C  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7F40  80 03 00 08 */	lwz r0, 8(r3)
/* 802D7F44  7C 09 03 A6 */	mtctr r0
/* 802D7F48  28 00 00 00 */	cmplwi r0, 0
/* 802D7F4C  40 81 00 28 */	ble lbl_802D7F74
lbl_802D7F50:
/* 802D7F50  80 05 00 04 */	lwz r0, 4(r5)
/* 802D7F54  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D7F58  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D7F5C  41 82 00 10 */	beq lbl_802D7F6C
/* 802D7F60  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 802D7F64  7C 80 03 78 */	or r0, r4, r0
/* 802D7F68  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_802D7F6C:
/* 802D7F6C  38 A5 00 14 */	addi r5, r5, 0x14
/* 802D7F70  42 00 FF E0 */	bdnz lbl_802D7F50
lbl_802D7F74:
/* 802D7F74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D7F78  41 82 00 60 */	beq lbl_802D7FD8
/* 802D7F7C  7F E3 FB 78 */	mr r3, r31
/* 802D7F80  48 08 D1 51 */	bl abs
/* 802D7F84  7C 64 1B 78 */	mr r4, r3
/* 802D7F88  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802D7F8C  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802D7F90  80 03 00 08 */	lwz r0, 8(r3)
/* 802D7F94  54 03 10 3A */	slwi r3, r0, 2
/* 802D7F98  4B FF 64 DD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D7F9C  90 7D 00 50 */	stw r3, 0x50(r29)
/* 802D7FA0  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 802D7FA4  28 03 00 00 */	cmplwi r3, 0
/* 802D7FA8  40 82 00 1C */	bne lbl_802D7FC4
/* 802D7FAC  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D7FB0  80 9D 00 44 */	lwz r4, 0x44(r29)
/* 802D7FB4  4B FF 65 95 */	bl free__7JKRHeapFPv
/* 802D7FB8  38 00 00 00 */	li r0, 0
/* 802D7FBC  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 802D7FC0  48 00 00 28 */	b lbl_802D7FE8
lbl_802D7FC4:
/* 802D7FC4  38 80 00 00 */	li r4, 0
/* 802D7FC8  80 BD 00 44 */	lwz r5, 0x44(r29)
/* 802D7FCC  80 05 00 08 */	lwz r0, 8(r5)
/* 802D7FD0  54 05 10 3A */	slwi r5, r0, 2
/* 802D7FD4  4B D2 B4 85 */	bl memset
lbl_802D7FD8:
/* 802D7FD8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D7FDC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D7FE0  7C 03 02 14 */	add r0, r3, r0
/* 802D7FE4  90 1D 00 64 */	stw r0, 0x64(r29)
lbl_802D7FE8:
/* 802D7FE8  28 1E 00 00 */	cmplwi r30, 0
/* 802D7FEC  41 82 00 10 */	beq lbl_802D7FFC
/* 802D7FF0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802D7FF4  7F C4 F3 78 */	mr r4, r30
/* 802D7FF8  4B FF 65 51 */	bl free__7JKRHeapFPv
lbl_802D7FFC:
/* 802D7FFC  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 802D8000  28 00 00 00 */	cmplwi r0, 0
/* 802D8004  40 82 00 30 */	bne lbl_802D8034
/* 802D8008  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 802D800C  28 03 00 00 */	cmplwi r3, 0
/* 802D8010  41 82 00 1C */	beq lbl_802D802C
/* 802D8014  41 82 00 18 */	beq lbl_802D802C
/* 802D8018  38 80 00 01 */	li r4, 1
/* 802D801C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D8020  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D8024  7D 89 03 A6 */	mtctr r12
/* 802D8028  4E 80 04 21 */	bctrl 
lbl_802D802C:
/* 802D802C  38 60 00 00 */	li r3, 0
/* 802D8030  48 00 00 08 */	b lbl_802D8038
lbl_802D8034:
/* 802D8034  38 60 00 01 */	li r3, 1
lbl_802D8038:
/* 802D8038  39 61 00 20 */	addi r11, r1, 0x20
/* 802D803C  48 08 A1 E9 */	bl _restgpr_28
/* 802D8040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D8044  7C 08 03 A6 */	mtlr r0
/* 802D8048  38 21 00 20 */	addi r1, r1, 0x20
/* 802D804C  4E 80 00 20 */	blr 
