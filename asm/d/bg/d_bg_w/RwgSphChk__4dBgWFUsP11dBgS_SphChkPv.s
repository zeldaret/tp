lbl_8007DB20:
/* 8007DB20  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8007DB24  7C 08 02 A6 */	mflr r0
/* 8007DB28  90 01 00 74 */	stw r0, 0x74(r1)
/* 8007DB2C  39 61 00 70 */	addi r11, r1, 0x70
/* 8007DB30  48 2E 46 95 */	bl _savegpr_23
/* 8007DB34  7C 78 1B 78 */	mr r24, r3
/* 8007DB38  7C B9 2B 78 */	mr r25, r5
/* 8007DB3C  7C DA 33 78 */	mr r26, r6
/* 8007DB40  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8007DB44  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8007DB48  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007DB4C  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha
/* 8007DB50  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l
/* 8007DB54  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007DB58  3B 60 00 00 */	li r27, 0
lbl_8007DB5C:
/* 8007DB5C  83 D8 00 98 */	lwz r30, 0x98(r24)
/* 8007DB60  54 9D 04 3E */	clrlwi r29, r4, 0x10
/* 8007DB64  54 9F 1B 78 */	rlwinm r31, r4, 3, 0xd, 0x1c
/* 8007DB68  7F 03 C3 78 */	mr r3, r24
/* 8007DB6C  7F A4 EB 78 */	mr r4, r29
/* 8007DB70  80 B9 00 24 */	lwz r5, 0x24(r25)
/* 8007DB74  81 98 00 04 */	lwz r12, 4(r24)
/* 8007DB78  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007DB7C  7D 89 03 A6 */	mtctr r12
/* 8007DB80  4E 80 04 21 */	bctrl 
/* 8007DB84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DB88  40 82 00 A4 */	bne lbl_8007DC2C
/* 8007DB8C  80 78 00 A0 */	lwz r3, 0xa0(r24)
/* 8007DB90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007DB94  1C 1D 00 0A */	mulli r0, r29, 0xa
/* 8007DB98  7F 83 02 14 */	add r28, r3, r0
/* 8007DB9C  80 D8 00 9C */	lwz r6, 0x9c(r24)
/* 8007DBA0  38 61 00 08 */	addi r3, r1, 8
/* 8007DBA4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007DBA8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007DBAC  7C 86 02 14 */	add r4, r6, r0
/* 8007DBB0  A0 1C 00 02 */	lhz r0, 2(r28)
/* 8007DBB4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007DBB8  7C A6 02 14 */	add r5, r6, r0
/* 8007DBBC  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007DBC0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007DBC4  7C C6 02 14 */	add r6, r6, r0
/* 8007DBC8  80 18 00 94 */	lwz r0, 0x94(r24)
/* 8007DBCC  1E FD 00 18 */	mulli r23, r29, 0x18
/* 8007DBD0  7C E0 BA 14 */	add r7, r0, r23
/* 8007DBD4  48 1F 1C 89 */	bl setBg__8cM3dGTriFPC3VecPC3VecPC3VecPC8cM3dGPla
/* 8007DBD8  7F 23 CB 78 */	mr r3, r25
/* 8007DBDC  38 81 00 08 */	addi r4, r1, 8
/* 8007DBE0  38 A0 00 00 */	li r5, 0
/* 8007DBE4  48 1E E3 21 */	bl cM3d_Cross_SphTri__FPC8cM3dGSphPC8cM3dGTriP3Vec
/* 8007DBE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007DBEC  41 82 00 40 */	beq lbl_8007DC2C
/* 8007DBF0  7F 23 CB 78 */	mr r3, r25
/* 8007DBF4  80 98 00 9C */	lwz r4, 0x9c(r24)
/* 8007DBF8  A0 BC 00 00 */	lhz r5, 0(r28)
/* 8007DBFC  A0 DC 00 02 */	lhz r6, 2(r28)
/* 8007DC00  A0 FC 00 04 */	lhz r7, 4(r28)
/* 8007DC04  80 18 00 94 */	lwz r0, 0x94(r24)
/* 8007DC08  7D 00 BA 14 */	add r8, r0, r23
/* 8007DC0C  7F 49 D3 78 */	mr r9, r26
/* 8007DC10  81 99 00 50 */	lwz r12, 0x50(r25)
/* 8007DC14  7D 89 03 A6 */	mtctr r12
/* 8007DC18  4E 80 04 21 */	bctrl 
/* 8007DC1C  38 79 00 14 */	addi r3, r25, 0x14
/* 8007DC20  7F A4 EB 78 */	mr r4, r29
/* 8007DC24  48 1E A5 81 */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 8007DC28  3B 60 00 01 */	li r27, 1
lbl_8007DC2C:
/* 8007DC2C  7C 9E FA 2E */	lhzx r4, r30, r31
/* 8007DC30  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007DC34  41 82 00 08 */	beq lbl_8007DC3C
/* 8007DC38  4B FF FF 24 */	b lbl_8007DB5C
lbl_8007DC3C:
/* 8007DC3C  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha
/* 8007DC40  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l
/* 8007DC44  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007DC48  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8007DC4C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8007DC50  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007DC54  7F 63 DB 78 */	mr r3, r27
/* 8007DC58  39 61 00 70 */	addi r11, r1, 0x70
/* 8007DC5C  48 2E 45 B5 */	bl _restgpr_23
/* 8007DC60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8007DC64  7C 08 03 A6 */	mtlr r0
/* 8007DC68  38 21 00 70 */	addi r1, r1, 0x70
/* 8007DC6C  4E 80 00 20 */	blr 
