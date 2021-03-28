lbl_80370C94:
/* 80370C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80370C98  7C 08 02 A6 */	mflr r0
/* 80370C9C  28 04 00 24 */	cmplwi r4, 0x24
/* 80370CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80370CA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80370CA8  7C DF 33 78 */	mr r31, r6
/* 80370CAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80370CB0  40 81 00 0C */	ble lbl_80370CBC
/* 80370CB4  38 60 07 01 */	li r3, 0x701
/* 80370CB8  48 00 00 B8 */	b lbl_80370D70
lbl_80370CBC:
/* 80370CBC  3C C0 80 3D */	lis r6, gTRKExceptionStatus@ha
/* 80370CC0  7C 83 20 50 */	subf r4, r3, r4
/* 80370CC4  3B C6 32 44 */	addi r30, r6, gTRKExceptionStatus@l
/* 80370CC8  3C C0 80 45 */	lis r6, gTRKCPUState@ha
/* 80370CCC  81 3E 00 0C */	lwz r9, 0xc(r30)
/* 80370CD0  39 00 00 00 */	li r8, 0
/* 80370CD4  39 84 00 01 */	addi r12, r4, 1
/* 80370CD8  81 7E 00 00 */	lwz r11, 0(r30)
/* 80370CDC  81 5E 00 04 */	lwz r10, 4(r30)
/* 80370CE0  2C 07 00 00 */	cmpwi r7, 0
/* 80370CE4  80 FE 00 08 */	lwz r7, 8(r30)
/* 80370CE8  55 80 10 3A */	slwi r0, r12, 2
/* 80370CEC  99 1E 00 0D */	stb r8, 0xd(r30)
/* 80370CF0  54 64 10 3A */	slwi r4, r3, 2
/* 80370CF4  38 66 F3 38 */	addi r3, r6, gTRKCPUState@l
/* 80370CF8  91 61 00 08 */	stw r11, 8(r1)
/* 80370CFC  7C 83 22 14 */	add r4, r3, r4
/* 80370D00  91 41 00 0C */	stw r10, 0xc(r1)
/* 80370D04  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80370D08  91 21 00 14 */	stw r9, 0x14(r1)
/* 80370D0C  90 1F 00 00 */	stw r0, 0(r31)
/* 80370D10  41 82 00 14 */	beq lbl_80370D24
/* 80370D14  7C A3 2B 78 */	mr r3, r5
/* 80370D18  7D 85 63 78 */	mr r5, r12
/* 80370D1C  4B FF C5 71 */	bl TRKAppendBuffer_ui32
/* 80370D20  48 00 00 10 */	b lbl_80370D30
lbl_80370D24:
/* 80370D24  7C A3 2B 78 */	mr r3, r5
/* 80370D28  7D 85 63 78 */	mr r5, r12
/* 80370D2C  4B FF C2 F1 */	bl TRKReadBuffer_ui32
lbl_80370D30:
/* 80370D30  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 80370D34  28 00 00 00 */	cmplwi r0, 0
/* 80370D38  41 82 00 10 */	beq lbl_80370D48
/* 80370D3C  38 00 00 00 */	li r0, 0
/* 80370D40  38 60 07 02 */	li r3, 0x702
/* 80370D44  90 1F 00 00 */	stw r0, 0(r31)
lbl_80370D48:
/* 80370D48  3C 80 80 3D */	lis r4, gTRKExceptionStatus@ha
/* 80370D4C  80 C1 00 08 */	lwz r6, 8(r1)
/* 80370D50  38 E4 32 44 */	addi r7, r4, gTRKExceptionStatus@l
/* 80370D54  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80370D58  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80370D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80370D60  90 C7 00 00 */	stw r6, 0(r7)
/* 80370D64  90 A7 00 04 */	stw r5, 4(r7)
/* 80370D68  90 87 00 08 */	stw r4, 8(r7)
/* 80370D6C  90 07 00 0C */	stw r0, 0xc(r7)
lbl_80370D70:
/* 80370D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80370D74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80370D78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80370D7C  7C 08 03 A6 */	mtlr r0
/* 80370D80  38 21 00 20 */	addi r1, r1, 0x20
/* 80370D84  4E 80 00 20 */	blr 
