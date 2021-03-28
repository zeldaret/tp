lbl_8000E834:
/* 8000E834  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000E838  7C 08 02 A6 */	mflr r0
/* 8000E83C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000E840  39 61 00 30 */	addi r11, r1, 0x30
/* 8000E844  48 35 39 7D */	bl _savegpr_22
/* 8000E848  7C 78 1B 78 */	mr r24, r3
/* 8000E84C  83 E3 00 6C */	lwz r31, 0x6c(r3)
/* 8000E850  83 C3 00 70 */	lwz r30, 0x70(r3)
/* 8000E854  83 A4 00 6C */	lwz r29, 0x6c(r4)
/* 8000E858  83 84 00 70 */	lwz r28, 0x70(r4)
/* 8000E85C  3A C0 00 00 */	li r22, 0
/* 8000E860  3B 40 00 00 */	li r26, 0
/* 8000E864  48 00 01 68 */	b lbl_8000E9CC
lbl_8000E868:
/* 8000E868  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000E86C  57 5B 2A F4 */	rlwinm r27, r26, 5, 0xb, 0x1a
/* 8000E870  7C 60 DA 14 */	add r3, r0, r27
/* 8000E874  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000E878  28 00 00 00 */	cmplwi r0, 0
/* 8000E87C  40 82 01 4C */	bne lbl_8000E9C8
/* 8000E880  3B 20 00 00 */	li r25, 0
/* 8000E884  48 00 01 34 */	b lbl_8000E9B8
lbl_8000E888:
/* 8000E888  7F 83 E3 78 */	mr r3, r28
/* 8000E88C  7F 24 CB 78 */	mr r4, r25
/* 8000E890  48 2D 02 69 */	bl getName__10JUTNameTabCFUs
/* 8000E894  7C 77 1B 78 */	mr r23, r3
/* 8000E898  7F C3 F3 78 */	mr r3, r30
/* 8000E89C  7F 44 D3 78 */	mr r4, r26
/* 8000E8A0  48 2D 02 59 */	bl getName__10JUTNameTabCFUs
/* 8000E8A4  7E E4 BB 78 */	mr r4, r23
/* 8000E8A8  48 35 A0 ED */	bl strcmp
/* 8000E8AC  2C 03 00 00 */	cmpwi r3, 0
/* 8000E8B0  40 82 01 04 */	bne lbl_8000E9B4
/* 8000E8B4  80 7D 00 04 */	lwz r3, 4(r29)
/* 8000E8B8  57 20 2A F4 */	rlwinm r0, r25, 5, 0xb, 0x1a
/* 8000E8BC  7C 83 02 14 */	add r4, r3, r0
/* 8000E8C0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8000E8C4  7C 60 DA 14 */	add r3, r0, r27
/* 8000E8C8  88 04 00 00 */	lbz r0, 0(r4)
/* 8000E8CC  98 03 00 00 */	stb r0, 0(r3)
/* 8000E8D0  88 04 00 01 */	lbz r0, 1(r4)
/* 8000E8D4  98 03 00 01 */	stb r0, 1(r3)
/* 8000E8D8  A0 04 00 02 */	lhz r0, 2(r4)
/* 8000E8DC  B0 03 00 02 */	sth r0, 2(r3)
/* 8000E8E0  A0 04 00 04 */	lhz r0, 4(r4)
/* 8000E8E4  B0 03 00 04 */	sth r0, 4(r3)
/* 8000E8E8  88 04 00 06 */	lbz r0, 6(r4)
/* 8000E8EC  98 03 00 06 */	stb r0, 6(r3)
/* 8000E8F0  88 04 00 07 */	lbz r0, 7(r4)
/* 8000E8F4  98 03 00 07 */	stb r0, 7(r3)
/* 8000E8F8  88 04 00 08 */	lbz r0, 8(r4)
/* 8000E8FC  98 03 00 08 */	stb r0, 8(r3)
/* 8000E900  88 04 00 09 */	lbz r0, 9(r4)
/* 8000E904  98 03 00 09 */	stb r0, 9(r3)
/* 8000E908  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8000E90C  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8000E910  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8000E914  90 03 00 0C */	stw r0, 0xc(r3)
/* 8000E918  88 04 00 10 */	lbz r0, 0x10(r4)
/* 8000E91C  98 03 00 10 */	stb r0, 0x10(r3)
/* 8000E920  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8000E924  98 03 00 11 */	stb r0, 0x11(r3)
/* 8000E928  88 04 00 12 */	lbz r0, 0x12(r4)
/* 8000E92C  98 03 00 12 */	stb r0, 0x12(r3)
/* 8000E930  88 04 00 13 */	lbz r0, 0x13(r4)
/* 8000E934  98 03 00 13 */	stb r0, 0x13(r3)
/* 8000E938  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8000E93C  98 03 00 14 */	stb r0, 0x14(r3)
/* 8000E940  88 04 00 15 */	lbz r0, 0x15(r4)
/* 8000E944  98 03 00 15 */	stb r0, 0x15(r3)
/* 8000E948  88 04 00 16 */	lbz r0, 0x16(r4)
/* 8000E94C  98 03 00 16 */	stb r0, 0x16(r3)
/* 8000E950  88 04 00 17 */	lbz r0, 0x17(r4)
/* 8000E954  98 03 00 17 */	stb r0, 0x17(r3)
/* 8000E958  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8000E95C  98 03 00 18 */	stb r0, 0x18(r3)
/* 8000E960  88 04 00 19 */	lbz r0, 0x19(r4)
/* 8000E964  98 03 00 19 */	stb r0, 0x19(r3)
/* 8000E968  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 8000E96C  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8000E970  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8000E974  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8000E978  80 7F 00 04 */	lwz r3, 4(r31)
/* 8000E97C  38 A3 00 1C */	addi r5, r3, 0x1c
/* 8000E980  7C 63 DA 14 */	add r3, r3, r27
/* 8000E984  7C 1B 28 2E */	lwzx r0, r27, r5
/* 8000E988  7C 04 02 14 */	add r0, r4, r0
/* 8000E98C  7C 03 00 50 */	subf r0, r3, r0
/* 8000E990  7C 1B 29 2E */	stwx r0, r27, r5
/* 8000E994  80 7F 00 04 */	lwz r3, 4(r31)
/* 8000E998  38 A3 00 0C */	addi r5, r3, 0xc
/* 8000E99C  7C 63 DA 14 */	add r3, r3, r27
/* 8000E9A0  7C 1B 28 2E */	lwzx r0, r27, r5
/* 8000E9A4  7C 04 02 14 */	add r0, r4, r0
/* 8000E9A8  7C 03 00 50 */	subf r0, r3, r0
/* 8000E9AC  7C 1B 29 2E */	stwx r0, r27, r5
/* 8000E9B0  3A C0 00 01 */	li r22, 1
lbl_8000E9B4:
/* 8000E9B4  3B 39 00 01 */	addi r25, r25, 1
lbl_8000E9B8:
/* 8000E9B8  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8000E9BC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8000E9C0  7C 03 00 40 */	cmplw r3, r0
/* 8000E9C4  41 80 FE C4 */	blt lbl_8000E888
lbl_8000E9C8:
/* 8000E9C8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8000E9CC:
/* 8000E9CC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8000E9D0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8000E9D4  7C 03 00 40 */	cmplw r3, r0
/* 8000E9D8  41 80 FE 90 */	blt lbl_8000E868
/* 8000E9DC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8000E9E0  41 82 00 88 */	beq lbl_8000EA68
/* 8000E9E4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8000E9E8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8000E9EC  93 E3 00 58 */	stw r31, 0x58(r3)
/* 8000E9F0  3A C0 00 00 */	li r22, 0
/* 8000E9F4  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha
/* 8000E9F8  3B 23 4C 70 */	addi r25, r3, sGDLObj__17J3DDisplayListObj@l
/* 8000E9FC  48 00 00 5C */	b lbl_8000EA58
lbl_8000EA00:
/* 8000EA00  80 78 00 60 */	lwz r3, 0x60(r24)
/* 8000EA04  56 C0 13 BA */	rlwinm r0, r22, 2, 0xe, 0x1d
/* 8000EA08  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000EA0C  82 E3 00 2C */	lwz r23, 0x2c(r3)
/* 8000EA10  83 43 00 48 */	lwz r26, 0x48(r3)
/* 8000EA14  48 32 EC E1 */	bl OSDisableInterrupts
/* 8000EA18  7C 7B 1B 78 */	mr r27, r3
/* 8000EA1C  7F 23 CB 78 */	mr r3, r25
/* 8000EA20  80 9A 00 00 */	lwz r4, 0(r26)
/* 8000EA24  80 BA 00 08 */	lwz r5, 8(r26)
/* 8000EA28  48 35 25 71 */	bl GDInitGDLObj
/* 8000EA2C  93 2D 94 00 */	stw r25, __GDCurrentDL(r13)
/* 8000EA30  7E E3 BB 78 */	mr r3, r23
/* 8000EA34  81 97 00 00 */	lwz r12, 0(r23)
/* 8000EA38  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8000EA3C  7D 89 03 A6 */	mtctr r12
/* 8000EA40  4E 80 04 21 */	bctrl 
/* 8000EA44  7F 63 DB 78 */	mr r3, r27
/* 8000EA48  48 32 EC D5 */	bl OSRestoreInterrupts
/* 8000EA4C  38 00 00 00 */	li r0, 0
/* 8000EA50  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 8000EA54  3A D6 00 01 */	addi r22, r22, 1
lbl_8000EA58:
/* 8000EA58  56 C3 04 3E */	clrlwi r3, r22, 0x10
/* 8000EA5C  A0 18 00 5C */	lhz r0, 0x5c(r24)
/* 8000EA60  7C 03 00 40 */	cmplw r3, r0
/* 8000EA64  41 80 FF 9C */	blt lbl_8000EA00
lbl_8000EA68:
/* 8000EA68  39 61 00 30 */	addi r11, r1, 0x30
/* 8000EA6C  48 35 37 A1 */	bl _restgpr_22
/* 8000EA70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000EA74  7C 08 03 A6 */	mtlr r0
/* 8000EA78  38 21 00 30 */	addi r1, r1, 0x30
/* 8000EA7C  4E 80 00 20 */	blr 
