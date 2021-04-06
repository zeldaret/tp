lbl_803575C8:
/* 803575C8  7C 08 02 A6 */	mflr r0
/* 803575CC  90 01 00 04 */	stw r0, 4(r1)
/* 803575D0  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 803575D4  BE 41 00 20 */	stmw r18, 0x20(r1)
/* 803575D8  3A 84 00 00 */	addi r20, r4, 0
/* 803575DC  3A C3 00 00 */	addi r22, r3, 0
/* 803575E0  3A 65 00 00 */	addi r19, r5, 0
/* 803575E4  38 81 00 18 */	addi r4, r1, 0x18
/* 803575E8  4B FF C5 CD */	bl __CARDGetControlBlock
/* 803575EC  2C 03 00 00 */	cmpwi r3, 0
/* 803575F0  40 80 00 08 */	bge lbl_803575F8
/* 803575F4  48 00 06 18 */	b lbl_80357C0C
lbl_803575F8:
/* 803575F8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803575FC  38 80 00 FF */	li r4, 0xff
/* 80357600  38 A0 20 00 */	li r5, 0x2000
/* 80357604  83 63 00 80 */	lwz r27, 0x80(r3)
/* 80357608  7F 63 DB 78 */	mr r3, r27
/* 8035760C  4B CA BE 4D */	bl memset
/* 80357610  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC00206E@ha */
/* 80357614  A2 43 20 6E */	lhz r18, 0x206E(r3)  /* 0xCC00206E@l */
/* 80357618  B2 9B 00 24 */	sth r20, 0x24(r27)
/* 8035761C  4B FE 8B 29 */	bl __OSLockSram
/* 80357620  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80357624  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80357628  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8035762C  38 60 00 00 */	li r3, 0
/* 80357630  90 1B 00 18 */	stw r0, 0x18(r27)
/* 80357634  4B FE 8F 05 */	bl __OSUnlockSram
/* 80357638  4B FE B0 C5 */	bl OSGetTime
/* 8035763C  3A A4 00 00 */	addi r21, r4, 0
/* 80357640  3A 83 00 00 */	addi r20, r3, 0
/* 80357644  3B 55 00 00 */	addi r26, r21, 0
/* 80357648  3B D4 00 00 */	addi r30, r20, 0
/* 8035764C  4B FE 8B 55 */	bl __OSLockSramEx
/* 80357650  1C 16 00 0C */	mulli r0, r22, 0xc
/* 80357654  7F 23 02 14 */	add r25, r3, r0
/* 80357658  3C 60 41 C6 */	lis r3, 0x41C6 /* 0x41C64E6D@ha */
/* 8035765C  3B 19 00 00 */	addi r24, r25, 0
/* 80357660  3B E3 4E 6D */	addi r31, r3, 0x4E6D /* 0x41C64E6D@l */
/* 80357664  3B 80 00 00 */	li r28, 0
/* 80357668  3A E0 00 04 */	li r23, 4
/* 8035766C  48 00 03 74 */	b lbl_803579E0
lbl_80357670:
/* 80357670  7C BE F9 D6 */	mullw r5, r30, r31
/* 80357674  7C 7A F8 16 */	mulhwu r3, r26, r31
/* 80357678  3B C0 00 00 */	li r30, 0
/* 8035767C  7C A5 1A 14 */	add r5, r5, r3
/* 80357680  7C 7A F1 D6 */	mullw r3, r26, r30
/* 80357684  7C 1A F9 D6 */	mullw r0, r26, r31
/* 80357688  3B A0 30 39 */	li r29, 0x3039
/* 8035768C  7C 80 E8 14 */	addc r4, r0, r29
/* 80357690  7C 05 1A 14 */	add r0, r5, r3
/* 80357694  7C 60 F1 14 */	adde r3, r0, r30
/* 80357698  38 A0 00 10 */	li r5, 0x10
/* 8035769C  48 00 AF F9 */	bl __shr2i
/* 803576A0  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803576A4  88 18 00 00 */	lbz r0, 0(r24)
/* 803576A8  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803576AC  7C C6 2A 14 */	add r6, r6, r5
/* 803576B0  7D 04 00 14 */	addc r8, r4, r0
/* 803576B4  7F 87 07 34 */	extsh r7, r28
/* 803576B8  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803576BC  7D 1B 39 AE */	stbx r8, r27, r7
/* 803576C0  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803576C4  7C 80 E8 14 */	addc r4, r0, r29
/* 803576C8  7C 06 2A 14 */	add r0, r6, r5
/* 803576CC  7C 60 F1 14 */	adde r3, r0, r30
/* 803576D0  38 A0 00 10 */	li r5, 0x10
/* 803576D4  48 00 AF C1 */	bl __shr2i
/* 803576D8  3B 40 7F FF */	li r26, 0x7fff
/* 803576DC  7C 60 F0 38 */	and r0, r3, r30
/* 803576E0  7C 84 D0 38 */	and r4, r4, r26
/* 803576E4  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803576E8  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803576EC  7C A5 1A 14 */	add r5, r5, r3
/* 803576F0  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803576F4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803576F8  7C 80 E8 14 */	addc r4, r0, r29
/* 803576FC  7C 05 1A 14 */	add r0, r5, r3
/* 80357700  7C 60 F1 14 */	adde r3, r0, r30
/* 80357704  38 A0 00 10 */	li r5, 0x10
/* 80357708  48 00 AF 8D */	bl __shr2i
/* 8035770C  7C C3 F9 D6 */	mullw r6, r3, r31
/* 80357710  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 80357714  39 3C 00 01 */	addi r9, r28, 1
/* 80357718  7D 29 07 34 */	extsh r9, r9
/* 8035771C  7C 19 48 AE */	lbzx r0, r25, r9
/* 80357720  7C C6 2A 14 */	add r6, r6, r5
/* 80357724  7C A4 F1 D6 */	mullw r5, r4, r30
/* 80357728  7C E4 00 14 */	addc r7, r4, r0
/* 8035772C  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357730  7C FB 49 AE */	stbx r7, r27, r9
/* 80357734  7C 80 E8 14 */	addc r4, r0, r29
/* 80357738  7C 06 2A 14 */	add r0, r6, r5
/* 8035773C  7C 60 F1 14 */	adde r3, r0, r30
/* 80357740  38 A0 00 10 */	li r5, 0x10
/* 80357744  48 00 AF 51 */	bl __shr2i
/* 80357748  7C 60 F0 38 */	and r0, r3, r30
/* 8035774C  7C 84 D0 38 */	and r4, r4, r26
/* 80357750  7C A0 F9 D6 */	mullw r5, r0, r31
/* 80357754  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 80357758  7C A5 1A 14 */	add r5, r5, r3
/* 8035775C  7C 64 F1 D6 */	mullw r3, r4, r30
/* 80357760  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357764  7C 80 E8 14 */	addc r4, r0, r29
/* 80357768  7C 05 1A 14 */	add r0, r5, r3
/* 8035776C  7C 60 F1 14 */	adde r3, r0, r30
/* 80357770  38 A0 00 10 */	li r5, 0x10
/* 80357774  48 00 AF 21 */	bl __shr2i
/* 80357778  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8035777C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 80357780  39 3C 00 02 */	addi r9, r28, 2
/* 80357784  7D 29 07 34 */	extsh r9, r9
/* 80357788  7C 19 48 AE */	lbzx r0, r25, r9
/* 8035778C  7C C6 2A 14 */	add r6, r6, r5
/* 80357790  7C A4 F1 D6 */	mullw r5, r4, r30
/* 80357794  7C E4 00 14 */	addc r7, r4, r0
/* 80357798  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8035779C  7C FB 49 AE */	stbx r7, r27, r9
/* 803577A0  7C 80 E8 14 */	addc r4, r0, r29
/* 803577A4  7C 06 2A 14 */	add r0, r6, r5
/* 803577A8  7C 60 F1 14 */	adde r3, r0, r30
/* 803577AC  38 A0 00 10 */	li r5, 0x10
/* 803577B0  48 00 AE E5 */	bl __shr2i
/* 803577B4  7C 60 F0 38 */	and r0, r3, r30
/* 803577B8  7C 84 D0 38 */	and r4, r4, r26
/* 803577BC  7C A0 F9 D6 */	mullw r5, r0, r31
/* 803577C0  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 803577C4  7C A5 1A 14 */	add r5, r5, r3
/* 803577C8  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803577CC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803577D0  7C 80 E8 14 */	addc r4, r0, r29
/* 803577D4  7C 05 1A 14 */	add r0, r5, r3
/* 803577D8  7C 60 F1 14 */	adde r3, r0, r30
/* 803577DC  38 A0 00 10 */	li r5, 0x10
/* 803577E0  48 00 AE B5 */	bl __shr2i
/* 803577E4  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803577E8  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803577EC  39 3C 00 03 */	addi r9, r28, 3
/* 803577F0  7D 29 07 34 */	extsh r9, r9
/* 803577F4  7C 19 48 AE */	lbzx r0, r25, r9
/* 803577F8  7C C6 2A 14 */	add r6, r6, r5
/* 803577FC  7C A4 F1 D6 */	mullw r5, r4, r30
/* 80357800  7C E4 00 14 */	addc r7, r4, r0
/* 80357804  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357808  7C FB 49 AE */	stbx r7, r27, r9
/* 8035780C  7C 80 E8 14 */	addc r4, r0, r29
/* 80357810  7C 06 2A 14 */	add r0, r6, r5
/* 80357814  7C 60 F1 14 */	adde r3, r0, r30
/* 80357818  38 A0 00 10 */	li r5, 0x10
/* 8035781C  48 00 AE 79 */	bl __shr2i
/* 80357820  7C 60 F0 38 */	and r0, r3, r30
/* 80357824  7C 84 D0 38 */	and r4, r4, r26
/* 80357828  7C A0 F9 D6 */	mullw r5, r0, r31
/* 8035782C  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 80357830  7C A5 1A 14 */	add r5, r5, r3
/* 80357834  7C 64 F1 D6 */	mullw r3, r4, r30
/* 80357838  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8035783C  7C 80 E8 14 */	addc r4, r0, r29
/* 80357840  7C 05 1A 14 */	add r0, r5, r3
/* 80357844  7C 60 F1 14 */	adde r3, r0, r30
/* 80357848  38 A0 00 10 */	li r5, 0x10
/* 8035784C  48 00 AE 49 */	bl __shr2i
/* 80357850  7C C3 F9 D6 */	mullw r6, r3, r31
/* 80357854  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 80357858  39 3C 00 04 */	addi r9, r28, 4
/* 8035785C  7D 29 07 34 */	extsh r9, r9
/* 80357860  7C 19 48 AE */	lbzx r0, r25, r9
/* 80357864  7C C6 2A 14 */	add r6, r6, r5
/* 80357868  7C A4 F1 D6 */	mullw r5, r4, r30
/* 8035786C  7C E4 00 14 */	addc r7, r4, r0
/* 80357870  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357874  7C FB 49 AE */	stbx r7, r27, r9
/* 80357878  7C 80 E8 14 */	addc r4, r0, r29
/* 8035787C  7C 06 2A 14 */	add r0, r6, r5
/* 80357880  7C 60 F1 14 */	adde r3, r0, r30
/* 80357884  38 A0 00 10 */	li r5, 0x10
/* 80357888  48 00 AE 0D */	bl __shr2i
/* 8035788C  7C 60 F0 38 */	and r0, r3, r30
/* 80357890  7C 84 D0 38 */	and r4, r4, r26
/* 80357894  7C A0 F9 D6 */	mullw r5, r0, r31
/* 80357898  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 8035789C  7C A5 1A 14 */	add r5, r5, r3
/* 803578A0  7C 64 F1 D6 */	mullw r3, r4, r30
/* 803578A4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803578A8  7C 80 E8 14 */	addc r4, r0, r29
/* 803578AC  7C 05 1A 14 */	add r0, r5, r3
/* 803578B0  7C 60 F1 14 */	adde r3, r0, r30
/* 803578B4  38 A0 00 10 */	li r5, 0x10
/* 803578B8  48 00 AD DD */	bl __shr2i
/* 803578BC  7C C3 F9 D6 */	mullw r6, r3, r31
/* 803578C0  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 803578C4  39 3C 00 05 */	addi r9, r28, 5
/* 803578C8  7D 29 07 34 */	extsh r9, r9
/* 803578CC  7C 19 48 AE */	lbzx r0, r25, r9
/* 803578D0  7C C6 2A 14 */	add r6, r6, r5
/* 803578D4  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803578D8  7C E4 00 14 */	addc r7, r4, r0
/* 803578DC  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803578E0  7C FB 49 AE */	stbx r7, r27, r9
/* 803578E4  7C 80 E8 14 */	addc r4, r0, r29
/* 803578E8  7C 06 2A 14 */	add r0, r6, r5
/* 803578EC  7C 60 F1 14 */	adde r3, r0, r30
/* 803578F0  38 A0 00 10 */	li r5, 0x10
/* 803578F4  48 00 AD A1 */	bl __shr2i
/* 803578F8  7C 60 F0 38 */	and r0, r3, r30
/* 803578FC  7C 84 D0 38 */	and r4, r4, r26
/* 80357900  7C A0 F9 D6 */	mullw r5, r0, r31
/* 80357904  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 80357908  7C A5 1A 14 */	add r5, r5, r3
/* 8035790C  7C 64 F1 D6 */	mullw r3, r4, r30
/* 80357910  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357914  7C 80 E8 14 */	addc r4, r0, r29
/* 80357918  7C 05 1A 14 */	add r0, r5, r3
/* 8035791C  7C 60 F1 14 */	adde r3, r0, r30
/* 80357920  38 A0 00 10 */	li r5, 0x10
/* 80357924  48 00 AD 71 */	bl __shr2i
/* 80357928  7C C3 F9 D6 */	mullw r6, r3, r31
/* 8035792C  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 80357930  39 3C 00 06 */	addi r9, r28, 6
/* 80357934  7D 29 07 34 */	extsh r9, r9
/* 80357938  7C 19 48 AE */	lbzx r0, r25, r9
/* 8035793C  7C C6 2A 14 */	add r6, r6, r5
/* 80357940  7C A4 F1 D6 */	mullw r5, r4, r30
/* 80357944  7C E4 00 14 */	addc r7, r4, r0
/* 80357948  7C 04 F9 D6 */	mullw r0, r4, r31
/* 8035794C  7C FB 49 AE */	stbx r7, r27, r9
/* 80357950  7C 80 E8 14 */	addc r4, r0, r29
/* 80357954  7C 06 2A 14 */	add r0, r6, r5
/* 80357958  7C 60 F1 14 */	adde r3, r0, r30
/* 8035795C  38 A0 00 10 */	li r5, 0x10
/* 80357960  48 00 AD 35 */	bl __shr2i
/* 80357964  7C 60 F0 38 */	and r0, r3, r30
/* 80357968  7C 84 D0 38 */	and r4, r4, r26
/* 8035796C  7C A0 F9 D6 */	mullw r5, r0, r31
/* 80357970  7C 64 F8 16 */	mulhwu r3, r4, r31
/* 80357974  7C A5 1A 14 */	add r5, r5, r3
/* 80357978  7C 64 F1 D6 */	mullw r3, r4, r30
/* 8035797C  7C 04 F9 D6 */	mullw r0, r4, r31
/* 80357980  7C 80 E8 14 */	addc r4, r0, r29
/* 80357984  7C 05 1A 14 */	add r0, r5, r3
/* 80357988  7C 60 F1 14 */	adde r3, r0, r30
/* 8035798C  38 A0 00 10 */	li r5, 0x10
/* 80357990  48 00 AD 05 */	bl __shr2i
/* 80357994  7C C3 F9 D6 */	mullw r6, r3, r31
/* 80357998  7C A4 F8 16 */	mulhwu r5, r4, r31
/* 8035799C  39 3C 00 07 */	addi r9, r28, 7
/* 803579A0  7D 29 07 34 */	extsh r9, r9
/* 803579A4  7C 19 48 AE */	lbzx r0, r25, r9
/* 803579A8  7C C6 2A 14 */	add r6, r6, r5
/* 803579AC  7C A4 F1 D6 */	mullw r5, r4, r30
/* 803579B0  7C E4 00 14 */	addc r7, r4, r0
/* 803579B4  7C 04 F9 D6 */	mullw r0, r4, r31
/* 803579B8  7C FB 49 AE */	stbx r7, r27, r9
/* 803579BC  7C 80 E8 14 */	addc r4, r0, r29
/* 803579C0  7C 06 2A 14 */	add r0, r6, r5
/* 803579C4  7C 60 F1 14 */	adde r3, r0, r30
/* 803579C8  38 A0 00 10 */	li r5, 0x10
/* 803579CC  48 00 AC C9 */	bl __shr2i
/* 803579D0  7C 9A D0 38 */	and r26, r4, r26
/* 803579D4  7C 7E F0 38 */	and r30, r3, r30
/* 803579D8  3B 18 00 08 */	addi r24, r24, 8
/* 803579DC  3B 9C 00 08 */	addi r28, r28, 8
lbl_803579E0:
/* 803579E0  7F 80 07 34 */	extsh r0, r28
/* 803579E4  7C 00 B8 00 */	cmpw r0, r23
/* 803579E8  41 80 FC 88 */	blt lbl_80357670
/* 803579EC  48 00 02 18 */	b lbl_80357C04
lbl_803579F0:
/* 803579F0  3C 60 41 C6 */	lis r3, 0x41C6 /* 0x41C64E6D@ha */
/* 803579F4  3B 23 4E 6D */	addi r25, r3, 0x4E6D /* 0x41C64E6D@l */
/* 803579F8  48 00 00 80 */	b lbl_80357A78
lbl_803579FC:
/* 803579FC  7C BE C9 D6 */	mullw r5, r30, r25
/* 80357A00  7C 7A C8 16 */	mulhwu r3, r26, r25
/* 80357A04  3B 00 00 00 */	li r24, 0
/* 80357A08  7C A5 1A 14 */	add r5, r5, r3
/* 80357A0C  7C 7A C1 D6 */	mullw r3, r26, r24
/* 80357A10  7C 1A C9 D6 */	mullw r0, r26, r25
/* 80357A14  3A E0 30 39 */	li r23, 0x3039
/* 80357A18  7C 80 B8 14 */	addc r4, r0, r23
/* 80357A1C  7C 05 1A 14 */	add r0, r5, r3
/* 80357A20  7C 60 C1 14 */	adde r3, r0, r24
/* 80357A24  38 A0 00 10 */	li r5, 0x10
/* 80357A28  48 00 AC 6D */	bl __shr2i
/* 80357A2C  7C C3 C9 D6 */	mullw r6, r3, r25
/* 80357A30  88 1D 00 00 */	lbz r0, 0(r29)
/* 80357A34  7C A4 C8 16 */	mulhwu r5, r4, r25
/* 80357A38  7C C6 2A 14 */	add r6, r6, r5
/* 80357A3C  7D 04 00 14 */	addc r8, r4, r0
/* 80357A40  7F 87 07 34 */	extsh r7, r28
/* 80357A44  7C A4 C1 D6 */	mullw r5, r4, r24
/* 80357A48  7D 1B 39 AE */	stbx r8, r27, r7
/* 80357A4C  7C 04 C9 D6 */	mullw r0, r4, r25
/* 80357A50  7C 80 B8 14 */	addc r4, r0, r23
/* 80357A54  7C 06 2A 14 */	add r0, r6, r5
/* 80357A58  7C 60 C1 14 */	adde r3, r0, r24
/* 80357A5C  38 A0 00 10 */	li r5, 0x10
/* 80357A60  48 00 AC 35 */	bl __shr2i
/* 80357A64  38 00 7F FF */	li r0, 0x7fff
/* 80357A68  7C 9A 00 38 */	and r26, r4, r0
/* 80357A6C  7C 7E C0 38 */	and r30, r3, r24
/* 80357A70  3B BD 00 01 */	addi r29, r29, 1
/* 80357A74  3B 9C 00 01 */	addi r28, r28, 1
lbl_80357A78:
/* 80357A78  7F 80 07 34 */	extsh r0, r28
/* 80357A7C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80357A80  41 80 FF 7C */	blt lbl_803579FC
/* 80357A84  38 60 00 00 */	li r3, 0
/* 80357A88  4B FE 8A D5 */	bl __OSUnlockSramEx
/* 80357A8C  92 5B 00 1C */	stw r18, 0x1c(r27)
/* 80357A90  3A 40 00 00 */	li r18, 0
/* 80357A94  38 7B 00 00 */	addi r3, r27, 0
/* 80357A98  92 BB 00 10 */	stw r21, 0x10(r27)
/* 80357A9C  38 BB 01 FC */	addi r5, r27, 0x1fc
/* 80357AA0  38 DB 01 FE */	addi r6, r27, 0x1fe
/* 80357AA4  92 9B 00 0C */	stw r20, 0xc(r27)
/* 80357AA8  38 80 01 FC */	li r4, 0x1fc
/* 80357AAC  B2 5B 00 20 */	sth r18, 0x20(r27)
/* 80357AB0  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 80357AB4  A0 07 00 08 */	lhz r0, 8(r7)
/* 80357AB8  B0 1B 00 22 */	sth r0, 0x22(r27)
/* 80357ABC  4B FF DF 25 */	bl __CARDCheckSum
/* 80357AC0  48 00 00 4C */	b lbl_80357B0C
lbl_80357AC4:
/* 80357AC4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80357AC8  7E 43 07 34 */	extsh r3, r18
/* 80357ACC  38 03 00 01 */	addi r0, r3, 1
/* 80357AD0  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80357AD4  54 00 68 24 */	slwi r0, r0, 0xd
/* 80357AD8  38 80 00 FF */	li r4, 0xff
/* 80357ADC  7E 83 02 14 */	add r20, r3, r0
/* 80357AE0  38 74 00 00 */	addi r3, r20, 0
/* 80357AE4  38 A0 20 00 */	li r5, 0x2000
/* 80357AE8  4B CA B9 71 */	bl memset
/* 80357AEC  38 94 1F C0 */	addi r4, r20, 0x1fc0
/* 80357AF0  B2 54 1F FA */	sth r18, 0x1ffa(r20)
/* 80357AF4  38 74 00 00 */	addi r3, r20, 0
/* 80357AF8  38 A4 00 3C */	addi r5, r4, 0x3c
/* 80357AFC  38 C4 00 3E */	addi r6, r4, 0x3e
/* 80357B00  38 80 1F FC */	li r4, 0x1ffc
/* 80357B04  4B FF DE DD */	bl __CARDCheckSum
/* 80357B08  3A 52 00 01 */	addi r18, r18, 1
lbl_80357B0C:
/* 80357B0C  7E 40 07 34 */	extsh r0, r18
/* 80357B10  2C 00 00 02 */	cmpwi r0, 2
/* 80357B14  41 80 FF B0 */	blt lbl_80357AC4
/* 80357B18  3A 40 00 00 */	li r18, 0
/* 80357B1C  48 00 00 60 */	b lbl_80357B7C
lbl_80357B20:
/* 80357B20  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80357B24  7E 43 07 34 */	extsh r3, r18
/* 80357B28  38 03 00 03 */	addi r0, r3, 3
/* 80357B2C  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80357B30  54 00 68 24 */	slwi r0, r0, 0xd
/* 80357B34  38 80 00 00 */	li r4, 0
/* 80357B38  7E 83 02 14 */	add r20, r3, r0
/* 80357B3C  38 74 00 00 */	addi r3, r20, 0
/* 80357B40  38 A0 20 00 */	li r5, 0x2000
/* 80357B44  4B CA B9 15 */	bl memset
/* 80357B48  B2 54 00 04 */	sth r18, 4(r20)
/* 80357B4C  38 00 00 04 */	li r0, 4
/* 80357B50  38 B4 00 00 */	addi r5, r20, 0
/* 80357B54  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80357B58  38 74 00 04 */	addi r3, r20, 4
/* 80357B5C  38 D4 00 02 */	addi r6, r20, 2
/* 80357B60  A0 E4 00 10 */	lhz r7, 0x10(r4)
/* 80357B64  38 80 1F FC */	li r4, 0x1ffc
/* 80357B68  38 E7 FF FB */	addi r7, r7, -5
/* 80357B6C  B0 F4 00 06 */	sth r7, 6(r20)
/* 80357B70  B0 14 00 08 */	sth r0, 8(r20)
/* 80357B74  4B FF DE 6D */	bl __CARDCheckSum
/* 80357B78  3A 52 00 01 */	addi r18, r18, 1
lbl_80357B7C:
/* 80357B7C  7E 40 07 34 */	extsh r0, r18
/* 80357B80  2C 00 00 02 */	cmpwi r0, 2
/* 80357B84  41 80 FF 9C */	blt lbl_80357B20
/* 80357B88  28 13 00 00 */	cmplwi r19, 0
/* 80357B8C  41 82 00 0C */	beq lbl_80357B98
/* 80357B90  7E 60 9B 78 */	mr r0, r19
/* 80357B94  48 00 00 0C */	b lbl_80357BA0
lbl_80357B98:
/* 80357B98  3C 60 80 35 */	lis r3, __CARDDefaultApiCallback@ha /* 0x80352A30@ha */
/* 80357B9C  38 03 2A 30 */	addi r0, r3, __CARDDefaultApiCallback@l /* 0x80352A30@l */
lbl_80357BA0:
/* 80357BA0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80357BA4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A000@ha */
/* 80357BA8  38 83 A0 00 */	addi r4, r3, 0xA000 /* 0x0000A000@l */
/* 80357BAC  90 05 00 D0 */	stw r0, 0xd0(r5)
/* 80357BB0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80357BB4  80 63 00 80 */	lwz r3, 0x80(r3)
/* 80357BB8  4B FE 3A 25 */	bl DCStoreRange
/* 80357BBC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80357BC0  38 00 00 00 */	li r0, 0
/* 80357BC4  3C 60 80 35 */	lis r3, FormatCallback@ha /* 0x80357484@ha */
/* 80357BC8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80357BCC  38 A3 74 84 */	addi r5, r3, FormatCallback@l /* 0x80357484@l */
/* 80357BD0  38 76 00 00 */	addi r3, r22, 0
/* 80357BD4  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80357BD8  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80357BDC  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80357BE0  7C 84 01 D6 */	mullw r4, r4, r0
/* 80357BE4  4B FF BD D5 */	bl __CARDEraseSector
/* 80357BE8  7C 72 1B 79 */	or. r18, r3, r3
/* 80357BEC  40 80 00 10 */	bge lbl_80357BFC
/* 80357BF0  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80357BF4  7E 44 93 78 */	mr r4, r18
/* 80357BF8  4B FF C0 75 */	bl __CARDPutControlBlock
lbl_80357BFC:
/* 80357BFC  7E 43 93 78 */	mr r3, r18
/* 80357C00  48 00 00 0C */	b lbl_80357C0C
lbl_80357C04:
/* 80357C04  7F B9 02 14 */	add r29, r25, r0
/* 80357C08  4B FF FD E8 */	b lbl_803579F0
lbl_80357C0C:
/* 80357C0C  BA 41 00 20 */	lmw r18, 0x20(r1)
/* 80357C10  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80357C14  38 21 00 58 */	addi r1, r1, 0x58
/* 80357C18  7C 08 03 A6 */	mtlr r0
/* 80357C1C  4E 80 00 20 */	blr 
