lbl_80236DE4:
/* 80236DE4  94 21 FB B0 */	stwu r1, -0x450(r1)
/* 80236DE8  7C 08 02 A6 */	mflr r0
/* 80236DEC  90 01 04 54 */	stw r0, 0x454(r1)
/* 80236DF0  39 61 04 50 */	addi r11, r1, 0x450
/* 80236DF4  48 12 B3 CD */	bl _savegpr_22
/* 80236DF8  7C 78 1B 78 */	mr r24, r3
/* 80236DFC  7C 99 23 78 */	mr r25, r4
/* 80236E00  7C BA 2B 78 */	mr r26, r5
/* 80236E04  7C DF 33 78 */	mr r31, r6
/* 80236E08  7C F6 3B 78 */	mr r22, r7
/* 80236E0C  7D 17 43 78 */	mr r23, r8
/* 80236E10  7D 3B 4B 78 */	mr r27, r9
/* 80236E14  7D 5C 53 78 */	mr r28, r10
/* 80236E18  83 A1 04 58 */	lwz r29, 0x458(r1)
/* 80236E1C  83 C1 04 5C */	lwz r30, 0x45c(r1)
/* 80236E20  88 03 04 CD */	lbz r0, 0x4cd(r3)
/* 80236E24  28 00 00 00 */	cmplwi r0, 0
/* 80236E28  40 82 01 28 */	bne lbl_80236F50
/* 80236E2C  4B FF FA CD */	bl getStatusLocal__12dMsgObject_cFv
/* 80236E30  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80236E34  28 00 00 01 */	cmplwi r0, 1
/* 80236E38  40 82 02 54 */	bne lbl_8023708C
/* 80236E3C  7F 03 C3 78 */	mr r3, r24
/* 80236E40  7F 24 CB 78 */	mr r4, r25
/* 80236E44  4B FF D2 F9 */	bl getMessageGroup__12dMsgObject_cFUl
/* 80236E48  48 00 12 7D */	bl changeGroup__12dMsgObject_cFs
/* 80236E4C  38 00 00 01 */	li r0, 1
/* 80236E50  80 78 01 1C */	lwz r3, 0x11c(r24)
/* 80236E54  98 03 00 AF */	stb r0, 0xaf(r3)
/* 80236E58  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236E5C  92 C3 05 C8 */	stw r22, 0x5c8(r3)
/* 80236E60  80 78 01 20 */	lwz r3, 0x120(r24)
/* 80236E64  92 E3 00 38 */	stw r23, 0x38(r3)
/* 80236E68  C0 02 B0 BC */	lfs f0, lit_4083(r2)
/* 80236E6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80236E70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80236E74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80236E78  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236E7C  38 81 00 08 */	addi r4, r1, 8
/* 80236E80  48 00 1D F9 */	bl setActorPos__19jmessage_tReferenceF4cXyz
/* 80236E84  C0 1A 01 1C */	lfs f0, 0x11c(r26)
/* 80236E88  C0 3A 01 20 */	lfs f1, 0x120(r26)
/* 80236E8C  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236E90  D0 03 04 20 */	stfs f0, 0x420(r3)
/* 80236E94  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236E98  D0 23 04 24 */	stfs f1, 0x424(r3)
/* 80236E9C  28 1F 00 00 */	cmplwi r31, 0
/* 80236EA0  41 82 00 14 */	beq lbl_80236EB4
/* 80236EA4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80236EA8  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236EAC  D0 03 04 28 */	stfs f0, 0x428(r3)
/* 80236EB0  48 00 00 10 */	b lbl_80236EC0
lbl_80236EB4:
/* 80236EB4  C0 02 B0 BC */	lfs f0, lit_4083(r2)
/* 80236EB8  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236EBC  D0 03 04 28 */	stfs f0, 0x428(r3)
lbl_80236EC0:
/* 80236EC0  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 80236EC4  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80236EC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80236ECC  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236ED0  D0 03 04 2C */	stfs f0, 0x42c(r3)
/* 80236ED4  C0 3A 00 2C */	lfs f1, 0x2c(r26)
/* 80236ED8  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 80236EDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80236EE0  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236EE4  D0 03 04 30 */	stfs f0, 0x430(r3)
/* 80236EE8  C0 1A 01 18 */	lfs f0, 0x118(r26)
/* 80236EEC  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236EF0  D0 03 04 34 */	stfs f0, 0x434(r3)
/* 80236EF4  C0 1A 01 14 */	lfs f0, 0x114(r26)
/* 80236EF8  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236EFC  D0 03 04 38 */	stfs f0, 0x438(r3)
/* 80236F00  28 1F 00 00 */	cmplwi r31, 0
/* 80236F04  41 82 00 14 */	beq lbl_80236F18
/* 80236F08  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80236F0C  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236F10  D0 03 04 3C */	stfs f0, 0x43c(r3)
/* 80236F14  48 00 00 10 */	b lbl_80236F24
lbl_80236F18:
/* 80236F18  C0 02 B0 BC */	lfs f0, lit_4083(r2)
/* 80236F1C  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236F20  D0 03 04 3C */	stfs f0, 0x43c(r3)
lbl_80236F24:
/* 80236F24  38 00 00 00 */	li r0, 0
/* 80236F28  80 78 01 20 */	lwz r3, 0x120(r24)
/* 80236F2C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80236F30  38 00 00 01 */	li r0, 1
/* 80236F34  98 18 04 CD */	stb r0, 0x4cd(r24)
/* 80236F38  80 78 01 14 */	lwz r3, 0x114(r24)
/* 80236F3C  7F 24 CB 78 */	mr r4, r25
/* 80236F40  38 A0 00 00 */	li r5, 0
/* 80236F44  38 C0 00 00 */	li r6, 0
/* 80236F48  48 07 09 AD */	bl setMessageID__Q28JMessage8TControlFUlUlPb
/* 80236F4C  48 00 01 40 */	b lbl_8023708C
lbl_80236F50:
/* 80236F50  80 98 01 20 */	lwz r4, 0x120(r24)
/* 80236F54  83 E4 00 04 */	lwz r31, 4(r4)
/* 80236F58  4B FF F9 A1 */	bl getStatusLocal__12dMsgObject_cFv
/* 80236F5C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80236F60  28 00 00 0B */	cmplwi r0, 0xb
/* 80236F64  40 82 01 28 */	bne lbl_8023708C
/* 80236F68  88 1F 12 4D */	lbz r0, 0x124d(r31)
/* 80236F6C  28 00 00 07 */	cmplwi r0, 7
/* 80236F70  41 82 00 0C */	beq lbl_80236F7C
/* 80236F74  28 00 00 01 */	cmplwi r0, 1
/* 80236F78  40 82 01 14 */	bne lbl_8023708C
lbl_80236F7C:
/* 80236F7C  80 78 01 14 */	lwz r3, 0x114(r24)
/* 80236F80  48 07 07 3D */	bl render__Q28JMessage8TControlFv
/* 80236F84  28 1E 00 00 */	cmplwi r30, 0
/* 80236F88  41 82 00 44 */	beq lbl_80236FCC
/* 80236F8C  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80236F90  38 A1 00 10 */	addi r5, r1, 0x10
/* 80236F94  38 83 00 08 */	addi r4, r3, 8
/* 80236F98  38 00 00 80 */	li r0, 0x80
/* 80236F9C  7C 09 03 A6 */	mtctr r0
lbl_80236FA0:
/* 80236FA0  80 64 00 04 */	lwz r3, 4(r4)
/* 80236FA4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80236FA8  90 65 00 04 */	stw r3, 4(r5)
/* 80236FAC  94 05 00 08 */	stwu r0, 8(r5)
/* 80236FB0  42 00 FF F0 */	bdnz lbl_80236FA0
/* 80236FB4  80 04 00 04 */	lwz r0, 4(r4)
/* 80236FB8  90 05 00 04 */	stw r0, 4(r5)
/* 80236FBC  A0 04 00 08 */	lhz r0, 8(r4)
/* 80236FC0  B0 05 00 08 */	sth r0, 8(r5)
/* 80236FC4  A8 01 04 16 */	lha r0, 0x416(r1)
/* 80236FC8  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80236FCC:
/* 80236FCC  28 1B 00 00 */	cmplwi r27, 0
/* 80236FD0  41 82 00 10 */	beq lbl_80236FE0
/* 80236FD4  7F 63 DB 78 */	mr r3, r27
/* 80236FD8  38 9F 0A 1C */	addi r4, r31, 0xa1c
/* 80236FDC  48 13 1B 51 */	bl strcpy
lbl_80236FE0:
/* 80236FE0  28 1C 00 00 */	cmplwi r28, 0
/* 80236FE4  41 82 00 10 */	beq lbl_80236FF4
/* 80236FE8  7F 83 E3 78 */	mr r3, r28
/* 80236FEC  38 9F 0E 1C */	addi r4, r31, 0xe1c
/* 80236FF0  48 13 1B 3D */	bl strcpy
lbl_80236FF4:
/* 80236FF4  28 1D 00 00 */	cmplwi r29, 0
/* 80236FF8  41 82 00 10 */	beq lbl_80237008
/* 80236FFC  7F A3 EB 78 */	mr r3, r29
/* 80237000  38 9F 0C 1C */	addi r4, r31, 0xc1c
/* 80237004  48 13 1B 29 */	bl strcpy
lbl_80237008:
/* 80237008  80 78 01 14 */	lwz r3, 0x114(r24)
/* 8023700C  48 07 05 C9 */	bl reset__Q28JMessage8TControlFv
/* 80237010  80 78 01 14 */	lwz r3, 0x114(r24)
/* 80237014  80 83 00 04 */	lwz r4, 4(r3)
/* 80237018  28 04 00 00 */	cmplwi r4, 0
/* 8023701C  41 82 00 0C */	beq lbl_80237028
/* 80237020  38 00 00 00 */	li r0, 0
/* 80237024  90 04 00 08 */	stw r0, 8(r4)
lbl_80237028:
/* 80237028  80 83 00 08 */	lwz r4, 8(r3)
/* 8023702C  28 04 00 00 */	cmplwi r4, 0
/* 80237030  41 82 00 0C */	beq lbl_8023703C
/* 80237034  38 00 00 00 */	li r0, 0
/* 80237038  90 04 00 08 */	stw r0, 8(r4)
lbl_8023703C:
/* 8023703C  38 00 00 00 */	li r0, 0
/* 80237040  90 03 00 10 */	stw r0, 0x10(r3)
/* 80237044  80 78 01 18 */	lwz r3, 0x118(r24)
/* 80237048  4B FF 27 C9 */	bl resetCharCountBuffer__19jmessage_tReferenceFv
/* 8023704C  80 8D 88 84 */	lwz r4, m_control__7dDemo_c(r13)
/* 80237050  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80237054  38 03 FF FF */	addi r0, r3, -1
/* 80237058  90 04 00 40 */	stw r0, 0x40(r4)
/* 8023705C  38 00 00 00 */	li r0, 0
/* 80237060  B0 18 01 7E */	sth r0, 0x17e(r24)
/* 80237064  7F 03 C3 78 */	mr r3, r24
/* 80237068  48 00 06 E1 */	bl updateEquipBombInfoLocal__12dMsgObject_cFv
/* 8023706C  38 00 00 00 */	li r0, 0
/* 80237070  98 18 04 CD */	stb r0, 0x4cd(r24)
/* 80237074  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 80237078  7F 03 C3 78 */	mr r3, r24
/* 8023707C  38 80 00 01 */	li r4, 1
/* 80237080  4B FF F8 65 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80237084  38 60 00 01 */	li r3, 1
/* 80237088  48 00 00 08 */	b lbl_80237090
lbl_8023708C:
/* 8023708C  38 60 00 00 */	li r3, 0
lbl_80237090:
/* 80237090  39 61 04 50 */	addi r11, r1, 0x450
/* 80237094  48 12 B1 79 */	bl _restgpr_22
/* 80237098  80 01 04 54 */	lwz r0, 0x454(r1)
/* 8023709C  7C 08 03 A6 */	mtlr r0
/* 802370A0  38 21 04 50 */	addi r1, r1, 0x450
/* 802370A4  4E 80 00 20 */	blr 
