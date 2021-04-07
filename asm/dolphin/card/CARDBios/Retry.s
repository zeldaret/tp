lbl_80353174:
/* 80353174  7C 08 02 A6 */	mflr r0
/* 80353178  38 A0 00 04 */	li r5, 4
/* 8035317C  90 01 00 04 */	stw r0, 4(r1)
/* 80353180  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80353184  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80353188  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035318C  3B C3 00 00 */	addi r30, r3, 0
/* 80353190  1C 9E 01 10 */	mulli r4, r30, 0x110
/* 80353194  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80353198  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 8035319C  7F E0 22 14 */	add r31, r0, r4
/* 803531A0  38 7E 00 00 */	addi r3, r30, 0
/* 803531A4  38 80 00 00 */	li r4, 0
/* 803531A8  4B FF 06 C1 */	bl EXISelect
/* 803531AC  2C 03 00 00 */	cmpwi r3, 0
/* 803531B0  40 82 00 14 */	bne lbl_803531C4
/* 803531B4  7F C3 F3 78 */	mr r3, r30
/* 803531B8  4B FF 0F 65 */	bl EXIUnlock
/* 803531BC  38 60 FF FD */	li r3, -3
/* 803531C0  48 00 02 3C */	b lbl_803533FC
lbl_803531C4:
/* 803531C4  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 803531C8  4B FE 7A 75 */	bl OSCancelAlarm
/* 803531CC  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 803531D0  2C 00 00 F3 */	cmpwi r0, 0xf3
/* 803531D4  41 82 01 34 */	beq lbl_80353308
/* 803531D8  40 80 00 14 */	bge lbl_803531EC
/* 803531DC  2C 00 00 F1 */	cmpwi r0, 0xf1
/* 803531E0  41 82 00 C4 */	beq lbl_803532A4
/* 803531E4  40 80 00 14 */	bge lbl_803531F8
/* 803531E8  48 00 01 20 */	b lbl_80353308
lbl_803531EC:
/* 803531EC  2C 00 00 F5 */	cmpwi r0, 0xf5
/* 803531F0  40 80 01 18 */	bge lbl_80353308
/* 803531F4  48 00 00 3C */	b lbl_80353230
lbl_803531F8:
/* 803531F8  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 803531FC  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80353200  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 80353204  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 80353208  54 00 F0 BE */	srwi r0, r0, 2
/* 8035320C  38 84 4D D3 */	addi r4, r4, 0x4DD3 /* 0x10624DD3@l */
/* 80353210  7C 04 00 16 */	mulhwu r0, r4, r0
/* 80353214  54 00 D1 BE */	srwi r0, r0, 6
/* 80353218  1C C0 00 64 */	mulli r6, r0, 0x64
/* 8035321C  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 80353220  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80353224  38 A0 00 00 */	li r5, 0
/* 80353228  4B FE 79 31 */	bl OSSetAlarm
/* 8035322C  48 00 00 DC */	b lbl_80353308
lbl_80353230:
/* 80353230  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 80353234  28 00 00 80 */	cmplwi r0, 0x80
/* 80353238  40 81 00 6C */	ble lbl_803532A4
/* 8035323C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80353240  A0 9F 00 10 */	lhz r4, 0x10(r31)
/* 80353244  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80353248  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 8035324C  7C 89 36 70 */	srawi r9, r4, 6
/* 80353250  54 07 F0 BE */	srwi r7, r0, 2
/* 80353254  38 00 00 02 */	li r0, 2
/* 80353258  38 80 00 00 */	li r4, 0
/* 8035325C  7D 04 01 D6 */	mullw r8, r4, r0
/* 80353260  7C C7 00 16 */	mulhwu r6, r7, r0
/* 80353264  7D 08 32 14 */	add r8, r8, r6
/* 80353268  7C A7 01 D6 */	mullw r5, r7, r0
/* 8035326C  7D 29 01 94 */	addze r9, r9
/* 80353270  7C C7 21 D6 */	mullw r6, r7, r4
/* 80353274  7D 20 FE 70 */	srawi r0, r9, 0x1f
/* 80353278  7C 80 29 D6 */	mullw r4, r0, r5
/* 8035327C  7C 09 28 16 */	mulhwu r0, r9, r5
/* 80353280  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 80353284  7C 68 32 14 */	add r3, r8, r6
/* 80353288  7C 84 02 14 */	add r4, r4, r0
/* 8035328C  7C 09 19 D6 */	mullw r0, r9, r3
/* 80353290  7C C9 29 D6 */	mullw r6, r9, r5
/* 80353294  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80353298  7C A4 02 14 */	add r5, r4, r0
/* 8035329C  4B FE 78 BD */	bl OSSetAlarm
/* 803532A0  48 00 00 68 */	b lbl_80353308
lbl_803532A4:
/* 803532A4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 803532A8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803532AC  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 803532B0  3C 60 80 35 */	lis r3, TimeoutHandler@ha /* 0x803530D0@ha */
/* 803532B4  7C 89 6E 70 */	srawi r9, r4, 0xd
/* 803532B8  54 07 F0 BE */	srwi r7, r0, 2
/* 803532BC  38 00 00 02 */	li r0, 2
/* 803532C0  38 80 00 00 */	li r4, 0
/* 803532C4  7D 04 01 D6 */	mullw r8, r4, r0
/* 803532C8  7C C7 00 16 */	mulhwu r6, r7, r0
/* 803532CC  7D 08 32 14 */	add r8, r8, r6
/* 803532D0  7C A7 01 D6 */	mullw r5, r7, r0
/* 803532D4  7D 29 01 94 */	addze r9, r9
/* 803532D8  7C C7 21 D6 */	mullw r6, r7, r4
/* 803532DC  7D 20 FE 70 */	srawi r0, r9, 0x1f
/* 803532E0  7C 80 29 D6 */	mullw r4, r0, r5
/* 803532E4  7C 09 28 16 */	mulhwu r0, r9, r5
/* 803532E8  38 E3 30 D0 */	addi r7, r3, TimeoutHandler@l /* 0x803530D0@l */
/* 803532EC  7C 68 32 14 */	add r3, r8, r6
/* 803532F0  7C 84 02 14 */	add r4, r4, r0
/* 803532F4  7C 09 19 D6 */	mullw r0, r9, r3
/* 803532F8  7C C9 29 D6 */	mullw r6, r9, r5
/* 803532FC  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80353300  7C A4 02 14 */	add r5, r4, r0
/* 80353304  4B FE 78 55 */	bl OSSetAlarm
lbl_80353308:
/* 80353308  80 BF 00 A0 */	lwz r5, 0xa0(r31)
/* 8035330C  38 7E 00 00 */	addi r3, r30, 0
/* 80353310  38 9F 00 94 */	addi r4, r31, 0x94
/* 80353314  38 C0 00 01 */	li r6, 1
/* 80353318  4B FE FC 45 */	bl EXIImmEx
/* 8035331C  2C 03 00 00 */	cmpwi r3, 0
/* 80353320  40 82 00 1C */	bne lbl_8035333C
/* 80353324  7F C3 F3 78 */	mr r3, r30
/* 80353328  4B FF 06 6D */	bl EXIDeselect
/* 8035332C  7F C3 F3 78 */	mr r3, r30
/* 80353330  4B FF 0D ED */	bl EXIUnlock
/* 80353334  38 60 FF FD */	li r3, -3
/* 80353338  48 00 00 C4 */	b lbl_803533FC
lbl_8035333C:
/* 8035333C  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 80353340  28 00 00 52 */	cmplwi r0, 0x52
/* 80353344  40 82 00 3C */	bne lbl_80353380
/* 80353348  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 8035334C  7F C3 F3 78 */	mr r3, r30
/* 80353350  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80353354  38 C0 00 01 */	li r6, 1
/* 80353358  38 84 02 00 */	addi r4, r4, 0x200
/* 8035335C  4B FE FC 01 */	bl EXIImmEx
/* 80353360  2C 03 00 00 */	cmpwi r3, 0
/* 80353364  40 82 00 1C */	bne lbl_80353380
/* 80353368  7F C3 F3 78 */	mr r3, r30
/* 8035336C  4B FF 06 29 */	bl EXIDeselect
/* 80353370  7F C3 F3 78 */	mr r3, r30
/* 80353374  4B FF 0D A9 */	bl EXIUnlock
/* 80353378  38 60 FF FD */	li r3, -3
/* 8035337C  48 00 00 80 */	b lbl_803533FC
lbl_80353380:
/* 80353380  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80353384  3C 03 00 01 */	addis r0, r3, 1
/* 80353388  28 00 FF FF */	cmplwi r0, 0xffff
/* 8035338C  40 82 00 1C */	bne lbl_803533A8
/* 80353390  7F C3 F3 78 */	mr r3, r30
/* 80353394  4B FF 06 01 */	bl EXIDeselect
/* 80353398  7F C3 F3 78 */	mr r3, r30
/* 8035339C  4B FF 0D 81 */	bl EXIUnlock
/* 803533A0  38 60 00 00 */	li r3, 0
/* 803533A4  48 00 00 58 */	b lbl_803533FC
lbl_803533A8:
/* 803533A8  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 803533AC  28 00 00 52 */	cmplwi r0, 0x52
/* 803533B0  40 82 00 0C */	bne lbl_803533BC
/* 803533B4  38 A0 02 00 */	li r5, 0x200
/* 803533B8  48 00 00 08 */	b lbl_803533C0
lbl_803533BC:
/* 803533BC  A0 BF 00 0A */	lhz r5, 0xa(r31)
lbl_803533C0:
/* 803533C0  3C 60 80 35 */	lis r3, __CARDTxHandler@ha /* 0x80352C58@ha */
/* 803533C4  80 9F 00 B4 */	lwz r4, 0xb4(r31)
/* 803533C8  38 E3 2C 58 */	addi r7, r3, __CARDTxHandler@l /* 0x80352C58@l */
/* 803533CC  80 DF 00 A4 */	lwz r6, 0xa4(r31)
/* 803533D0  7F C3 F3 78 */	mr r3, r30
/* 803533D4  4B FE FC 29 */	bl EXIDma
/* 803533D8  2C 03 00 00 */	cmpwi r3, 0
/* 803533DC  40 82 00 1C */	bne lbl_803533F8
/* 803533E0  7F C3 F3 78 */	mr r3, r30
/* 803533E4  4B FF 05 B1 */	bl EXIDeselect
/* 803533E8  7F C3 F3 78 */	mr r3, r30
/* 803533EC  4B FF 0D 31 */	bl EXIUnlock
/* 803533F0  38 60 FF FD */	li r3, -3
/* 803533F4  48 00 00 08 */	b lbl_803533FC
lbl_803533F8:
/* 803533F8  38 60 00 00 */	li r3, 0
lbl_803533FC:
/* 803533FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80353400  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80353404  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80353408  38 21 00 18 */	addi r1, r1, 0x18
/* 8035340C  7C 08 03 A6 */	mtlr r0
/* 80353410  4E 80 00 20 */	blr 
