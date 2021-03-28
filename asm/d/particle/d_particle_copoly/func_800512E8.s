lbl_800512E8:
/* 800512E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800512EC  7C 08 02 A6 */	mflr r0
/* 800512F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800512F4  39 61 00 50 */	addi r11, r1, 0x50
/* 800512F8  48 31 0E C9 */	bl _savegpr_22
/* 800512FC  7C 7C 1B 78 */	mr r28, r3
/* 80051300  7C 9D 23 78 */	mr r29, r4
/* 80051304  7C B6 2B 78 */	mr r22, r5
/* 80051308  7C DE 33 78 */	mr r30, r6
/* 8005130C  7C FF 3B 78 */	mr r31, r7
/* 80051310  82 E1 00 58 */	lwz r23, 0x58(r1)
/* 80051314  83 01 00 5C */	lwz r24, 0x5c(r1)
/* 80051318  83 21 00 60 */	lwz r25, 0x60(r1)
/* 8005131C  81 61 00 64 */	lwz r11, 0x64(r1)
/* 80051320  8B 41 00 6B */	lbz r26, 0x6b(r1)
/* 80051324  38 00 00 FF */	li r0, 0xff
/* 80051328  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 8005132C  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80051330  98 03 00 C2 */	stb r0, 0xc2(r3)
/* 80051334  98 03 00 C3 */	stb r0, 0xc3(r3)
/* 80051338  93 21 00 08 */	stw r25, 8(r1)
/* 8005133C  91 61 00 0C */	stw r11, 0xc(r1)
/* 80051340  93 41 00 10 */	stw r26, 0x10(r1)
/* 80051344  4B FF FE 19 */	bl setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 80051348  7C 7B 1B 78 */	mr r27, r3
/* 8005134C  2C 1B 00 03 */	cmpwi r27, 3
/* 80051350  41 82 00 AC */	beq lbl_800513FC
/* 80051354  C0 16 00 00 */	lfs f0, 0(r22)
/* 80051358  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005135C  C0 16 00 04 */	lfs f0, 4(r22)
/* 80051360  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80051364  C0 16 00 08 */	lfs f0, 8(r22)
/* 80051368  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8005136C  2C 1B 00 01 */	cmpwi r27, 1
/* 80051370  40 82 00 10 */	bne lbl_80051380
/* 80051374  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80051378  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 8005137C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80051380:
/* 80051380  93 21 00 08 */	stw r25, 8(r1)
/* 80051384  93 41 00 0C */	stw r26, 0xc(r1)
/* 80051388  38 1C 00 C0 */	addi r0, r28, 0xc0
/* 8005138C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051390  38 1C 00 C4 */	addi r0, r28, 0xc4
/* 80051394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051398  7F 83 E3 78 */	mr r3, r28
/* 8005139C  38 9C 00 80 */	addi r4, r28, 0x80
/* 800513A0  7F 65 DB 78 */	mr r5, r27
/* 800513A4  7F A6 EB 78 */	mr r6, r29
/* 800513A8  38 E1 00 18 */	addi r7, r1, 0x18
/* 800513AC  7F C8 F3 78 */	mr r8, r30
/* 800513B0  7F E9 FB 78 */	mr r9, r31
/* 800513B4  7E EA BB 78 */	mr r10, r23
/* 800513B8  4B FF FA C5 */	bl setEffect__7dPaPo_cFPUliPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzScPUcPUc
/* 800513BC  93 21 00 08 */	stw r25, 8(r1)
/* 800513C0  93 41 00 0C */	stw r26, 0xc(r1)
/* 800513C4  38 1C 00 C2 */	addi r0, r28, 0xc2
/* 800513C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 800513CC  38 1C 00 C5 */	addi r0, r28, 0xc5
/* 800513D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800513D4  7F 83 E3 78 */	mr r3, r28
/* 800513D8  38 9C 00 A0 */	addi r4, r28, 0xa0
/* 800513DC  7F 65 DB 78 */	mr r5, r27
/* 800513E0  7F A6 EB 78 */	mr r6, r29
/* 800513E4  38 E1 00 18 */	addi r7, r1, 0x18
/* 800513E8  7F C8 F3 78 */	mr r8, r30
/* 800513EC  7F E9 FB 78 */	mr r9, r31
/* 800513F0  7F 0A C3 78 */	mr r10, r24
/* 800513F4  4B FF FA 89 */	bl setEffect__7dPaPo_cFPUliPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzScPUcPUc
/* 800513F8  48 00 00 10 */	b lbl_80051408
lbl_800513FC:
/* 800513FC  38 00 00 00 */	li r0, 0
/* 80051400  98 1C 00 C4 */	stb r0, 0xc4(r28)
/* 80051404  98 1C 00 C5 */	stb r0, 0xc5(r28)
lbl_80051408:
/* 80051408  7F 63 DB 78 */	mr r3, r27
/* 8005140C  39 61 00 50 */	addi r11, r1, 0x50
/* 80051410  48 31 0D FD */	bl _restgpr_22
/* 80051414  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80051418  7C 08 03 A6 */	mtlr r0
/* 8005141C  38 21 00 50 */	addi r1, r1, 0x50
/* 80051420  4E 80 00 20 */	blr 
