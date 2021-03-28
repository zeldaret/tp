lbl_8036D9D4:
/* 8036D9D4  94 21 F7 20 */	stwu r1, -0x8e0(r1)
/* 8036D9D8  7C 08 02 A6 */	mflr r0
/* 8036D9DC  3C 60 80 3A */	lis r3, lit_121@ha
/* 8036D9E0  90 01 08 E4 */	stw r0, 0x8e4(r1)
/* 8036D9E4  93 E1 08 DC */	stw r31, 0x8dc(r1)
/* 8036D9E8  3B E3 27 00 */	addi r31, r3, lit_121@l
/* 8036D9EC  93 C1 08 D8 */	stw r30, 0x8d8(r1)
/* 8036D9F0  48 00 43 F1 */	bl TRKPollUART
/* 8036D9F4  2C 03 00 00 */	cmpwi r3, 0
/* 8036D9F8  41 81 00 0C */	bgt lbl_8036DA04
/* 8036D9FC  38 60 FF FF */	li r3, -1
/* 8036DA00  48 00 00 F8 */	b lbl_8036DAF8
lbl_8036DA04:
/* 8036DA04  38 61 00 0C */	addi r3, r1, 0xc
/* 8036DA08  38 81 00 08 */	addi r4, r1, 8
/* 8036DA0C  4B FF FD 11 */	bl TRKGetFreeBuffer
/* 8036DA10  7C 7E 1B 78 */	mr r30, r3
/* 8036DA14  38 9F 00 D0 */	addi r4, r31, 0xd0
/* 8036DA18  38 60 00 04 */	li r3, 4
/* 8036DA1C  7F C5 F3 78 */	mr r5, r30
/* 8036DA20  4C C6 31 82 */	crclr 6
/* 8036DA24  48 00 52 31 */	bl MWTRACE
/* 8036DA28  80 61 00 08 */	lwz r3, 8(r1)
/* 8036DA2C  38 80 00 00 */	li r4, 0
/* 8036DA30  4B FF FB ED */	bl TRKSetBufferPosition
/* 8036DA34  38 61 00 10 */	addi r3, r1, 0x10
/* 8036DA38  38 80 00 40 */	li r4, 0x40
/* 8036DA3C  48 00 43 69 */	bl TRKReadUARTN
/* 8036DA40  2C 03 00 00 */	cmpwi r3, 0
/* 8036DA44  40 82 00 80 */	bne lbl_8036DAC4
/* 8036DA48  80 61 00 08 */	lwz r3, 8(r1)
/* 8036DA4C  38 81 00 10 */	addi r4, r1, 0x10
/* 8036DA50  38 A0 00 40 */	li r5, 0x40
/* 8036DA54  4B FF F9 35 */	bl TRKAppendBuffer_ui8
/* 8036DA58  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036DA5C  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8036DA60  34 A3 FF C0 */	addic. r5, r3, -64
/* 8036DA64  40 81 00 7C */	ble lbl_8036DAE0
/* 8036DA68  38 9F 00 F4 */	addi r4, r31, 0xf4
/* 8036DA6C  38 60 00 01 */	li r3, 1
/* 8036DA70  4C C6 31 82 */	crclr 6
/* 8036DA74  48 00 51 E1 */	bl MWTRACE
/* 8036DA78  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8036DA7C  38 61 00 50 */	addi r3, r1, 0x50
/* 8036DA80  38 84 FF C0 */	addi r4, r4, -64
/* 8036DA84  48 00 43 21 */	bl TRKReadUARTN
/* 8036DA88  2C 03 00 00 */	cmpwi r3, 0
/* 8036DA8C  40 82 00 18 */	bne lbl_8036DAA4
/* 8036DA90  80 61 00 08 */	lwz r3, 8(r1)
/* 8036DA94  38 81 00 50 */	addi r4, r1, 0x50
/* 8036DA98  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8036DA9C  4B FF F8 ED */	bl TRKAppendBuffer_ui8
/* 8036DAA0  48 00 00 40 */	b lbl_8036DAE0
lbl_8036DAA4:
/* 8036DAA4  38 9F 01 10 */	addi r4, r31, 0x110
/* 8036DAA8  38 60 00 08 */	li r3, 8
/* 8036DAAC  4C C6 31 82 */	crclr 6
/* 8036DAB0  48 00 51 A5 */	bl MWTRACE
/* 8036DAB4  7F C3 F3 78 */	mr r3, r30
/* 8036DAB8  4B FF FB D5 */	bl TRKReleaseBuffer
/* 8036DABC  3B C0 FF FF */	li r30, -1
/* 8036DAC0  48 00 00 20 */	b lbl_8036DAE0
lbl_8036DAC4:
/* 8036DAC4  38 9F 01 44 */	addi r4, r31, 0x144
/* 8036DAC8  38 60 00 08 */	li r3, 8
/* 8036DACC  4C C6 31 82 */	crclr 6
/* 8036DAD0  48 00 51 85 */	bl MWTRACE
/* 8036DAD4  7F C3 F3 78 */	mr r3, r30
/* 8036DAD8  4B FF FB B5 */	bl TRKReleaseBuffer
/* 8036DADC  3B C0 FF FF */	li r30, -1
lbl_8036DAE0:
/* 8036DAE0  7F C5 F3 78 */	mr r5, r30
/* 8036DAE4  38 9F 01 6C */	addi r4, r31, 0x16c
/* 8036DAE8  38 60 00 01 */	li r3, 1
/* 8036DAEC  4C C6 31 82 */	crclr 6
/* 8036DAF0  48 00 51 65 */	bl MWTRACE
/* 8036DAF4  7F C3 F3 78 */	mr r3, r30
lbl_8036DAF8:
/* 8036DAF8  80 01 08 E4 */	lwz r0, 0x8e4(r1)
/* 8036DAFC  83 E1 08 DC */	lwz r31, 0x8dc(r1)
/* 8036DB00  83 C1 08 D8 */	lwz r30, 0x8d8(r1)
/* 8036DB04  7C 08 03 A6 */	mtlr r0
/* 8036DB08  38 21 08 E0 */	addi r1, r1, 0x8e0
/* 8036DB0C  4E 80 00 20 */	blr 
