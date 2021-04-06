lbl_805BC0B8:
/* 805BC0B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805BC0BC  7C 08 02 A6 */	mflr r0
/* 805BC0C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805BC0C4  39 61 00 50 */	addi r11, r1, 0x50
/* 805BC0C8  4B DA 60 F9 */	bl _savegpr_22
/* 805BC0CC  7C 77 1B 78 */	mr r23, r3
/* 805BC0D0  3B 60 00 00 */	li r27, 0
/* 805BC0D4  3B 40 00 00 */	li r26, 0
/* 805BC0D8  3B 20 00 00 */	li r25, 0
/* 805BC0DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC0E0  40 82 00 10 */	bne lbl_805BC0F0
/* 805BC0E4  88 17 07 D1 */	lbz r0, 0x7d1(r23)
/* 805BC0E8  28 00 00 02 */	cmplwi r0, 2
/* 805BC0EC  41 82 01 44 */	beq lbl_805BC230
lbl_805BC0F0:
/* 805BC0F0  8B 17 07 D2 */	lbz r24, 0x7d2(r23)
/* 805BC0F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC0F8  41 82 00 08 */	beq lbl_805BC100
/* 805BC0FC  3B 00 00 03 */	li r24, 3
lbl_805BC100:
/* 805BC100  2C 18 00 02 */	cmpwi r24, 2
/* 805BC104  41 82 00 2C */	beq lbl_805BC130
/* 805BC108  40 80 00 10 */	bge lbl_805BC118
/* 805BC10C  2C 18 00 01 */	cmpwi r24, 1
/* 805BC110  40 80 00 14 */	bge lbl_805BC124
/* 805BC114  48 00 00 38 */	b lbl_805BC14C
lbl_805BC118:
/* 805BC118  2C 18 00 04 */	cmpwi r24, 4
/* 805BC11C  40 80 00 30 */	bge lbl_805BC14C
/* 805BC120  48 00 00 20 */	b lbl_805BC140
lbl_805BC124:
/* 805BC124  83 77 07 E0 */	lwz r27, 0x7e0(r23)
/* 805BC128  3B 20 00 11 */	li r25, 0x11
/* 805BC12C  48 00 00 20 */	b lbl_805BC14C
lbl_805BC130:
/* 805BC130  80 77 07 E0 */	lwz r3, 0x7e0(r23)
/* 805BC134  3B 63 00 11 */	addi r27, r3, 0x11
/* 805BC138  3B 20 00 1E */	li r25, 0x1e
/* 805BC13C  48 00 00 10 */	b lbl_805BC14C
lbl_805BC140:
/* 805BC140  80 77 07 E0 */	lwz r3, 0x7e0(r23)
/* 805BC144  3B 63 00 1E */	addi r27, r3, 0x1e
/* 805BC148  3B 20 00 36 */	li r25, 0x36
lbl_805BC14C:
/* 805BC14C  7C 1B C8 00 */	cmpw r27, r25
/* 805BC150  40 80 00 E0 */	bge lbl_805BC230
/* 805BC154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805BC158  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805BC15C  3C 60 80 5C */	lis r3, BREAK_PARTS_DT@ha /* 0x805C6D40@ha */
/* 805BC160  3B C3 6D 40 */	addi r30, r3, BREAK_PARTS_DT@l /* 0x805C6D40@l */
/* 805BC164  7F BF EB 78 */	mr r31, r29
/* 805BC168  1E DB 00 0C */	mulli r22, r27, 0xc
/* 805BC16C  48 00 00 B4 */	b lbl_805BC220
lbl_805BC170:
/* 805BC170  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 805BC174  80 63 00 04 */	lwz r3, 4(r3)
/* 805BC178  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805BC17C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805BC180  7F 9E B2 14 */	add r28, r30, r22
/* 805BC184  80 1C 00 00 */	lwz r0, 0(r28)
/* 805BC188  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805BC18C  7C 63 02 14 */	add r3, r3, r0
/* 805BC190  7F A4 EB 78 */	mr r4, r29
/* 805BC194  4B D8 A3 1D */	bl PSMTXCopy
/* 805BC198  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805BC19C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BC1A0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 805BC1A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BC1A8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805BC1AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BC1B0  7F E3 FB 78 */	mr r3, r31
/* 805BC1B4  38 81 00 08 */	addi r4, r1, 8
/* 805BC1B8  4B A5 0A 49 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 805BC1BC  38 80 00 14 */	li r4, 0x14
/* 805BC1C0  2C 18 00 03 */	cmpwi r24, 3
/* 805BC1C4  40 82 00 08 */	bne lbl_805BC1CC
/* 805BC1C8  38 80 00 15 */	li r4, 0x15
lbl_805BC1CC:
/* 805BC1CC  80 1C 00 04 */	lwz r0, 4(r28)
/* 805BC1D0  54 00 40 2E */	slwi r0, r0, 8
/* 805BC1D4  7C 84 03 78 */	or r4, r4, r0
/* 805BC1D8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 805BC1DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BC1E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805BC1E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BC1E8  38 60 00 F7 */	li r3, 0xf7
/* 805BC1EC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805BC1F0  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 805BC1F4  7C 06 07 74 */	extsb r6, r0
/* 805BC1F8  38 E1 00 08 */	addi r7, r1, 8
/* 805BC1FC  39 01 00 10 */	addi r8, r1, 0x10
/* 805BC200  39 20 FF FF */	li r9, -1
/* 805BC204  4B A5 DB 95 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805BC208  80 77 07 E0 */	lwz r3, 0x7e0(r23)
/* 805BC20C  38 03 00 01 */	addi r0, r3, 1
/* 805BC210  90 17 07 E0 */	stw r0, 0x7e0(r23)
/* 805BC214  3B 7B 00 01 */	addi r27, r27, 1
/* 805BC218  3A D6 00 0C */	addi r22, r22, 0xc
/* 805BC21C  3B 5A 00 01 */	addi r26, r26, 1
lbl_805BC220:
/* 805BC220  7C 1B C8 00 */	cmpw r27, r25
/* 805BC224  40 80 00 0C */	bge lbl_805BC230
/* 805BC228  2C 1A 00 04 */	cmpwi r26, 4
/* 805BC22C  41 80 FF 44 */	blt lbl_805BC170
lbl_805BC230:
/* 805BC230  39 61 00 50 */	addi r11, r1, 0x50
/* 805BC234  4B DA 5F D9 */	bl _restgpr_22
/* 805BC238  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805BC23C  7C 08 03 A6 */	mtlr r0
/* 805BC240  38 21 00 50 */	addi r1, r1, 0x50
/* 805BC244  4E 80 00 20 */	blr 
