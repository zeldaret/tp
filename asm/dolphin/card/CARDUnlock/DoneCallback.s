lbl_80354E60:
/* 80354E60  7C 08 02 A6 */	mflr r0
/* 80354E64  3C 80 80 45 */	lis r4, __CARDBlock@ha
/* 80354E68  90 01 00 04 */	stw r0, 4(r1)
/* 80354E6C  38 84 CB C0 */	addi r4, r4, __CARDBlock@l
/* 80354E70  38 04 00 30 */	addi r0, r4, 0x30
/* 80354E74  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 80354E78  7C 00 18 40 */	cmplw r0, r3
/* 80354E7C  93 E1 00 84 */	stw r31, 0x84(r1)
/* 80354E80  3B E0 00 00 */	li r31, 0
/* 80354E84  93 C1 00 80 */	stw r30, 0x80(r1)
/* 80354E88  93 A1 00 7C */	stw r29, 0x7c(r1)
/* 80354E8C  3B A4 00 00 */	addi r29, r4, 0
/* 80354E90  93 81 00 78 */	stw r28, 0x78(r1)
/* 80354E94  41 82 00 20 */	beq lbl_80354EB4
/* 80354E98  38 04 01 40 */	addi r0, r4, 0x140
/* 80354E9C  7C 00 18 40 */	cmplw r0, r3
/* 80354EA0  38 84 01 10 */	addi r4, r4, 0x110
/* 80354EA4  3B A4 00 00 */	addi r29, r4, 0
/* 80354EA8  3B E0 00 01 */	li r31, 1
/* 80354EAC  41 82 00 08 */	beq lbl_80354EB4
/* 80354EB0  3B E0 00 02 */	li r31, 2
lbl_80354EB4:
/* 80354EB4  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 80354EB8  38 03 00 2F */	addi r0, r3, 0x2f
/* 80354EBC  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 80354EC0  83 C3 00 20 */	lwz r30, 0x20(r3)
/* 80354EC4  4B FF F3 11 */	bl DummyLen
/* 80354EC8  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80354ECC  3B 83 00 00 */	addi r28, r3, 0
/* 80354ED0  38 DC 00 00 */	addi r6, r28, 0
/* 80354ED4  7F C0 02 78 */	xor r0, r30, r0
/* 80354ED8  54 04 00 1E */	rlwinm r4, r0, 0, 0, 0xf
/* 80354EDC  38 7F 00 00 */	addi r3, r31, 0
/* 80354EE0  38 A1 00 34 */	addi r5, r1, 0x34
/* 80354EE4  38 E0 00 01 */	li r7, 1
/* 80354EE8  4B FF F1 A9 */	bl ReadArrayUnlock
/* 80354EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80354EF0  40 80 00 1C */	bge lbl_80354F0C
/* 80354EF4  7F E3 FB 78 */	mr r3, r31
/* 80354EF8  4B FE F2 25 */	bl EXIUnlock
/* 80354EFC  38 7F 00 00 */	addi r3, r31, 0
/* 80354F00  38 80 FF FD */	li r4, -3
/* 80354F04  48 00 21 19 */	bl __CARDMountCallback
/* 80354F08  48 00 02 5C */	b lbl_80355164
lbl_80354F0C:
/* 80354F0C  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 80354F10  38 60 00 00 */	li r3, 0
/* 80354F14  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80354F18  7C 9C 22 14 */	add r4, r28, r4
/* 80354F1C  38 84 00 04 */	addi r4, r4, 4
/* 80354F20  54 84 18 38 */	slwi r4, r4, 3
/* 80354F24  38 84 00 01 */	addi r4, r4, 1
/* 80354F28  28 04 00 00 */	cmplwi r4, 0
/* 80354F2C  40 81 01 68 */	ble lbl_80355094
/* 80354F30  28 04 00 08 */	cmplwi r4, 8
/* 80354F34  38 C4 FF F8 */	addi r6, r4, -8
/* 80354F38  40 81 01 24 */	ble lbl_8035505C
/* 80354F3C  38 A6 00 07 */	addi r5, r6, 7
/* 80354F40  54 A5 E8 FE */	srwi r5, r5, 3
/* 80354F44  28 06 00 00 */	cmplwi r6, 0
/* 80354F48  7C A9 03 A6 */	mtctr r5
/* 80354F4C  40 81 01 10 */	ble lbl_8035505C
lbl_80354F50:
/* 80354F50  54 05 38 30 */	slwi r5, r0, 7
/* 80354F54  54 06 78 20 */	slwi r6, r0, 0xf
/* 80354F58  7C 05 2A 78 */	xor r5, r0, r5
/* 80354F5C  7C C5 2A 78 */	xor r5, r6, r5
/* 80354F60  54 07 B8 10 */	slwi r7, r0, 0x17
/* 80354F64  7C E5 2A 38 */	eqv r5, r7, r5
/* 80354F68  54 06 08 3C */	slwi r6, r0, 1
/* 80354F6C  54 A0 17 BC */	rlwinm r0, r5, 2, 0x1e, 0x1e
/* 80354F70  7C C7 03 78 */	or r7, r6, r0
/* 80354F74  54 E0 38 30 */	slwi r0, r7, 7
/* 80354F78  54 E5 78 20 */	slwi r5, r7, 0xf
/* 80354F7C  7C E0 02 78 */	xor r0, r7, r0
/* 80354F80  54 E6 B8 10 */	slwi r6, r7, 0x17
/* 80354F84  7C A0 02 78 */	xor r0, r5, r0
/* 80354F88  7C C0 02 38 */	eqv r0, r6, r0
/* 80354F8C  54 08 17 BC */	rlwinm r8, r0, 2, 0x1e, 0x1e
/* 80354F90  50 E8 08 3A */	rlwimi r8, r7, 1, 0, 0x1d
/* 80354F94  55 00 38 30 */	slwi r0, r8, 7
/* 80354F98  55 05 78 20 */	slwi r5, r8, 0xf
/* 80354F9C  7D 00 02 78 */	xor r0, r8, r0
/* 80354FA0  55 06 B8 10 */	slwi r6, r8, 0x17
/* 80354FA4  7C A0 02 78 */	xor r0, r5, r0
/* 80354FA8  7C C0 02 38 */	eqv r0, r6, r0
/* 80354FAC  54 07 17 BC */	rlwinm r7, r0, 2, 0x1e, 0x1e
/* 80354FB0  51 07 08 3A */	rlwimi r7, r8, 1, 0, 0x1d
/* 80354FB4  54 E0 38 30 */	slwi r0, r7, 7
/* 80354FB8  54 E5 78 20 */	slwi r5, r7, 0xf
/* 80354FBC  7C E0 02 78 */	xor r0, r7, r0
/* 80354FC0  54 E6 B8 10 */	slwi r6, r7, 0x17
/* 80354FC4  7C A0 02 78 */	xor r0, r5, r0
/* 80354FC8  7C C0 02 38 */	eqv r0, r6, r0
/* 80354FCC  54 08 17 BC */	rlwinm r8, r0, 2, 0x1e, 0x1e
/* 80354FD0  50 E8 08 3A */	rlwimi r8, r7, 1, 0, 0x1d
/* 80354FD4  55 00 38 30 */	slwi r0, r8, 7
/* 80354FD8  55 05 78 20 */	slwi r5, r8, 0xf
/* 80354FDC  7D 00 02 78 */	xor r0, r8, r0
/* 80354FE0  55 06 B8 10 */	slwi r6, r8, 0x17
/* 80354FE4  7C A0 02 78 */	xor r0, r5, r0
/* 80354FE8  7C C0 02 38 */	eqv r0, r6, r0
/* 80354FEC  54 07 17 BC */	rlwinm r7, r0, 2, 0x1e, 0x1e
/* 80354FF0  51 07 08 3A */	rlwimi r7, r8, 1, 0, 0x1d
/* 80354FF4  54 E0 38 30 */	slwi r0, r7, 7
/* 80354FF8  54 E5 78 20 */	slwi r5, r7, 0xf
/* 80354FFC  7C E0 02 78 */	xor r0, r7, r0
/* 80355000  54 E6 B8 10 */	slwi r6, r7, 0x17
/* 80355004  7C A0 02 78 */	xor r0, r5, r0
/* 80355008  7C C0 02 38 */	eqv r0, r6, r0
/* 8035500C  54 08 17 BC */	rlwinm r8, r0, 2, 0x1e, 0x1e
/* 80355010  50 E8 08 3A */	rlwimi r8, r7, 1, 0, 0x1d
/* 80355014  55 00 38 30 */	slwi r0, r8, 7
/* 80355018  55 05 78 20 */	slwi r5, r8, 0xf
/* 8035501C  7D 00 02 78 */	xor r0, r8, r0
/* 80355020  55 06 B8 10 */	slwi r6, r8, 0x17
/* 80355024  7C A0 02 78 */	xor r0, r5, r0
/* 80355028  7C C0 02 38 */	eqv r0, r6, r0
/* 8035502C  54 07 17 BC */	rlwinm r7, r0, 2, 0x1e, 0x1e
/* 80355030  51 07 08 3A */	rlwimi r7, r8, 1, 0, 0x1d
/* 80355034  54 E0 38 30 */	slwi r0, r7, 7
/* 80355038  54 E5 78 20 */	slwi r5, r7, 0xf
/* 8035503C  7C E0 02 78 */	xor r0, r7, r0
/* 80355040  54 E6 B8 10 */	slwi r6, r7, 0x17
/* 80355044  7C A0 02 78 */	xor r0, r5, r0
/* 80355048  7C C0 02 38 */	eqv r0, r6, r0
/* 8035504C  54 00 17 BC */	rlwinm r0, r0, 2, 0x1e, 0x1e
/* 80355050  50 E0 08 3A */	rlwimi r0, r7, 1, 0, 0x1d
/* 80355054  38 63 00 08 */	addi r3, r3, 8
/* 80355058  42 00 FE F8 */	bdnz lbl_80354F50
lbl_8035505C:
/* 8035505C  7C A3 20 50 */	subf r5, r3, r4
/* 80355060  7C 03 20 40 */	cmplw r3, r4
/* 80355064  7C A9 03 A6 */	mtctr r5
/* 80355068  40 80 00 2C */	bge lbl_80355094
lbl_8035506C:
/* 8035506C  54 03 38 30 */	slwi r3, r0, 7
/* 80355070  54 04 78 20 */	slwi r4, r0, 0xf
/* 80355074  7C 03 1A 78 */	xor r3, r0, r3
/* 80355078  54 05 B8 10 */	slwi r5, r0, 0x17
/* 8035507C  7C 83 1A 78 */	xor r3, r4, r3
/* 80355080  7C A3 1A 38 */	eqv r3, r5, r3
/* 80355084  54 04 08 3C */	slwi r4, r0, 1
/* 80355088  54 60 17 BC */	rlwinm r0, r3, 2, 0x1e, 0x1e
/* 8035508C  7C 80 03 78 */	or r0, r4, r0
/* 80355090  42 00 FF DC */	bdnz lbl_8035506C
lbl_80355094:
/* 80355094  54 03 38 30 */	slwi r3, r0, 7
/* 80355098  54 04 78 20 */	slwi r4, r0, 0xf
/* 8035509C  7C 03 1A 78 */	xor r3, r0, r3
/* 803550A0  54 05 B8 10 */	slwi r5, r0, 0x17
/* 803550A4  7C 83 1A 78 */	xor r3, r4, r3
/* 803550A8  7C A3 1A 38 */	eqv r3, r5, r3
/* 803550AC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803550B0  7C 00 1B 78 */	or r0, r0, r3
/* 803550B4  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 803550B8  4B FF F1 1D */	bl DummyLen
/* 803550BC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 803550C0  57 C4 80 1E */	slwi r4, r30, 0x10
/* 803550C4  38 C3 00 00 */	addi r6, r3, 0
/* 803550C8  7C 80 02 78 */	xor r0, r4, r0
/* 803550CC  54 04 00 1E */	rlwinm r4, r0, 0, 0, 0xf
/* 803550D0  38 7F 00 00 */	addi r3, r31, 0
/* 803550D4  38 A1 00 34 */	addi r5, r1, 0x34
/* 803550D8  38 E0 00 01 */	li r7, 1
/* 803550DC  4B FF EF B5 */	bl ReadArrayUnlock
/* 803550E0  2C 03 00 00 */	cmpwi r3, 0
/* 803550E4  40 80 00 1C */	bge lbl_80355100
/* 803550E8  7F E3 FB 78 */	mr r3, r31
/* 803550EC  4B FE F0 31 */	bl EXIUnlock
/* 803550F0  38 7F 00 00 */	addi r3, r31, 0
/* 803550F4  38 80 FF FD */	li r4, -3
/* 803550F8  48 00 1F 25 */	bl __CARDMountCallback
/* 803550FC  48 00 00 68 */	b lbl_80355164
lbl_80355100:
/* 80355100  38 7F 00 00 */	addi r3, r31, 0
/* 80355104  38 81 00 30 */	addi r4, r1, 0x30
/* 80355108  4B FF DD 3D */	bl __CARDReadStatus
/* 8035510C  3B 83 00 00 */	addi r28, r3, 0
/* 80355110  38 7F 00 00 */	addi r3, r31, 0
/* 80355114  4B FE E4 59 */	bl EXIProbe
/* 80355118  2C 03 00 00 */	cmpwi r3, 0
/* 8035511C  40 82 00 1C */	bne lbl_80355138
/* 80355120  7F E3 FB 78 */	mr r3, r31
/* 80355124  4B FE EF F9 */	bl EXIUnlock
/* 80355128  38 7F 00 00 */	addi r3, r31, 0
/* 8035512C  38 80 FF FD */	li r4, -3
/* 80355130  48 00 1E ED */	bl __CARDMountCallback
/* 80355134  48 00 00 30 */	b lbl_80355164
lbl_80355138:
/* 80355138  2C 1C 00 00 */	cmpwi r28, 0
/* 8035513C  40 82 00 1C */	bne lbl_80355158
/* 80355140  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80355144  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80355148  40 82 00 10 */	bne lbl_80355158
/* 8035514C  7F E3 FB 78 */	mr r3, r31
/* 80355150  4B FE EF CD */	bl EXIUnlock
/* 80355154  3B 80 FF FB */	li r28, -5
lbl_80355158:
/* 80355158  38 7F 00 00 */	addi r3, r31, 0
/* 8035515C  38 9C 00 00 */	addi r4, r28, 0
/* 80355160  48 00 1E BD */	bl __CARDMountCallback
lbl_80355164:
/* 80355164  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80355168  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 8035516C  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 80355170  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 80355174  83 81 00 78 */	lwz r28, 0x78(r1)
/* 80355178  38 21 00 88 */	addi r1, r1, 0x88
/* 8035517C  7C 08 03 A6 */	mtlr r0
/* 80355180  4E 80 00 20 */	blr 
