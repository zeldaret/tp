lbl_80357154:
/* 80357154  7C 08 02 A6 */	mflr r0
/* 80357158  90 01 00 04 */	stw r0, 4(r1)
/* 8035715C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80357160  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80357164  7C 7E 1B 79 */	or. r30, r3, r3
/* 80357168  3B 44 00 00 */	addi r26, r4, 0
/* 8035716C  3B 65 00 00 */	addi r27, r5, 0
/* 80357170  3B A6 00 00 */	addi r29, r6, 0
/* 80357174  41 80 00 0C */	blt lbl_80357180
/* 80357178  2C 1E 00 02 */	cmpwi r30, 2
/* 8035717C  41 80 00 0C */	blt lbl_80357188
lbl_80357180:
/* 80357180  38 60 FF 80 */	li r3, -128
/* 80357184  48 00 01 5C */	b lbl_803572E0
lbl_80357188:
/* 80357188  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E3@ha */
/* 8035718C  88 03 30 E3 */	lbz r0, 0x30E3(r3)  /* 0x800030E3@l */
/* 80357190  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80357194  41 82 00 0C */	beq lbl_803571A0
/* 80357198  38 60 FF FD */	li r3, -3
/* 8035719C  48 00 01 44 */	b lbl_803572E0
lbl_803571A0:
/* 803571A0  1C 9E 01 10 */	mulli r4, r30, 0x110
/* 803571A4  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 803571A8  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 803571AC  7F E0 22 14 */	add r31, r0, r4
/* 803571B0  4B FE 65 45 */	bl OSDisableInterrupts
/* 803571B4  80 1F 00 04 */	lwz r0, 4(r31)
/* 803571B8  3B 83 00 00 */	addi r28, r3, 0
/* 803571BC  2C 00 FF FF */	cmpwi r0, -1
/* 803571C0  40 82 00 14 */	bne lbl_803571D4
/* 803571C4  7F 83 E3 78 */	mr r3, r28
/* 803571C8  4B FE 65 55 */	bl OSRestoreInterrupts
/* 803571CC  38 60 FF FF */	li r3, -1
/* 803571D0  48 00 01 10 */	b lbl_803572E0
lbl_803571D4:
/* 803571D4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803571D8  2C 00 00 00 */	cmpwi r0, 0
/* 803571DC  40 82 00 24 */	bne lbl_80357200
/* 803571E0  7F C3 F3 78 */	mr r3, r30
/* 803571E4  4B FE D0 15 */	bl EXIGetState
/* 803571E8  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803571EC  41 82 00 14 */	beq lbl_80357200
/* 803571F0  7F 83 E3 78 */	mr r3, r28
/* 803571F4  4B FE 65 29 */	bl OSRestoreInterrupts
/* 803571F8  38 60 FF FE */	li r3, -2
/* 803571FC  48 00 00 E4 */	b lbl_803572E0
lbl_80357200:
/* 80357200  38 00 FF FF */	li r0, -1
/* 80357204  90 1F 00 04 */	stw r0, 4(r31)
/* 80357208  28 1D 00 00 */	cmplwi r29, 0
/* 8035720C  93 5F 00 80 */	stw r26, 0x80(r31)
/* 80357210  93 7F 00 C4 */	stw r27, 0xc4(r31)
/* 80357214  41 82 00 0C */	beq lbl_80357220
/* 80357218  7F A0 EB 78 */	mr r0, r29
/* 8035721C  48 00 00 0C */	b lbl_80357228
lbl_80357220:
/* 80357220  3C 60 80 35 */	lis r3, __CARDDefaultApiCallback@ha /* 0x80352A30@ha */
/* 80357224  38 03 2A 30 */	addi r0, r3, __CARDDefaultApiCallback@l /* 0x80352A30@l */
lbl_80357228:
/* 80357228  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8035722C  38 00 00 00 */	li r0, 0
/* 80357230  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80357234  80 1F 00 00 */	lwz r0, 0(r31)
/* 80357238  2C 00 00 00 */	cmpwi r0, 0
/* 8035723C  40 82 00 34 */	bne lbl_80357270
/* 80357240  3C 60 80 35 */	lis r3, __CARDExtHandler@ha /* 0x80352A68@ha */
/* 80357244  38 83 2A 68 */	addi r4, r3, __CARDExtHandler@l /* 0x80352A68@l */
/* 80357248  38 7E 00 00 */	addi r3, r30, 0
/* 8035724C  4B FE C4 55 */	bl EXIAttach
/* 80357250  2C 03 00 00 */	cmpwi r3, 0
/* 80357254  40 82 00 1C */	bne lbl_80357270
/* 80357258  38 00 FF FD */	li r0, -3
/* 8035725C  90 1F 00 04 */	stw r0, 4(r31)
/* 80357260  7F 83 E3 78 */	mr r3, r28
/* 80357264  4B FE 64 B9 */	bl OSRestoreInterrupts
/* 80357268  38 60 FF FD */	li r3, -3
/* 8035726C  48 00 00 74 */	b lbl_803572E0
lbl_80357270:
/* 80357270  3B A0 00 00 */	li r29, 0
/* 80357274  93 BF 00 24 */	stw r29, 0x24(r31)
/* 80357278  38 00 00 01 */	li r0, 1
/* 8035727C  38 7E 00 00 */	addi r3, r30, 0
/* 80357280  90 1F 00 00 */	stw r0, 0(r31)
/* 80357284  38 80 00 00 */	li r4, 0
/* 80357288  4B FE C0 F5 */	bl EXISetExiCallback
/* 8035728C  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80357290  4B FE 39 AD */	bl OSCancelAlarm
/* 80357294  93 BF 00 84 */	stw r29, 0x84(r31)
/* 80357298  7F 83 E3 78 */	mr r3, r28
/* 8035729C  93 BF 00 88 */	stw r29, 0x88(r31)
/* 803572A0  4B FE 64 7D */	bl OSRestoreInterrupts
/* 803572A4  3C 60 80 35 */	lis r3, __CARDMountCallback@ha /* 0x8035701C@ha */
/* 803572A8  38 03 70 1C */	addi r0, r3, __CARDMountCallback@l /* 0x8035701C@l */
/* 803572AC  3C 60 80 35 */	lis r3, __CARDUnlockedHandler@ha /* 0x80352D00@ha */
/* 803572B0  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 803572B4  38 A3 2D 00 */	addi r5, r3, __CARDUnlockedHandler@l /* 0x80352D00@l */
/* 803572B8  38 7E 00 00 */	addi r3, r30, 0
/* 803572BC  38 80 00 00 */	li r4, 0
/* 803572C0  4B FE CD 69 */	bl EXILock
/* 803572C4  2C 03 00 00 */	cmpwi r3, 0
/* 803572C8  40 82 00 0C */	bne lbl_803572D4
/* 803572CC  38 60 00 00 */	li r3, 0
/* 803572D0  48 00 00 10 */	b lbl_803572E0
lbl_803572D4:
/* 803572D4  93 BF 00 DC */	stw r29, 0xdc(r31)
/* 803572D8  7F C3 F3 78 */	mr r3, r30
/* 803572DC  4B FF F8 ED */	bl DoMount
lbl_803572E0:
/* 803572E0  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 803572E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803572E8  38 21 00 30 */	addi r1, r1, 0x30
/* 803572EC  7C 08 03 A6 */	mtlr r0
/* 803572F0  4E 80 00 20 */	blr 
