lbl_80349FC0:
/* 80349FC0  7C 08 02 A6 */	mflr r0
/* 80349FC4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 80349FC8  90 01 00 04 */	stw r0, 4(r1)
/* 80349FCC  38 00 00 00 */	li r0, 0
/* 80349FD0  3C 80 80 45 */	lis r4, BB2@ha /* 0x8044C900@ha */
/* 80349FD4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80349FD8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80349FDC  3B E4 C9 00 */	addi r31, r4, BB2@l /* 0x8044C900@l */
/* 80349FE0  90 03 60 04 */	stw r0, 0x6004(r3)  /* 0xCC006004@l */
/* 80349FE4  38 00 00 03 */	li r0, 3
/* 80349FE8  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349FEC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80349FF0  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 80349FF4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80349FF8  41 82 00 28 */	beq lbl_8034A020
/* 80349FFC  40 80 00 18 */	bge lbl_8034A014
/* 8034A000  2C 00 00 06 */	cmpwi r0, 6
/* 8034A004  40 80 00 4C */	bge lbl_8034A050
/* 8034A008  2C 00 00 04 */	cmpwi r0, 4
/* 8034A00C  40 80 00 14 */	bge lbl_8034A020
/* 8034A010  48 00 00 40 */	b lbl_8034A050
lbl_8034A014:
/* 8034A014  2C 00 00 0F */	cmpwi r0, 0xf
/* 8034A018  41 82 00 08 */	beq lbl_8034A020
/* 8034A01C  48 00 00 34 */	b lbl_8034A050
lbl_8034A020:
/* 8034A020  48 00 18 55 */	bl __DVDClearWaitingQueue
/* 8034A024  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A028  38 1F 00 40 */	addi r0, r31, 0x40
/* 8034A02C  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A030  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A034  28 0C 00 00 */	cmplwi r12, 0
/* 8034A038  41 82 00 10 */	beq lbl_8034A048
/* 8034A03C  7D 88 03 A6 */	mtlr r12
/* 8034A040  38 60 FF FC */	li r3, -4
/* 8034A044  4E 80 00 21 */	blrl 
lbl_8034A048:
/* 8034A048  48 00 00 65 */	bl stateReady
/* 8034A04C  48 00 00 4C */	b lbl_8034A098
lbl_8034A050:
/* 8034A050  38 00 00 00 */	li r0, 0
/* 8034A054  90 0D 92 38 */	stw r0, MotorState(r13)
/* 8034A058  48 00 10 E1 */	bl DVDReset
/* 8034A05C  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A060  4B FF 08 99 */	bl OSCreateAlarm
/* 8034A064  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8034A068  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 8034A06C  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 8034A070  3C 60 80 35 */	lis r3, AlarmHandler@ha /* 0x80349DEC@ha */
/* 8034A074  54 00 F0 BE */	srwi r0, r0, 2
/* 8034A078  38 84 4D D3 */	addi r4, r4, 0x4DD3 /* 0x10624DD3@l */
/* 8034A07C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8034A080  54 00 D1 BE */	srwi r0, r0, 6
/* 8034A084  1C C0 04 7E */	mulli r6, r0, 0x47e
/* 8034A088  38 E3 9D EC */	addi r7, r3, AlarmHandler@l /* 0x80349DEC@l */
/* 8034A08C  38 7F 00 70 */	addi r3, r31, 0x70
/* 8034A090  38 A0 00 00 */	li r5, 0
/* 8034A094  4B FF 0A C5 */	bl OSSetAlarm
lbl_8034A098:
/* 8034A098  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034A09C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034A0A0  38 21 00 18 */	addi r1, r1, 0x18
/* 8034A0A4  7C 08 03 A6 */	mtlr r0
/* 8034A0A8  4E 80 00 20 */	blr 
