lbl_8019E874:
/* 8019E874  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8019E878  7C 08 02 A6 */	mflr r0
/* 8019E87C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019E880  39 61 00 50 */	addi r11, r1, 0x50
/* 8019E884  48 1C 39 39 */	bl _savegpr_21
/* 8019E888  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019E88C  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 8019E890  38 60 00 00 */	li r3, 0
/* 8019E894  38 80 00 00 */	li r4, 0
/* 8019E898  38 A0 00 00 */	li r5, 0
/* 8019E89C  38 C0 00 00 */	li r6, 0
/* 8019E8A0  38 E0 00 00 */	li r7, 0
/* 8019E8A4  3D 00 80 3C */	lis r8, test_pos_tbl@ha
/* 8019E8A8  3B C8 BF 58 */	addi r30, r8, test_pos_tbl@l
/* 8019E8AC  C0 E2 A2 48 */	lfs f7, lit_4505(r2)
/* 8019E8B0  C0 C2 A2 90 */	lfs f6, lit_5191(r2)
/* 8019E8B4  3D 00 80 3C */	lis r8, test_color_tbl@ha
/* 8019E8B8  3B E8 BF B8 */	addi r31, r8, test_color_tbl@l
/* 8019E8BC  C0 A2 A2 94 */	lfs f5, lit_5192(r2)
/* 8019E8C0  C0 82 A2 0C */	lfs f4, lit_4409(r2)
/* 8019E8C4  C0 62 A2 2C */	lfs f3, lit_4442(r2)
/* 8019E8C8  C0 42 A2 98 */	lfs f2, lit_5193(r2)
/* 8019E8CC  C0 22 A2 9C */	lfs f1, lit_5194(r2)
/* 8019E8D0  38 00 00 08 */	li r0, 8
/* 8019E8D4  7C 09 03 A6 */	mtctr r0
lbl_8019E8D8:
/* 8019E8D8  7D 1E 3A 14 */	add r8, r30, r7
/* 8019E8DC  C1 48 00 00 */	lfs f10, 0(r8)
/* 8019E8E0  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 8019E8E4  C1 28 00 04 */	lfs f9, 4(r8)
/* 8019E8E8  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 8019E8EC  C1 08 00 08 */	lfs f8, 8(r8)
/* 8019E8F0  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 8019E8F4  7F 9D 32 14 */	add r28, r29, r6
/* 8019E8F8  D1 5C 09 B8 */	stfs f10, 0x9b8(r28)
/* 8019E8FC  D1 3C 09 BC */	stfs f9, 0x9bc(r28)
/* 8019E900  D1 1C 09 C0 */	stfs f8, 0x9c0(r28)
/* 8019E904  D0 FC 09 C8 */	stfs f7, 0x9c8(r28)
/* 8019E908  D0 DC 09 CC */	stfs f6, 0x9cc(r28)
/* 8019E90C  7D 1F 2A 14 */	add r8, r31, r5
/* 8019E910  89 88 00 00 */	lbz r12, 0(r8)
/* 8019E914  99 9C 09 C4 */	stb r12, 0x9c4(r28)
/* 8019E918  89 68 00 01 */	lbz r11, 1(r8)
/* 8019E91C  99 7C 09 C5 */	stb r11, 0x9c5(r28)
/* 8019E920  89 48 00 02 */	lbz r10, 2(r8)
/* 8019E924  99 5C 09 C6 */	stb r10, 0x9c6(r28)
/* 8019E928  39 20 00 FF */	li r9, 0xff
/* 8019E92C  99 3C 09 C7 */	stb r9, 0x9c7(r28)
/* 8019E930  C0 1C 09 B8 */	lfs f0, 0x9b8(r28)
/* 8019E934  D0 1C 09 E4 */	stfs f0, 0x9e4(r28)
/* 8019E938  C0 1C 09 BC */	lfs f0, 0x9bc(r28)
/* 8019E93C  D0 1C 09 E8 */	stfs f0, 0x9e8(r28)
/* 8019E940  C0 1C 09 C0 */	lfs f0, 0x9c0(r28)
/* 8019E944  D0 1C 09 EC */	stfs f0, 0x9ec(r28)
/* 8019E948  88 1C 09 C4 */	lbz r0, 0x9c4(r28)
/* 8019E94C  B0 1C 09 F0 */	sth r0, 0x9f0(r28)
/* 8019E950  88 1C 09 C5 */	lbz r0, 0x9c5(r28)
/* 8019E954  B0 1C 09 F2 */	sth r0, 0x9f2(r28)
/* 8019E958  88 1C 09 C6 */	lbz r0, 0x9c6(r28)
/* 8019E95C  B0 1C 09 F4 */	sth r0, 0x9f4(r28)
/* 8019E960  C0 1C 09 C8 */	lfs f0, 0x9c8(r28)
/* 8019E964  EC 05 00 32 */	fmuls f0, f5, f0
/* 8019E968  D0 1C 09 F8 */	stfs f0, 0x9f8(r28)
/* 8019E96C  D0 9C 09 FC */	stfs f4, 0x9fc(r28)
/* 8019E970  D0 7C 09 D0 */	stfs f3, 0x9d0(r28)
/* 8019E974  D0 5C 09 D4 */	stfs f2, 0x9d4(r28)
/* 8019E978  D0 9C 09 D8 */	stfs f4, 0x9d8(r28)
/* 8019E97C  39 00 00 00 */	li r8, 0
/* 8019E980  99 1C 09 DC */	stb r8, 0x9dc(r28)
/* 8019E984  38 00 00 02 */	li r0, 2
/* 8019E988  98 1C 09 DD */	stb r0, 0x9dd(r28)
/* 8019E98C  D1 41 00 08 */	stfs f10, 8(r1)
/* 8019E990  D1 21 00 0C */	stfs f9, 0xc(r1)
/* 8019E994  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 8019E998  7E DD 22 14 */	add r22, r29, r4
/* 8019E99C  3A F6 0C 18 */	addi r23, r22, 0xc18
/* 8019E9A0  D1 56 0C 18 */	stfs f10, 0xc18(r22)
/* 8019E9A4  3B 16 0C 1C */	addi r24, r22, 0xc1c
/* 8019E9A8  D1 36 0C 1C */	stfs f9, 0xc1c(r22)
/* 8019E9AC  3B 36 0C 20 */	addi r25, r22, 0xc20
/* 8019E9B0  D1 16 0C 20 */	stfs f8, 0xc20(r22)
/* 8019E9B4  3B 56 0C 24 */	addi r26, r22, 0xc24
/* 8019E9B8  99 96 0C 24 */	stb r12, 0xc24(r22)
/* 8019E9BC  99 76 0C 25 */	stb r11, 0xc25(r22)
/* 8019E9C0  99 56 0C 26 */	stb r10, 0xc26(r22)
/* 8019E9C4  99 36 0C 27 */	stb r9, 0xc27(r22)
/* 8019E9C8  39 36 0C 28 */	addi r9, r22, 0xc28
/* 8019E9CC  D0 36 0C 28 */	stfs f1, 0xc28(r22)
/* 8019E9D0  39 56 0C 2C */	addi r10, r22, 0xc2c
/* 8019E9D4  D0 D6 0C 2C */	stfs f6, 0xc2c(r22)
/* 8019E9D8  3A B6 0C 3E */	addi r21, r22, 0xc3e
/* 8019E9DC  99 16 0C 3E */	stb r8, 0xc3e(r22)
/* 8019E9E0  39 76 0C 30 */	addi r11, r22, 0xc30
/* 8019E9E4  D0 76 0C 30 */	stfs f3, 0xc30(r22)
/* 8019E9E8  39 96 0C 34 */	addi r12, r22, 0xc34
/* 8019E9EC  D0 56 0C 34 */	stfs f2, 0xc34(r22)
/* 8019E9F0  3B 76 0C 38 */	addi r27, r22, 0xc38
/* 8019E9F4  D0 96 0C 38 */	stfs f4, 0xc38(r22)
/* 8019E9F8  3B 96 0C 3C */	addi r28, r22, 0xc3c
/* 8019E9FC  99 16 0C 3C */	stb r8, 0xc3c(r22)
/* 8019EA00  39 16 0C 3D */	addi r8, r22, 0xc3d
/* 8019EA04  98 16 0C 3D */	stb r0, 0xc3d(r22)
/* 8019EA08  2C 03 00 06 */	cmpwi r3, 6
/* 8019EA0C  40 80 00 64 */	bge lbl_8019EA70
/* 8019EA10  C0 17 00 00 */	lfs f0, 0(r23)
/* 8019EA14  D0 16 0D 58 */	stfs f0, 0xd58(r22)
/* 8019EA18  C0 18 00 00 */	lfs f0, 0(r24)
/* 8019EA1C  D0 16 0D 5C */	stfs f0, 0xd5c(r22)
/* 8019EA20  C0 19 00 00 */	lfs f0, 0(r25)
/* 8019EA24  D0 16 0D 60 */	stfs f0, 0xd60(r22)
/* 8019EA28  80 1A 00 00 */	lwz r0, 0(r26)
/* 8019EA2C  90 16 0D 64 */	stw r0, 0xd64(r22)
/* 8019EA30  C0 09 00 00 */	lfs f0, 0(r9)
/* 8019EA34  D0 16 0D 68 */	stfs f0, 0xd68(r22)
/* 8019EA38  C0 0A 00 00 */	lfs f0, 0(r10)
/* 8019EA3C  D0 16 0D 6C */	stfs f0, 0xd6c(r22)
/* 8019EA40  C0 0B 00 00 */	lfs f0, 0(r11)
/* 8019EA44  D0 16 0D 70 */	stfs f0, 0xd70(r22)
/* 8019EA48  C0 0C 00 00 */	lfs f0, 0(r12)
/* 8019EA4C  D0 16 0D 74 */	stfs f0, 0xd74(r22)
/* 8019EA50  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8019EA54  D0 16 0D 78 */	stfs f0, 0xd78(r22)
/* 8019EA58  88 1C 00 00 */	lbz r0, 0(r28)
/* 8019EA5C  98 16 0D 7C */	stb r0, 0xd7c(r22)
/* 8019EA60  88 08 00 00 */	lbz r0, 0(r8)
/* 8019EA64  98 16 0D 7D */	stb r0, 0xd7d(r22)
/* 8019EA68  88 15 00 00 */	lbz r0, 0(r21)
/* 8019EA6C  98 16 0D 7E */	stb r0, 0xd7e(r22)
lbl_8019EA70:
/* 8019EA70  38 63 00 01 */	addi r3, r3, 1
/* 8019EA74  38 84 00 28 */	addi r4, r4, 0x28
/* 8019EA78  38 A5 00 03 */	addi r5, r5, 3
/* 8019EA7C  38 C6 00 4C */	addi r6, r6, 0x4c
/* 8019EA80  38 E7 00 0C */	addi r7, r7, 0xc
/* 8019EA84  42 00 FE 54 */	bdnz lbl_8019E8D8
/* 8019EA88  39 61 00 50 */	addi r11, r1, 0x50
/* 8019EA8C  48 1C 37 7D */	bl _restgpr_21
/* 8019EA90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8019EA94  7C 08 03 A6 */	mtlr r0
/* 8019EA98  38 21 00 50 */	addi r1, r1, 0x50
/* 8019EA9C  4E 80 00 20 */	blr 
