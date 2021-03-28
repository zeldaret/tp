lbl_8005115C:
/* 8005115C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80051160  7C 08 02 A6 */	mflr r0
/* 80051164  90 01 00 54 */	stw r0, 0x54(r1)
/* 80051168  39 61 00 50 */	addi r11, r1, 0x50
/* 8005116C  48 31 10 55 */	bl _savegpr_22
/* 80051170  7C 7C 1B 78 */	mr r28, r3
/* 80051174  7C 9D 23 78 */	mr r29, r4
/* 80051178  7C B6 2B 78 */	mr r22, r5
/* 8005117C  7C DE 33 78 */	mr r30, r6
/* 80051180  7C FF 3B 78 */	mr r31, r7
/* 80051184  7D 37 4B 78 */	mr r23, r9
/* 80051188  7D 58 53 78 */	mr r24, r10
/* 8005118C  83 21 00 58 */	lwz r25, 0x58(r1)
/* 80051190  81 41 00 5C */	lwz r10, 0x5c(r1)
/* 80051194  8B 41 00 63 */	lbz r26, 0x63(r1)
/* 80051198  38 00 00 FF */	li r0, 0xff
/* 8005119C  98 03 00 78 */	stb r0, 0x78(r3)
/* 800511A0  98 03 00 79 */	stb r0, 0x79(r3)
/* 800511A4  98 03 00 7A */	stb r0, 0x7a(r3)
/* 800511A8  98 03 00 7B */	stb r0, 0x7b(r3)
/* 800511AC  93 41 00 08 */	stw r26, 8(r1)
/* 800511B0  7F 29 CB 78 */	mr r9, r25
/* 800511B4  4B FF FE 55 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 800511B8  7C 7B 1B 78 */	mr r27, r3
/* 800511BC  2C 1B 00 03 */	cmpwi r27, 3
/* 800511C0  41 82 00 AC */	beq lbl_8005126C
/* 800511C4  C0 16 00 00 */	lfs f0, 0(r22)
/* 800511C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800511CC  C0 16 00 04 */	lfs f0, 4(r22)
/* 800511D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800511D4  C0 16 00 08 */	lfs f0, 8(r22)
/* 800511D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800511DC  2C 1B 00 01 */	cmpwi r27, 1
/* 800511E0  40 82 00 10 */	bne lbl_800511F0
/* 800511E4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 800511E8  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 800511EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_800511F0:
/* 800511F0  93 21 00 08 */	stw r25, 8(r1)
/* 800511F4  93 41 00 0C */	stw r26, 0xc(r1)
/* 800511F8  38 1C 00 78 */	addi r0, r28, 0x78
/* 800511FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051200  38 1C 00 7C */	addi r0, r28, 0x7c
/* 80051204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051208  7F 83 E3 78 */	mr r3, r28
/* 8005120C  38 9C 00 38 */	addi r4, r28, 0x38
/* 80051210  7F 65 DB 78 */	mr r5, r27
/* 80051214  7F A6 EB 78 */	mr r6, r29
/* 80051218  38 E1 00 18 */	addi r7, r1, 0x18
/* 8005121C  7F C8 F3 78 */	mr r8, r30
/* 80051220  7F E9 FB 78 */	mr r9, r31
/* 80051224  7E EA BB 78 */	mr r10, r23
/* 80051228  4B FF FC 55 */	bl setEffect__7dPaPo_cFPUliPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzScPUcPUc
/* 8005122C  93 21 00 08 */	stw r25, 8(r1)
/* 80051230  93 41 00 0C */	stw r26, 0xc(r1)
/* 80051234  38 1C 00 7A */	addi r0, r28, 0x7a
/* 80051238  90 01 00 10 */	stw r0, 0x10(r1)
/* 8005123C  38 1C 00 7D */	addi r0, r28, 0x7d
/* 80051240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051244  7F 83 E3 78 */	mr r3, r28
/* 80051248  38 9C 00 58 */	addi r4, r28, 0x58
/* 8005124C  7F 65 DB 78 */	mr r5, r27
/* 80051250  7F A6 EB 78 */	mr r6, r29
/* 80051254  38 E1 00 18 */	addi r7, r1, 0x18
/* 80051258  7F C8 F3 78 */	mr r8, r30
/* 8005125C  7F E9 FB 78 */	mr r9, r31
/* 80051260  7F 0A C3 78 */	mr r10, r24
/* 80051264  4B FF FC 19 */	bl setEffect__7dPaPo_cFPUliPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzScPUcPUc
/* 80051268  48 00 00 10 */	b lbl_80051278
lbl_8005126C:
/* 8005126C  38 00 00 00 */	li r0, 0
/* 80051270  98 1C 00 7C */	stb r0, 0x7c(r28)
/* 80051274  98 1C 00 7D */	stb r0, 0x7d(r28)
lbl_80051278:
/* 80051278  7F 63 DB 78 */	mr r3, r27
/* 8005127C  39 61 00 50 */	addi r11, r1, 0x50
/* 80051280  48 31 0F 8D */	bl _restgpr_22
/* 80051284  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80051288  7C 08 03 A6 */	mtlr r0
/* 8005128C  38 21 00 50 */	addi r1, r1, 0x50
/* 80051290  4E 80 00 20 */	blr 
