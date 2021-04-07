lbl_80353524:
/* 80353524  7C 08 02 A6 */	mflr r0
/* 80353528  90 01 00 04 */	stw r0, 4(r1)
/* 8035352C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80353530  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80353534  3B 63 00 00 */	addi r27, r3, 0
/* 80353538  3B 84 00 00 */	addi r28, r4, 0
/* 8035353C  3B A5 00 00 */	addi r29, r5, 0
/* 80353540  4B FE A1 B5 */	bl OSDisableInterrupts
/* 80353544  1C BB 01 10 */	mulli r5, r27, 0x110
/* 80353548  3C 80 80 45 */	lis r4, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 8035354C  38 04 CB C0 */	addi r0, r4, __CARDBlock@l /* 0x8044CBC0@l */
/* 80353550  7F E0 2A 14 */	add r31, r0, r5
/* 80353554  80 1F 00 00 */	lwz r0, 0(r31)
/* 80353558  3B C3 00 00 */	addi r30, r3, 0
/* 8035355C  2C 00 00 00 */	cmpwi r0, 0
/* 80353560  40 82 00 0C */	bne lbl_8035356C
/* 80353564  3B A0 FF FD */	li r29, -3
/* 80353568  48 00 01 C0 */	b lbl_80353728
lbl_8035356C:
/* 8035356C  28 1C 00 00 */	cmplwi r28, 0
/* 80353570  41 82 00 08 */	beq lbl_80353578
/* 80353574  93 9F 00 C8 */	stw r28, 0xc8(r31)
lbl_80353578:
/* 80353578  28 1D 00 00 */	cmplwi r29, 0
/* 8035357C  41 82 00 08 */	beq lbl_80353584
/* 80353580  93 BF 00 CC */	stw r29, 0xcc(r31)
lbl_80353584:
/* 80353584  3C 60 80 35 */	lis r3, UnlockedCallback@ha /* 0x80353414@ha */
/* 80353588  38 03 34 14 */	addi r0, r3, UnlockedCallback@l /* 0x80353414@l */
/* 8035358C  3C 60 80 35 */	lis r3, __CARDUnlockedHandler@ha /* 0x80352D00@ha */
/* 80353590  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80353594  38 A3 2D 00 */	addi r5, r3, __CARDUnlockedHandler@l /* 0x80352D00@l */
/* 80353598  38 7B 00 00 */	addi r3, r27, 0
/* 8035359C  38 80 00 00 */	li r4, 0
/* 803535A0  4B FF 0A 89 */	bl EXILock
/* 803535A4  2C 03 00 00 */	cmpwi r3, 0
/* 803535A8  40 82 00 0C */	bne lbl_803535B4
/* 803535AC  3B A0 FF FF */	li r29, -1
/* 803535B0  48 00 01 78 */	b lbl_80353728
lbl_803535B4:
/* 803535B4  3B A0 00 00 */	li r29, 0
/* 803535B8  93 BF 00 DC */	stw r29, 0xdc(r31)
/* 803535BC  38 7B 00 00 */	addi r3, r27, 0
/* 803535C0  38 80 00 00 */	li r4, 0
/* 803535C4  38 A0 00 04 */	li r5, 4
/* 803535C8  4B FF 02 A1 */	bl EXISelect
/* 803535CC  2C 03 00 00 */	cmpwi r3, 0
/* 803535D0  40 82 00 14 */	bne lbl_803535E4
/* 803535D4  7F 63 DB 78 */	mr r3, r27
/* 803535D8  4B FF 0B 45 */	bl EXIUnlock
/* 803535DC  3B A0 FF FD */	li r29, -3
/* 803535E0  48 00 01 48 */	b lbl_80353728
lbl_803535E4:
/* 803535E4  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 803535E8  4B FE 76 55 */	bl OSCancelAlarm
/* 803535EC  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 803535F0  2C 00 00 F3 */	cmpwi r0, 0xf3
/* 803535F4  41 82 01 30 */	beq lbl_80353724
/* 803535F8  40 80 00 14 */	bge lbl_8035360C
/* 803535FC  2C 00 00 F1 */	cmpwi r0, 0xf1
/* 80353600  41 82 00 C0 */	beq lbl_803536C0
/* 80353604  40 80 00 14 */	bge lbl_80353618
/* 80353608  48 00 01 1C */	b lbl_80353724
lbl_8035360C:
/* 8035360C  2C 00 00 F5 */	cmpwi r0, 0xf5
/* 80353610  40 80 01 14 */	bge lbl_80353724
/* 80353614  48 00 00 3C */	b lbl_80353650
lbl_80353618:
/* 80353618  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8035361C  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80353620  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 80353624  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 80353628  54 00 F0 BE */	srwi r0, r0, 2
/* 8035362C  38 84 4D D3 */	addi r4, r4, 0x4DD3 /* 0x10624DD3@l */
/* 80353630  7C 04 00 16 */	mulhwu r0, r4, r0
/* 80353634  54 00 D1 BE */	srwi r0, r0, 6
/* 80353638  1C C0 00 64 */	mulli r6, r0, 0x64
/* 8035363C  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 80353640  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80353644  38 A0 00 00 */	li r5, 0
/* 80353648  4B FE 75 11 */	bl OSSetAlarm
/* 8035364C  48 00 00 D8 */	b lbl_80353724
lbl_80353650:
/* 80353650  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80353654  28 00 00 80 */	cmplwi r0, 0x80
/* 80353658  40 81 00 68 */	ble lbl_803536C0
/* 8035365C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80353660  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 80353664  80 63 00 F8 */	lwz r3, 0x00F8(r3)  /* 0x800000F8@l */
/* 80353668  38 00 00 02 */	li r0, 2
/* 8035366C  7C 89 36 70 */	srawi r9, r4, 6
/* 80353670  54 63 F0 BE */	srwi r3, r3, 2
/* 80353674  7D 1D 01 D6 */	mullw r8, r29, r0
/* 80353678  7C C3 00 16 */	mulhwu r6, r3, r0
/* 8035367C  7D 08 32 14 */	add r8, r8, r6
/* 80353680  7C A3 01 D6 */	mullw r5, r3, r0
/* 80353684  7D 29 01 94 */	addze r9, r9
/* 80353688  7D 20 FE 70 */	srawi r0, r9, 0x1f
/* 8035368C  7C C3 E9 D6 */	mullw r6, r3, r29
/* 80353690  7C 80 29 D6 */	mullw r4, r0, r5
/* 80353694  7C 09 28 16 */	mulhwu r0, r9, r5
/* 80353698  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 8035369C  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 803536A0  7C 68 32 14 */	add r3, r8, r6
/* 803536A4  7C 84 02 14 */	add r4, r4, r0
/* 803536A8  7C 09 19 D6 */	mullw r0, r9, r3
/* 803536AC  7C C9 29 D6 */	mullw r6, r9, r5
/* 803536B0  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 803536B4  7C A4 02 14 */	add r5, r4, r0
/* 803536B8  4B FE 74 A1 */	bl OSSetAlarm
/* 803536BC  48 00 00 68 */	b lbl_80353724
lbl_803536C0:
/* 803536C0  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 803536C4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803536C8  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 803536CC  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 803536D0  7C 89 6E 70 */	srawi r9, r4, 0xd
/* 803536D4  54 07 F0 BE */	srwi r7, r0, 2
/* 803536D8  38 00 00 02 */	li r0, 2
/* 803536DC  38 80 00 00 */	li r4, 0
/* 803536E0  7D 04 01 D6 */	mullw r8, r4, r0
/* 803536E4  7C C7 00 16 */	mulhwu r6, r7, r0
/* 803536E8  7D 08 32 14 */	add r8, r8, r6
/* 803536EC  7C A7 01 D6 */	mullw r5, r7, r0
/* 803536F0  7D 29 01 94 */	addze r9, r9
/* 803536F4  7C C7 21 D6 */	mullw r6, r7, r4
/* 803536F8  7D 20 FE 70 */	srawi r0, r9, 0x1f
/* 803536FC  7C 80 29 D6 */	mullw r4, r0, r5
/* 80353700  7C 09 28 16 */	mulhwu r0, r9, r5
/* 80353704  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 80353708  7C 68 32 14 */	add r3, r8, r6
/* 8035370C  7C 84 02 14 */	add r4, r4, r0
/* 80353710  7C 09 19 D6 */	mullw r0, r9, r3
/* 80353714  7C C9 29 D6 */	mullw r6, r9, r5
/* 80353718  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8035371C  7C A4 02 14 */	add r5, r4, r0
/* 80353720  4B FE 74 39 */	bl OSSetAlarm
lbl_80353724:
/* 80353724  3B A0 00 00 */	li r29, 0
lbl_80353728:
/* 80353728  7F C3 F3 78 */	mr r3, r30
/* 8035372C  4B FE 9F F1 */	bl OSRestoreInterrupts
/* 80353730  7F A3 EB 78 */	mr r3, r29
/* 80353734  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80353738  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035373C  38 21 00 30 */	addi r1, r1, 0x30
/* 80353740  7C 08 03 A6 */	mtlr r0
/* 80353744  4E 80 00 20 */	blr 
