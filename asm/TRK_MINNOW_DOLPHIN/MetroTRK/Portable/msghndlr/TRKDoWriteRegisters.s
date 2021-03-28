lbl_8036E134:
/* 8036E134  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8036E138  7C 08 02 A6 */	mflr r0
/* 8036E13C  38 80 00 00 */	li r4, 0
/* 8036E140  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8036E144  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8036E148  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8036E14C  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 8036E150  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 8036E154  7C 7C 1B 78 */	mr r28, r3
/* 8036E158  8B E3 00 18 */	lbz r31, 0x18(r3)
/* 8036E15C  A3 C3 00 1C */	lhz r30, 0x1c(r3)
/* 8036E160  A3 A3 00 20 */	lhz r29, 0x20(r3)
/* 8036E164  4B FF F4 B9 */	bl TRKSetBufferPosition
/* 8036E168  7C 1E E8 40 */	cmplw r30, r29
/* 8036E16C  40 81 00 40 */	ble lbl_8036E1AC
/* 8036E170  38 61 00 4C */	addi r3, r1, 0x4c
/* 8036E174  38 80 00 00 */	li r4, 0
/* 8036E178  38 A0 00 40 */	li r5, 0x40
/* 8036E17C  4B C9 52 DD */	bl memset
/* 8036E180  38 60 00 80 */	li r3, 0x80
/* 8036E184  38 A0 00 40 */	li r5, 0x40
/* 8036E188  38 00 00 14 */	li r0, 0x14
/* 8036E18C  98 61 00 50 */	stb r3, 0x50(r1)
/* 8036E190  38 61 00 4C */	addi r3, r1, 0x4c
/* 8036E194  38 80 00 40 */	li r4, 0x40
/* 8036E198  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8036E19C  98 01 00 54 */	stb r0, 0x54(r1)
/* 8036E1A0  48 00 3B C9 */	bl TRKWriteUARTN
/* 8036E1A4  38 60 00 00 */	li r3, 0
/* 8036E1A8  48 00 01 FC */	b lbl_8036E3A4
lbl_8036E1AC:
/* 8036E1AC  7F 83 E3 78 */	mr r3, r28
/* 8036E1B0  38 80 00 40 */	li r4, 0x40
/* 8036E1B4  4B FF F4 69 */	bl TRKSetBufferPosition
/* 8036E1B8  2C 1F 00 02 */	cmpwi r31, 2
/* 8036E1BC  41 82 00 64 */	beq lbl_8036E220
/* 8036E1C0  40 80 00 14 */	bge lbl_8036E1D4
/* 8036E1C4  2C 1F 00 00 */	cmpwi r31, 0
/* 8036E1C8  41 82 00 18 */	beq lbl_8036E1E0
/* 8036E1CC  40 80 00 34 */	bge lbl_8036E200
/* 8036E1D0  48 00 00 90 */	b lbl_8036E260
lbl_8036E1D4:
/* 8036E1D4  2C 1F 00 04 */	cmpwi r31, 4
/* 8036E1D8  40 80 00 88 */	bge lbl_8036E260
/* 8036E1DC  48 00 00 64 */	b lbl_8036E240
lbl_8036E1E0:
/* 8036E1E0  7F C3 F3 78 */	mr r3, r30
/* 8036E1E4  7F A4 EB 78 */	mr r4, r29
/* 8036E1E8  7F 85 E3 78 */	mr r5, r28
/* 8036E1EC  38 C1 00 08 */	addi r6, r1, 8
/* 8036E1F0  38 E0 00 00 */	li r7, 0
/* 8036E1F4  48 00 2A A1 */	bl TRKTargetAccessDefault
/* 8036E1F8  7C 7F 1B 78 */	mr r31, r3
/* 8036E1FC  48 00 00 68 */	b lbl_8036E264
lbl_8036E200:
/* 8036E200  7F C3 F3 78 */	mr r3, r30
/* 8036E204  7F A4 EB 78 */	mr r4, r29
/* 8036E208  7F 85 E3 78 */	mr r5, r28
/* 8036E20C  38 C1 00 08 */	addi r6, r1, 8
/* 8036E210  38 E0 00 00 */	li r7, 0
/* 8036E214  48 00 25 75 */	bl TRKTargetAccessFP
/* 8036E218  7C 7F 1B 78 */	mr r31, r3
/* 8036E21C  48 00 00 48 */	b lbl_8036E264
lbl_8036E220:
/* 8036E220  7F C3 F3 78 */	mr r3, r30
/* 8036E224  7F A4 EB 78 */	mr r4, r29
/* 8036E228  7F 85 E3 78 */	mr r5, r28
/* 8036E22C  38 C1 00 08 */	addi r6, r1, 8
/* 8036E230  38 E0 00 00 */	li r7, 0
/* 8036E234  48 00 23 E5 */	bl TRKTargetAccessExtended1
/* 8036E238  7C 7F 1B 78 */	mr r31, r3
/* 8036E23C  48 00 00 28 */	b lbl_8036E264
lbl_8036E240:
/* 8036E240  7F C3 F3 78 */	mr r3, r30
/* 8036E244  7F A4 EB 78 */	mr r4, r29
/* 8036E248  7F 85 E3 78 */	mr r5, r28
/* 8036E24C  38 C1 00 08 */	addi r6, r1, 8
/* 8036E250  38 E0 00 00 */	li r7, 0
/* 8036E254  48 00 1F 8D */	bl TRKTargetAccessExtended2
/* 8036E258  7C 7F 1B 78 */	mr r31, r3
/* 8036E25C  48 00 00 08 */	b lbl_8036E264
lbl_8036E260:
/* 8036E260  3B E0 07 03 */	li r31, 0x703
lbl_8036E264:
/* 8036E264  7F 83 E3 78 */	mr r3, r28
/* 8036E268  38 80 00 00 */	li r4, 0
/* 8036E26C  4B FF F3 E1 */	bl TRKResetBuffer
/* 8036E270  2C 1F 00 00 */	cmpwi r31, 0
/* 8036E274  40 82 00 3C */	bne lbl_8036E2B0
/* 8036E278  38 61 00 8C */	addi r3, r1, 0x8c
/* 8036E27C  38 80 00 00 */	li r4, 0
/* 8036E280  38 A0 00 40 */	li r5, 0x40
/* 8036E284  4B C9 51 D5 */	bl memset
/* 8036E288  38 60 00 40 */	li r3, 0x40
/* 8036E28C  38 00 00 80 */	li r0, 0x80
/* 8036E290  90 61 00 8C */	stw r3, 0x8c(r1)
/* 8036E294  7F 83 E3 78 */	mr r3, r28
/* 8036E298  38 81 00 8C */	addi r4, r1, 0x8c
/* 8036E29C  38 A0 00 40 */	li r5, 0x40
/* 8036E2A0  98 01 00 90 */	stb r0, 0x90(r1)
/* 8036E2A4  9B E1 00 94 */	stb r31, 0x94(r1)
/* 8036E2A8  4B FF F2 D1 */	bl TRKAppendBuffer
/* 8036E2AC  7C 7F 1B 78 */	mr r31, r3
lbl_8036E2B0:
/* 8036E2B0  2C 1F 00 00 */	cmpwi r31, 0
/* 8036E2B4  41 82 00 B4 */	beq lbl_8036E368
/* 8036E2B8  2C 1F 07 03 */	cmpwi r31, 0x703
/* 8036E2BC  41 82 00 38 */	beq lbl_8036E2F4
/* 8036E2C0  40 80 00 1C */	bge lbl_8036E2DC
/* 8036E2C4  2C 1F 07 01 */	cmpwi r31, 0x701
/* 8036E2C8  41 82 00 34 */	beq lbl_8036E2FC
/* 8036E2CC  40 80 00 40 */	bge lbl_8036E30C
/* 8036E2D0  2C 1F 03 02 */	cmpwi r31, 0x302
/* 8036E2D4  41 82 00 30 */	beq lbl_8036E304
/* 8036E2D8  48 00 00 54 */	b lbl_8036E32C
lbl_8036E2DC:
/* 8036E2DC  2C 1F 07 06 */	cmpwi r31, 0x706
/* 8036E2E0  41 82 00 44 */	beq lbl_8036E324
/* 8036E2E4  40 80 00 48 */	bge lbl_8036E32C
/* 8036E2E8  2C 1F 07 05 */	cmpwi r31, 0x705
/* 8036E2EC  40 80 00 30 */	bge lbl_8036E31C
/* 8036E2F0  48 00 00 24 */	b lbl_8036E314
lbl_8036E2F4:
/* 8036E2F4  3B E0 00 12 */	li r31, 0x12
/* 8036E2F8  48 00 00 38 */	b lbl_8036E330
lbl_8036E2FC:
/* 8036E2FC  3B E0 00 14 */	li r31, 0x14
/* 8036E300  48 00 00 30 */	b lbl_8036E330
lbl_8036E304:
/* 8036E304  3B E0 00 02 */	li r31, 2
/* 8036E308  48 00 00 28 */	b lbl_8036E330
lbl_8036E30C:
/* 8036E30C  3B E0 00 15 */	li r31, 0x15
/* 8036E310  48 00 00 20 */	b lbl_8036E330
lbl_8036E314:
/* 8036E314  3B E0 00 21 */	li r31, 0x21
/* 8036E318  48 00 00 18 */	b lbl_8036E330
lbl_8036E31C:
/* 8036E31C  3B E0 00 22 */	li r31, 0x22
/* 8036E320  48 00 00 10 */	b lbl_8036E330
lbl_8036E324:
/* 8036E324  3B E0 00 20 */	li r31, 0x20
/* 8036E328  48 00 00 08 */	b lbl_8036E330
lbl_8036E32C:
/* 8036E32C  3B E0 00 03 */	li r31, 3
lbl_8036E330:
/* 8036E330  38 61 00 0C */	addi r3, r1, 0xc
/* 8036E334  38 80 00 00 */	li r4, 0
/* 8036E338  38 A0 00 40 */	li r5, 0x40
/* 8036E33C  4B C9 51 1D */	bl memset
/* 8036E340  38 60 00 80 */	li r3, 0x80
/* 8036E344  38 00 00 40 */	li r0, 0x40
/* 8036E348  98 61 00 10 */	stb r3, 0x10(r1)
/* 8036E34C  38 61 00 0C */	addi r3, r1, 0xc
/* 8036E350  38 80 00 40 */	li r4, 0x40
/* 8036E354  90 01 00 0C */	stw r0, 0xc(r1)
/* 8036E358  9B E1 00 14 */	stb r31, 0x14(r1)
/* 8036E35C  48 00 3A 0D */	bl TRKWriteUARTN
/* 8036E360  38 60 00 00 */	li r3, 0
/* 8036E364  48 00 00 40 */	b lbl_8036E3A4
lbl_8036E368:
/* 8036E368  3C 80 80 3A */	lis r4, lit_403@ha
/* 8036E36C  38 60 00 01 */	li r3, 1
/* 8036E370  38 84 29 30 */	addi r4, r4, lit_403@l
/* 8036E374  4C C6 31 82 */	crclr 6
/* 8036E378  48 00 48 DD */	bl MWTRACE
/* 8036E37C  7F 83 E3 78 */	mr r3, r28
/* 8036E380  4B FF EC 59 */	bl TRKMessageSend
/* 8036E384  7C 7F 1B 78 */	mr r31, r3
/* 8036E388  3C 80 80 3A */	lis r4, lit_404@ha
/* 8036E38C  38 60 00 01 */	li r3, 1
/* 8036E390  38 84 29 50 */	addi r4, r4, lit_404@l
/* 8036E394  7F E5 FB 78 */	mr r5, r31
/* 8036E398  4C C6 31 82 */	crclr 6
/* 8036E39C  48 00 48 B9 */	bl MWTRACE
/* 8036E3A0  7F E3 FB 78 */	mr r3, r31
lbl_8036E3A4:
/* 8036E3A4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8036E3A8  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8036E3AC  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8036E3B0  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 8036E3B4  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 8036E3B8  7C 08 03 A6 */	mtlr r0
/* 8036E3BC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8036E3C0  4E 80 00 20 */	blr 
