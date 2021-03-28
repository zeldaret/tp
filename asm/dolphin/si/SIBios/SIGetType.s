lbl_80345F90:
/* 80345F90  7C 08 02 A6 */	mflr r0
/* 80345F94  90 01 00 04 */	stw r0, 4(r1)
/* 80345F98  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80345F9C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80345FA0  7C 7B 1B 78 */	mr r27, r3
/* 80345FA4  4B FF 77 51 */	bl OSDisableInterrupts
/* 80345FA8  3C 80 80 3D */	lis r4, Type@ha
/* 80345FAC  57 65 10 3A */	slwi r5, r27, 2
/* 80345FB0  38 04 12 10 */	addi r0, r4, Type@l
/* 80345FB4  7F C0 2A 14 */	add r30, r0, r5
/* 80345FB8  83 9E 00 00 */	lwz r28, 0(r30)
/* 80345FBC  7C 7D 1B 78 */	mr r29, r3
/* 80345FC0  4B FF C7 5D */	bl __OSGetSystemTime
/* 80345FC4  3C A0 80 45 */	lis r5, TypeTime@ha
/* 80345FC8  57 66 18 38 */	slwi r6, r27, 3
/* 80345FCC  38 05 C7 50 */	addi r0, r5, TypeTime@l
/* 80345FD0  7F E0 32 14 */	add r31, r0, r6
/* 80345FD4  80 DF 00 04 */	lwz r6, 4(r31)
/* 80345FD8  3C A0 80 3D */	lis r5, Si@ha
/* 80345FDC  38 A5 11 FC */	addi r5, r5, Si@l
/* 80345FE0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80345FE4  7C 86 20 10 */	subfc r4, r6, r4
/* 80345FE8  7C 00 19 10 */	subfe r0, r0, r3
/* 80345FEC  80 C5 00 04 */	lwz r6, 4(r5)
/* 80345FF0  38 A0 00 80 */	li r5, 0x80
/* 80345FF4  7C A3 DE 30 */	sraw r3, r5, r27
/* 80345FF8  7C C3 18 39 */	and. r3, r6, r3
/* 80345FFC  41 82 00 34 */	beq lbl_80346030
/* 80346000  28 1C 00 08 */	cmplwi r28, 8
/* 80346004  41 82 00 20 */	beq lbl_80346024
/* 80346008  4B FF C7 15 */	bl __OSGetSystemTime
/* 8034600C  90 9F 00 04 */	stw r4, 4(r31)
/* 80346010  90 7F 00 00 */	stw r3, 0(r31)
/* 80346014  7F A3 EB 78 */	mr r3, r29
/* 80346018  4B FF 77 05 */	bl OSRestoreInterrupts
/* 8034601C  7F 83 E3 78 */	mr r3, r28
/* 80346020  48 00 01 20 */	b lbl_80346140
lbl_80346024:
/* 80346024  90 BE 00 00 */	stw r5, 0(r30)
/* 80346028  3B 80 00 80 */	li r28, 0x80
/* 8034602C  48 00 00 B4 */	b lbl_803460E0
lbl_80346030:
/* 80346030  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80346034  80 C3 00 F8 */	lwz r6, 0x00F8(r3)
/* 80346038  3C A0 10 62 */	lis r5, 0x1062 /* 0x10624DD3@ha */
/* 8034603C  38 A5 4D D3 */	addi r5, r5, 0x4DD3 /* 0x10624DD3@l */
/* 80346040  54 C6 F0 BE */	srwi r6, r6, 2
/* 80346044  7C A5 30 16 */	mulhwu r5, r5, r6
/* 80346048  54 A5 D1 BE */	srwi r5, r5, 6
/* 8034604C  1C E5 00 32 */	mulli r7, r5, 0x32
/* 80346050  38 60 00 00 */	li r3, 0
/* 80346054  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80346058  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8034605C  7C 64 38 10 */	subfc r3, r4, r7
/* 80346060  7C A5 31 10 */	subfe r5, r5, r6
/* 80346064  7C A6 31 10 */	subfe r5, r6, r6
/* 80346068  7C A5 00 D1 */	neg. r5, r5
/* 8034606C  40 82 00 1C */	bne lbl_80346088
/* 80346070  28 1C 00 08 */	cmplwi r28, 8
/* 80346074  41 82 00 14 */	beq lbl_80346088
/* 80346078  7F A3 EB 78 */	mr r3, r29
/* 8034607C  4B FF 76 A1 */	bl OSRestoreInterrupts
/* 80346080  7F 83 E3 78 */	mr r3, r28
/* 80346084  48 00 00 BC */	b lbl_80346140
lbl_80346088:
/* 80346088  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8034608C  80 C3 00 F8 */	lwz r6, 0x00F8(r3)
/* 80346090  3C A0 10 62 */	lis r5, 0x1062 /* 0x10624DD3@ha */
/* 80346094  38 A5 4D D3 */	addi r5, r5, 0x4DD3 /* 0x10624DD3@l */
/* 80346098  54 C6 F0 BE */	srwi r6, r6, 2
/* 8034609C  7C A5 30 16 */	mulhwu r5, r5, r6
/* 803460A0  54 A5 D1 BE */	srwi r5, r5, 6
/* 803460A4  1C C5 00 4B */	mulli r6, r5, 0x4b
/* 803460A8  38 60 00 00 */	li r3, 0
/* 803460AC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 803460B0  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803460B4  7C 04 30 10 */	subfc r0, r4, r6
/* 803460B8  7C 63 29 10 */	subfe r3, r3, r5
/* 803460BC  7C 65 29 10 */	subfe r3, r5, r5
/* 803460C0  7C 63 00 D1 */	neg. r3, r3
/* 803460C4  40 82 00 10 */	bne lbl_803460D4
/* 803460C8  38 00 00 80 */	li r0, 0x80
/* 803460CC  90 1E 00 00 */	stw r0, 0(r30)
/* 803460D0  48 00 00 10 */	b lbl_803460E0
lbl_803460D4:
/* 803460D4  38 00 00 80 */	li r0, 0x80
/* 803460D8  90 1E 00 00 */	stw r0, 0(r30)
/* 803460DC  3B 80 00 80 */	li r28, 0x80
lbl_803460E0:
/* 803460E0  4B FF C6 3D */	bl __OSGetSystemTime
/* 803460E4  90 9F 00 04 */	stw r4, 4(r31)
/* 803460E8  3C 80 43 1C */	lis r4, 0x431C /* 0x431BDE83@ha */
/* 803460EC  3C A0 80 34 */	lis r5, GetTypeCallback@ha
/* 803460F0  90 7F 00 00 */	stw r3, 0(r31)
/* 803460F4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 803460F8  39 05 5C F8 */	addi r8, r5, GetTypeCallback@l
/* 803460FC  80 03 00 F8 */	lwz r0, 0x00F8(r3)
/* 80346100  38 84 DE 83 */	addi r4, r4, 0xDE83 /* 0x431BDE83@l */
/* 80346104  38 7B 00 00 */	addi r3, r27, 0
/* 80346108  54 00 F0 BE */	srwi r0, r0, 2
/* 8034610C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 80346110  54 00 8B FE */	srwi r0, r0, 0xf
/* 80346114  1C 00 00 41 */	mulli r0, r0, 0x41
/* 80346118  54 0A E8 FE */	srwi r10, r0, 3
/* 8034611C  38 DE 00 00 */	addi r6, r30, 0
/* 80346120  38 8D 91 74 */	la r4, cmdTypeAndStatus_372(r13) /* 804516F4-_SDA_BASE_ */
/* 80346124  38 A0 00 01 */	li r5, 1
/* 80346128  38 E0 00 03 */	li r7, 3
/* 8034612C  39 20 00 00 */	li r9, 0
/* 80346130  4B FF FA 5D */	bl SITransfer
/* 80346134  7F A3 EB 78 */	mr r3, r29
/* 80346138  4B FF 75 E5 */	bl OSRestoreInterrupts
/* 8034613C  7F 83 E3 78 */	mr r3, r28
lbl_80346140:
/* 80346140  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80346144  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80346148  38 21 00 28 */	addi r1, r1, 0x28
/* 8034614C  7C 08 03 A6 */	mtlr r0
/* 80346150  4E 80 00 20 */	blr 
