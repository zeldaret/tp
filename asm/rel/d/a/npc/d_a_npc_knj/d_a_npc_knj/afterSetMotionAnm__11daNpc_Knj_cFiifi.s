lbl_80A44088:
/* 80A44088  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A4408C  7C 08 02 A6 */	mflr r0
/* 80A44090  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A44094  39 61 00 30 */	addi r11, r1, 0x30
/* 80A44098  4B 91 E1 38 */	b _savegpr_26
/* 80A4409C  7C 7A 1B 78 */	mr r26, r3
/* 80A440A0  7C 9E 23 78 */	mr r30, r4
/* 80A440A4  7C BB 2B 78 */	mr r27, r5
/* 80A440A8  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A440AC  3B E4 55 D0 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80A440B0  3B A0 00 00 */	li r29, 0
/* 80A440B4  3B 80 00 00 */	li r28, 0
/* 80A440B8  88 03 0E 44 */	lbz r0, 0xe44(r3)
/* 80A440BC  54 00 18 38 */	slwi r0, r0, 3
/* 80A440C0  38 9F 00 DC */	addi r4, r31, 0xdc
/* 80A440C4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80A440C8  2C 05 FF FF */	cmpwi r5, -1
/* 80A440CC  41 82 00 20 */	beq lbl_80A440EC
/* 80A440D0  7C 84 02 14 */	add r4, r4, r0
/* 80A440D4  80 04 00 04 */	lwz r0, 4(r4)
/* 80A440D8  54 00 10 3A */	slwi r0, r0, 2
/* 80A440DC  38 9F 00 38 */	addi r4, r31, 0x38
/* 80A440E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A440E4  4B 70 3F EC */	b getTexPtrnAnmP__8daNpcT_cFPCci
/* 80A440E8  7C 7D 1B 78 */	mr r29, r3
lbl_80A440EC:
/* 80A440EC  28 1D 00 00 */	cmplwi r29, 0
/* 80A440F0  41 82 00 58 */	beq lbl_80A44148
/* 80A440F4  80 1A 06 40 */	lwz r0, 0x640(r26)
/* 80A440F8  7C 00 E8 40 */	cmplw r0, r29
/* 80A440FC  40 82 00 14 */	bne lbl_80A44110
/* 80A44100  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80A44104  60 00 08 00 */	ori r0, r0, 0x800
/* 80A44108  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80A4410C  48 00 00 3C */	b lbl_80A44148
lbl_80A44110:
/* 80A44110  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80A44114  80 63 00 04 */	lwz r3, 4(r3)
/* 80A44118  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A4411C  7F 43 D3 78 */	mr r3, r26
/* 80A44120  7F A4 EB 78 */	mr r4, r29
/* 80A44124  3C C0 80 A4 */	lis r6, lit_4215@ha
/* 80A44128  C0 26 55 A8 */	lfs f1, lit_4215@l(r6)
/* 80A4412C  7F 66 DB 78 */	mr r6, r27
/* 80A44130  4B 70 41 C8 */	b setBtpAnm__8daNpcT_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A44134  2C 03 00 00 */	cmpwi r3, 0
/* 80A44138  41 82 00 10 */	beq lbl_80A44148
/* 80A4413C  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80A44140  60 00 08 20 */	ori r0, r0, 0x820
/* 80A44144  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80A44148:
/* 80A44148  28 1D 00 00 */	cmplwi r29, 0
/* 80A4414C  40 82 00 24 */	bne lbl_80A44170
/* 80A44150  88 1A 0E 44 */	lbz r0, 0xe44(r26)
/* 80A44154  54 00 18 38 */	slwi r0, r0, 3
/* 80A44158  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80A4415C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A44160  2C 00 FF FF */	cmpwi r0, -1
/* 80A44164  41 82 00 0C */	beq lbl_80A44170
/* 80A44168  38 60 00 00 */	li r3, 0
/* 80A4416C  48 00 00 E0 */	b lbl_80A4424C
lbl_80A44170:
/* 80A44170  57 DE 18 38 */	slwi r30, r30, 3
/* 80A44174  3B BF 01 0C */	addi r29, r31, 0x10c
/* 80A44178  7C BD F0 2E */	lwzx r5, r29, r30
/* 80A4417C  2C 05 FF FF */	cmpwi r5, -1
/* 80A44180  41 82 00 24 */	beq lbl_80A441A4
/* 80A44184  7F 43 D3 78 */	mr r3, r26
/* 80A44188  7C 9D F2 14 */	add r4, r29, r30
/* 80A4418C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A44190  54 00 10 3A */	slwi r0, r0, 2
/* 80A44194  38 9F 00 38 */	addi r4, r31, 0x38
/* 80A44198  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A4419C  4B 70 3F AC */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80A441A0  7C 7C 1B 78 */	mr r28, r3
lbl_80A441A4:
/* 80A441A4  28 1C 00 00 */	cmplwi r28, 0
/* 80A441A8  41 82 00 84 */	beq lbl_80A4422C
/* 80A441AC  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 80A441B0  7C 00 E0 40 */	cmplw r0, r28
/* 80A441B4  40 82 00 14 */	bne lbl_80A441C8
/* 80A441B8  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80A441BC  60 00 01 00 */	ori r0, r0, 0x100
/* 80A441C0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80A441C4  48 00 00 68 */	b lbl_80A4422C
lbl_80A441C8:
/* 80A441C8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80A441CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A441D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A441D4  7F 43 D3 78 */	mr r3, r26
/* 80A441D8  7F 84 E3 78 */	mr r4, r28
/* 80A441DC  3C C0 80 A4 */	lis r6, lit_4215@ha
/* 80A441E0  C0 26 55 A8 */	lfs f1, lit_4215@l(r6)
/* 80A441E4  7F 66 DB 78 */	mr r6, r27
/* 80A441E8  4B 70 41 90 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80A441EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A441F0  41 82 00 3C */	beq lbl_80A4422C
/* 80A441F4  88 1A 0E 44 */	lbz r0, 0xe44(r26)
/* 80A441F8  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80A441FC  3C 60 80 A4 */	lis r3, lit_4453@ha
/* 80A44200  C8 23 55 B0 */	lfd f1, lit_4453@l(r3)
/* 80A44204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A44208  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4420C  3C 00 43 30 */	lis r0, 0x4330
/* 80A44210  90 01 00 08 */	stw r0, 8(r1)
/* 80A44214  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A44218  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A4421C  D0 1A 06 6C */	stfs f0, 0x66c(r26)
/* 80A44220  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80A44224  60 00 01 04 */	ori r0, r0, 0x104
/* 80A44228  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80A4422C:
/* 80A4422C  28 1C 00 00 */	cmplwi r28, 0
/* 80A44230  40 82 00 18 */	bne lbl_80A44248
/* 80A44234  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80A44238  2C 00 FF FF */	cmpwi r0, -1
/* 80A4423C  41 82 00 0C */	beq lbl_80A44248
/* 80A44240  38 60 00 00 */	li r3, 0
/* 80A44244  48 00 00 08 */	b lbl_80A4424C
lbl_80A44248:
/* 80A44248  38 60 00 01 */	li r3, 1
lbl_80A4424C:
/* 80A4424C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A44250  4B 91 DF CC */	b _restgpr_26
/* 80A44254  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A44258  7C 08 03 A6 */	mtlr r0
/* 80A4425C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A44260  4E 80 00 20 */	blr 
