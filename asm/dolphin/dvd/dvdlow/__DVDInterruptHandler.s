lbl_803476B4:
/* 803476B4  7C 08 02 A6 */	mflr r0
/* 803476B8  3C 60 80 45 */	lis r3, CommandList@ha /* 0x8044C830@ha */
/* 803476BC  90 01 00 04 */	stw r0, 4(r1)
/* 803476C0  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 803476C4  BF 61 02 DC */	stmw r27, 0x2dc(r1)
/* 803476C8  3B 84 00 00 */	addi r28, r4, 0
/* 803476CC  3B C3 C8 30 */	addi r30, r3, CommandList@l /* 0x8044C830@l */
/* 803476D0  3B A0 00 00 */	li r29, 0
/* 803476D4  80 0D 91 D0 */	lwz r0, LastCommandWasRead(r13)
/* 803476D8  2C 00 00 00 */	cmpwi r0, 0
/* 803476DC  41 82 00 40 */	beq lbl_8034771C
/* 803476E0  4B FF B0 3D */	bl __OSGetSystemTime
/* 803476E4  90 8D 91 C4 */	stw r4, data_80451744(r13)
/* 803476E8  38 00 00 00 */	li r0, 0
/* 803476EC  90 6D 91 C0 */	stw r3, LastReadFinished(r13)
/* 803476F0  90 0D 84 58 */	stw r0, FirstRead(r13)
/* 803476F4  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 803476F8  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 803476FC  80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 80347700  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80347704  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80347708  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 8034770C  80 0D 91 90 */	lwz r0, StopAtNextInt(r13)
/* 80347710  2C 00 00 01 */	cmpwi r0, 1
/* 80347714  40 82 00 08 */	bne lbl_8034771C
/* 80347718  63 BD 00 08 */	ori r29, r29, 8
lbl_8034771C:
/* 8034771C  38 00 00 00 */	li r0, 0
/* 80347720  90 0D 91 D0 */	stw r0, LastCommandWasRead(r13)
/* 80347724  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 80347728  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 8034772C  80 03 60 00 */	lwz r0, 0x6000(r3)  /* 0xCC006000@l */
/* 80347730  70 1F 00 2A */	andi. r31, r0, 0x2a
/* 80347734  70 03 00 54 */	andi. r3, r0, 0x54
/* 80347738  57 E0 08 3C */	slwi r0, r31, 1
/* 8034773C  7C 7B 00 38 */	and r27, r3, r0
/* 80347740  57 60 06 73 */	rlwinm. r0, r27, 0, 0x19, 0x19
/* 80347744  41 82 00 08 */	beq lbl_8034774C
/* 80347748  63 BD 00 08 */	ori r29, r29, 8
lbl_8034774C:
/* 8034774C  57 60 06 F7 */	rlwinm. r0, r27, 0, 0x1b, 0x1b
/* 80347750  41 82 00 08 */	beq lbl_80347758
/* 80347754  63 BD 00 01 */	ori r29, r29, 1
lbl_80347758:
/* 80347758  57 60 07 7B */	rlwinm. r0, r27, 0, 0x1d, 0x1d
/* 8034775C  41 82 00 08 */	beq lbl_80347764
/* 80347760  63 BD 00 02 */	ori r29, r29, 2
lbl_80347764:
/* 80347764  28 1D 00 00 */	cmplwi r29, 0
/* 80347768  41 82 00 14 */	beq lbl_8034777C
/* 8034776C  38 00 00 00 */	li r0, 0
/* 80347770  90 0D 91 A8 */	stw r0, ResetOccurred(r13)
/* 80347774  38 7E 00 68 */	addi r3, r30, 0x68
/* 80347778  4B FF 34 C5 */	bl OSCancelAlarm
lbl_8034777C:
/* 8034777C  7F 60 FB 78 */	or r0, r27, r31
/* 80347780  3F E0 CC 00 */	lis r31, 0xCC00 /* 0xCC006000@ha */
/* 80347784  90 1F 60 00 */	stw r0, 0x6000(r31)  /* 0xCC006000@l */
/* 80347788  80 0D 91 A8 */	lwz r0, ResetOccurred(r13)
/* 8034778C  28 00 00 00 */	cmplwi r0, 0
/* 80347790  41 82 00 A0 */	beq lbl_80347830
/* 80347794  4B FF AF 89 */	bl __OSGetSystemTime
/* 80347798  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 8034779C  80 ED 91 A0 */	lwz r7, LastResetEnd(r13)
/* 803477A0  80 C5 00 F8 */	lwz r6, 0x00F8(r5)  /* 0x800000F8@l */
/* 803477A4  3C A0 10 62 */	lis r5, 0x1062 /* 0x10624DD3@ha */
/* 803477A8  38 A5 4D D3 */	addi r5, r5, 0x4DD3 /* 0x10624DD3@l */
/* 803477AC  81 0D 91 A4 */	lwz r8, data_80451724(r13)
/* 803477B0  54 C6 F0 BE */	srwi r6, r6, 2
/* 803477B4  7C A5 30 16 */	mulhwu r5, r5, r6
/* 803477B8  54 A5 D1 BE */	srwi r5, r5, 6
/* 803477BC  1C A5 00 C8 */	mulli r5, r5, 0xc8
/* 803477C0  7C C8 20 10 */	subfc r6, r8, r4
/* 803477C4  7C 67 19 10 */	subfe r3, r7, r3
/* 803477C8  38 00 00 00 */	li r0, 0
/* 803477CC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803477D0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803477D4  7C 05 30 10 */	subfc r0, r5, r6
/* 803477D8  7C 63 21 10 */	subfe r3, r3, r4
/* 803477DC  7C 64 21 10 */	subfe r3, r4, r4
/* 803477E0  7C 63 00 D1 */	neg. r3, r3
/* 803477E4  41 82 00 4C */	beq lbl_80347830
/* 803477E8  3B 7F 60 00 */	addi r27, r31, 0x6000
/* 803477EC  84 1B 00 04 */	lwzu r0, 4(r27)
/* 803477F0  54 03 07 7A */	rlwinm r3, r0, 0, 0x1d, 0x1d
/* 803477F4  54 00 0F 7A */	rlwinm r0, r0, 1, 0x1d, 0x1d
/* 803477F8  7C 60 00 38 */	and r0, r3, r0
/* 803477FC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80347800  41 82 00 24 */	beq lbl_80347824
/* 80347804  81 8D 91 9C */	lwz r12, ResetCoverCallback(r13)
/* 80347808  28 0C 00 00 */	cmplwi r12, 0
/* 8034780C  41 82 00 10 */	beq lbl_8034781C
/* 80347810  7D 88 03 A6 */	mtlr r12
/* 80347814  38 60 00 04 */	li r3, 4
/* 80347818  4E 80 00 21 */	blrl 
lbl_8034781C:
/* 8034781C  38 00 00 00 */	li r0, 0
/* 80347820  90 0D 91 9C */	stw r0, ResetCoverCallback(r13)
lbl_80347824:
/* 80347824  80 1B 00 00 */	lwz r0, 0(r27)
/* 80347828  90 1B 00 00 */	stw r0, 0(r27)
/* 8034782C  48 00 00 58 */	b lbl_80347884
lbl_80347830:
/* 80347830  80 0D 91 AC */	lwz r0, WaitingCoverClose(r13)
/* 80347834  2C 00 00 00 */	cmpwi r0, 0
/* 80347838  41 82 00 40 */	beq lbl_80347878
/* 8034783C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 80347840  38 A3 60 00 */	addi r5, r3, 0x6000 /* 0xCC006000@l */
/* 80347844  84 05 00 04 */	lwzu r0, 4(r5)
/* 80347848  54 04 07 BC */	rlwinm r4, r0, 0, 0x1e, 0x1e
/* 8034784C  54 03 07 7A */	rlwinm r3, r0, 0, 0x1d, 0x1d
/* 80347850  54 00 0F 7A */	rlwinm r0, r0, 1, 0x1d, 0x1d
/* 80347854  7C 63 00 38 */	and r3, r3, r0
/* 80347858  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8034785C  41 82 00 08 */	beq lbl_80347864
/* 80347860  63 BD 00 04 */	ori r29, r29, 4
lbl_80347864:
/* 80347864  7C 60 23 78 */	or r0, r3, r4
/* 80347868  90 05 00 00 */	stw r0, 0(r5)
/* 8034786C  38 00 00 00 */	li r0, 0
/* 80347870  90 0D 91 AC */	stw r0, WaitingCoverClose(r13)
/* 80347874  48 00 00 10 */	b lbl_80347884
lbl_80347878:
/* 80347878  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034787C  38 00 00 00 */	li r0, 0
/* 80347880  90 03 60 04 */	stw r0, 0x6004(r3)  /* 0xCC006004@l */
lbl_80347884:
/* 80347884  57 A0 07 39 */	rlwinm. r0, r29, 0, 0x1c, 0x1c
/* 80347888  41 82 00 14 */	beq lbl_8034789C
/* 8034788C  80 0D 91 B0 */	lwz r0, Breaking(r13)
/* 80347890  2C 00 00 00 */	cmpwi r0, 0
/* 80347894  40 82 00 08 */	bne lbl_8034789C
/* 80347898  57 BD 07 76 */	rlwinm r29, r29, 0, 0x1d, 0x1b
lbl_8034789C:
/* 8034789C  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 803478A0  41 82 00 80 */	beq lbl_80347920
/* 803478A4  80 0D 91 D4 */	lwz r0, NextCommandNumber(r13)
/* 803478A8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803478AC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 803478B0  2C 03 00 01 */	cmpwi r3, 1
/* 803478B4  40 82 00 30 */	bne lbl_803478E4
/* 803478B8  80 6D 91 D4 */	lwz r3, NextCommandNumber(r13)
/* 803478BC  7C DE 02 14 */	add r6, r30, r0
/* 803478C0  38 03 00 01 */	addi r0, r3, 1
/* 803478C4  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 803478C8  80 66 00 04 */	lwz r3, 4(r6)
/* 803478CC  80 86 00 08 */	lwz r4, 8(r6)
/* 803478D0  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 803478D4  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 803478D8  48 00 01 B1 */	bl Read
/* 803478DC  38 00 00 01 */	li r0, 1
/* 803478E0  48 00 00 34 */	b lbl_80347914
lbl_803478E4:
/* 803478E4  2C 03 00 02 */	cmpwi r3, 2
/* 803478E8  40 82 00 28 */	bne lbl_80347910
/* 803478EC  80 6D 91 D4 */	lwz r3, NextCommandNumber(r13)
/* 803478F0  7C 9E 02 14 */	add r4, r30, r0
/* 803478F4  38 03 00 01 */	addi r0, r3, 1
/* 803478F8  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 803478FC  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80347900  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80347904  48 00 05 AD */	bl DVDLowSeek
/* 80347908  38 00 00 01 */	li r0, 1
/* 8034790C  48 00 00 08 */	b lbl_80347914
lbl_80347910:
/* 80347910  38 00 00 00 */	li r0, 0
lbl_80347914:
/* 80347914  2C 00 00 00 */	cmpwi r0, 0
/* 80347918  41 82 00 18 */	beq lbl_80347930
/* 8034791C  48 00 00 64 */	b lbl_80347980
lbl_80347920:
/* 80347920  38 00 FF FF */	li r0, -1
/* 80347924  90 1E 00 00 */	stw r0, 0(r30)
/* 80347928  38 00 00 00 */	li r0, 0
/* 8034792C  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
lbl_80347930:
/* 80347930  38 61 00 10 */	addi r3, r1, 0x10
/* 80347934  4B FF 46 CD */	bl OSClearContext
/* 80347938  38 61 00 10 */	addi r3, r1, 0x10
/* 8034793C  4B FF 44 FD */	bl OSSetCurrentContext
/* 80347940  28 1D 00 00 */	cmplwi r29, 0
/* 80347944  41 82 00 2C */	beq lbl_80347970
/* 80347948  81 8D 91 98 */	lwz r12, Callback(r13)
/* 8034794C  38 00 00 00 */	li r0, 0
/* 80347950  28 0C 00 00 */	cmplwi r12, 0
/* 80347954  90 0D 91 98 */	stw r0, Callback(r13)
/* 80347958  41 82 00 10 */	beq lbl_80347968
/* 8034795C  7D 88 03 A6 */	mtlr r12
/* 80347960  38 7D 00 00 */	addi r3, r29, 0
/* 80347964  4E 80 00 21 */	blrl 
lbl_80347968:
/* 80347968  38 00 00 00 */	li r0, 0
/* 8034796C  90 0D 91 B0 */	stw r0, Breaking(r13)
lbl_80347970:
/* 80347970  38 61 00 10 */	addi r3, r1, 0x10
/* 80347974  4B FF 46 8D */	bl OSClearContext
/* 80347978  7F 83 E3 78 */	mr r3, r28
/* 8034797C  4B FF 44 BD */	bl OSSetCurrentContext
lbl_80347980:
/* 80347980  BB 61 02 DC */	lmw r27, 0x2dc(r1)
/* 80347984  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 80347988  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 8034798C  7C 08 03 A6 */	mtlr r0
/* 80347990  4E 80 00 20 */	blr 
