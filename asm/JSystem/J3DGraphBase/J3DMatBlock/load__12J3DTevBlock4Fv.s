lbl_8031B4C0:
/* 8031B4C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031B4C4  7C 08 02 A6 */	mflr r0
/* 8031B4C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031B4CC  39 61 00 40 */	addi r11, r1, 0x40
/* 8031B4D0  48 04 6C FD */	bl _savegpr_25
/* 8031B4D4  7C 7F 1B 78 */	mr r31, r3
/* 8031B4D8  8B 83 00 20 */	lbz r28, 0x20(r3)
/* 8031B4DC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031B4E0  80 64 00 00 */	lwz r3, 0(r4)
/* 8031B4E4  80 04 00 08 */	lwz r0, 8(r4)
/* 8031B4E8  7C 03 00 50 */	subf r0, r3, r0
/* 8031B4EC  90 1F 00 04 */	stw r0, 4(r31)
/* 8031B4F0  3B 20 00 00 */	li r25, 0
/* 8031B4F4  3B 40 00 00 */	li r26, 0
lbl_8031B4F8:
/* 8031B4F8  38 9A 00 08 */	addi r4, r26, 8
/* 8031B4FC  7C 9F 22 14 */	add r4, r31, r4
/* 8031B500  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031B504  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031B508  41 82 00 0C */	beq lbl_8031B514
/* 8031B50C  7F 23 CB 78 */	mr r3, r25
/* 8031B510  48 00 8A 85 */	bl loadTexNo__FUlRCUs
lbl_8031B514:
/* 8031B514  3B 39 00 01 */	addi r25, r25, 1
/* 8031B518  28 19 00 04 */	cmplwi r25, 4
/* 8031B51C  3B 5A 00 02 */	addi r26, r26, 2
/* 8031B520  41 80 FF D8 */	blt lbl_8031B4F8
/* 8031B524  3B 60 00 00 */	li r27, 0
/* 8031B528  3B 40 00 00 */	li r26, 0
/* 8031B52C  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031B530  3B C3 4C 2C */	addi r30, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031B534  48 00 00 CC */	b lbl_8031B600
lbl_8031B538:
/* 8031B538  38 1B 00 01 */	addi r0, r27, 1
/* 8031B53C  54 00 10 3A */	slwi r0, r0, 2
/* 8031B540  7F BF 02 14 */	add r29, r31, r0
/* 8031B544  7F 3F D2 14 */	add r25, r31, r26
/* 8031B548  7F 63 DB 78 */	mr r3, r27
/* 8031B54C  88 99 00 10 */	lbz r4, 0x10(r25)
/* 8031B550  88 B9 00 11 */	lbz r5, 0x11(r25)
/* 8031B554  88 D9 00 12 */	lbz r6, 0x12(r25)
/* 8031B558  88 FD 00 10 */	lbz r7, 0x10(r29)
/* 8031B55C  89 1D 00 11 */	lbz r8, 0x11(r29)
/* 8031B560  89 3D 00 12 */	lbz r9, 0x12(r29)
/* 8031B564  4B FF 3B A5 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031B568  88 19 00 11 */	lbz r0, 0x11(r25)
/* 8031B56C  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031B570  7D 1E 02 14 */	add r8, r30, r0
/* 8031B574  88 19 00 10 */	lbz r0, 0x10(r25)
/* 8031B578  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031B57C  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031B580  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031B584  20 00 00 01 */	subfic r0, r0, 1
/* 8031B588  7C 00 00 34 */	cntlzw r0, r0
/* 8031B58C  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031B590  38 C0 00 00 */	li r6, 0
/* 8031B594  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031B598  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031B59C  20 00 00 01 */	subfic r0, r0, 1
/* 8031B5A0  7C 00 00 34 */	cntlzw r0, r0
/* 8031B5A4  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031B5A8  39 20 00 00 */	li r9, 0
/* 8031B5AC  4B FF 2C 89 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031B5B0  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 8031B5B4  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031B5B8  7D 1E 02 14 */	add r8, r30, r0
/* 8031B5BC  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8031B5C0  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031B5C4  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031B5C8  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031B5CC  20 00 00 01 */	subfic r0, r0, 1
/* 8031B5D0  7C 00 00 34 */	cntlzw r0, r0
/* 8031B5D4  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031B5D8  38 C0 00 00 */	li r6, 0
/* 8031B5DC  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031B5E0  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031B5E4  20 00 00 01 */	subfic r0, r0, 1
/* 8031B5E8  7C 00 00 34 */	cntlzw r0, r0
/* 8031B5EC  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031B5F0  39 20 00 00 */	li r9, 0
/* 8031B5F4  4B FF 2C 41 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031B5F8  3B 7B 00 02 */	addi r27, r27, 2
/* 8031B5FC  3B 5A 00 08 */	addi r26, r26, 8
lbl_8031B600:
/* 8031B600  7C 1B E0 40 */	cmplw r27, r28
/* 8031B604  41 80 FF 34 */	blt lbl_8031B538
/* 8031B608  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031B60C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031B610  80 04 00 08 */	lwz r0, 8(r4)
/* 8031B614  7C 03 00 50 */	subf r0, r3, r0
/* 8031B618  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8031B61C  3B 20 00 00 */	li r25, 0
/* 8031B620  3B 60 00 00 */	li r27, 0
lbl_8031B624:
/* 8031B624  38 1B 00 42 */	addi r0, r27, 0x42
/* 8031B628  7C 9F 02 14 */	add r4, r31, r0
/* 8031B62C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031B630  80 04 00 04 */	lwz r0, 4(r4)
/* 8031B634  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031B638  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031B63C  38 79 00 01 */	addi r3, r25, 1
/* 8031B640  38 81 00 0C */	addi r4, r1, 0xc
/* 8031B644  4B FF 3D B9 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031B648  3B 39 00 01 */	addi r25, r25, 1
/* 8031B64C  28 19 00 03 */	cmplwi r25, 3
/* 8031B650  3B 7B 00 08 */	addi r27, r27, 8
/* 8031B654  41 80 FF D0 */	blt lbl_8031B624
/* 8031B658  3B 20 00 00 */	li r25, 0
/* 8031B65C  3B 60 00 00 */	li r27, 0
lbl_8031B660:
/* 8031B660  38 1B 00 62 */	addi r0, r27, 0x62
/* 8031B664  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8031B668  90 01 00 08 */	stw r0, 8(r1)
/* 8031B66C  7F 23 CB 78 */	mr r3, r25
/* 8031B670  38 81 00 08 */	addi r4, r1, 8
/* 8031B674  4B FF 3C 21 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031B678  3B 39 00 01 */	addi r25, r25, 1
/* 8031B67C  28 19 00 04 */	cmplwi r25, 4
/* 8031B680  3B 7B 00 04 */	addi r27, r27, 4
/* 8031B684  41 80 FF DC */	blt lbl_8031B660
/* 8031B688  38 60 00 00 */	li r3, 0
/* 8031B68C  38 80 00 00 */	li r4, 0
/* 8031B690  38 A0 00 00 */	li r5, 0
/* 8031B694  7F 89 03 A6 */	mtctr r28
/* 8031B698  28 1C 00 00 */	cmplwi r28, 0
/* 8031B69C  40 81 01 8C */	ble lbl_8031B828
lbl_8031B6A0:
/* 8031B6A0  39 65 00 21 */	addi r11, r5, 0x21
/* 8031B6A4  7D 7F 5A 14 */	add r11, r31, r11
/* 8031B6A8  81 4B 00 00 */	lwz r10, 0(r11)
/* 8031B6AC  38 00 00 61 */	li r0, 0x61
/* 8031B6B0  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B6B4  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B6B8  38 C7 00 01 */	addi r6, r7, 1
/* 8031B6BC  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B6C0  98 07 00 00 */	stb r0, 0(r7)
/* 8031B6C4  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B6C8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B6CC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B6D0  38 C7 00 01 */	addi r6, r7, 1
/* 8031B6D4  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B6D8  99 27 00 00 */	stb r9, 0(r7)
/* 8031B6DC  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B6E0  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B6E4  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B6E8  38 C7 00 01 */	addi r6, r7, 1
/* 8031B6EC  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B6F0  99 27 00 00 */	stb r9, 0(r7)
/* 8031B6F4  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B6F8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B6FC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B700  38 C7 00 01 */	addi r6, r7, 1
/* 8031B704  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B708  99 27 00 00 */	stb r9, 0(r7)
/* 8031B70C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B710  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B714  38 C7 00 01 */	addi r6, r7, 1
/* 8031B718  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B71C  99 47 00 00 */	stb r10, 0(r7)
/* 8031B720  81 4B 00 04 */	lwz r10, 4(r11)
/* 8031B724  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B728  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B72C  38 C7 00 01 */	addi r6, r7, 1
/* 8031B730  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B734  98 07 00 00 */	stb r0, 0(r7)
/* 8031B738  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B73C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B740  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B744  38 C7 00 01 */	addi r6, r7, 1
/* 8031B748  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B74C  99 27 00 00 */	stb r9, 0(r7)
/* 8031B750  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B754  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B758  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B75C  38 C7 00 01 */	addi r6, r7, 1
/* 8031B760  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B764  99 27 00 00 */	stb r9, 0(r7)
/* 8031B768  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B76C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B770  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B774  38 C7 00 01 */	addi r6, r7, 1
/* 8031B778  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B77C  99 27 00 00 */	stb r9, 0(r7)
/* 8031B780  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B784  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B788  38 C7 00 01 */	addi r6, r7, 1
/* 8031B78C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B790  99 47 00 00 */	stb r10, 0(r7)
/* 8031B794  38 C4 00 80 */	addi r6, r4, 0x80
/* 8031B798  7C FF 30 2E */	lwzx r7, r31, r6
/* 8031B79C  38 C3 00 10 */	addi r6, r3, 0x10
/* 8031B7A0  54 C6 C0 0E */	slwi r6, r6, 0x18
/* 8031B7A4  7C E9 33 78 */	or r9, r7, r6
/* 8031B7A8  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B7AC  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B7B0  38 C7 00 01 */	addi r6, r7, 1
/* 8031B7B4  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B7B8  98 07 00 00 */	stb r0, 0(r7)
/* 8031B7BC  55 28 46 3E */	srwi r8, r9, 0x18
/* 8031B7C0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B7C4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B7C8  38 06 00 01 */	addi r0, r6, 1
/* 8031B7CC  90 07 00 08 */	stw r0, 8(r7)
/* 8031B7D0  99 06 00 00 */	stb r8, 0(r6)
/* 8031B7D4  55 28 86 3E */	rlwinm r8, r9, 0x10, 0x18, 0x1f
/* 8031B7D8  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B7DC  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B7E0  38 06 00 01 */	addi r0, r6, 1
/* 8031B7E4  90 07 00 08 */	stw r0, 8(r7)
/* 8031B7E8  99 06 00 00 */	stb r8, 0(r6)
/* 8031B7EC  55 28 C6 3E */	rlwinm r8, r9, 0x18, 0x18, 0x1f
/* 8031B7F0  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B7F4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B7F8  38 06 00 01 */	addi r0, r6, 1
/* 8031B7FC  90 07 00 08 */	stw r0, 8(r7)
/* 8031B800  99 06 00 00 */	stb r8, 0(r6)
/* 8031B804  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B808  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B80C  38 06 00 01 */	addi r0, r6, 1
/* 8031B810  90 07 00 08 */	stw r0, 8(r7)
/* 8031B814  99 26 00 00 */	stb r9, 0(r6)
/* 8031B818  38 63 00 01 */	addi r3, r3, 1
/* 8031B81C  38 84 00 04 */	addi r4, r4, 4
/* 8031B820  38 A5 00 08 */	addi r5, r5, 8
/* 8031B824  42 00 FE 7C */	bdnz lbl_8031B6A0
lbl_8031B828:
/* 8031B828  38 A0 00 00 */	li r5, 0
/* 8031B82C  3C 60 80 43 */	lis r3, j3dTevSwapTableTable@ha /* 0x80436A60@ha */
/* 8031B830  38 63 6A 60 */	addi r3, r3, j3dTevSwapTableTable@l /* 0x80436A60@l */
/* 8031B834  38 00 00 04 */	li r0, 4
/* 8031B838  7C 09 03 A6 */	mtctr r0
lbl_8031B83C:
/* 8031B83C  54 A4 F0 BE */	srwi r4, r5, 2
/* 8031B840  38 84 00 7A */	addi r4, r4, 0x7a
/* 8031B844  7C 1F 20 AE */	lbzx r0, r31, r4
/* 8031B848  54 00 10 3A */	slwi r0, r0, 2
/* 8031B84C  7C C3 02 14 */	add r6, r3, r0
/* 8031B850  8B 86 00 01 */	lbz r28, 1(r6)
/* 8031B854  8B 66 00 00 */	lbz r27, 0(r6)
/* 8031B858  89 5F 00 77 */	lbz r10, 0x77(r31)
/* 8031B85C  89 3F 00 73 */	lbz r9, 0x73(r31)
/* 8031B860  8B 5F 00 76 */	lbz r26, 0x76(r31)
/* 8031B864  89 9F 00 72 */	lbz r12, 0x72(r31)
/* 8031B868  38 00 00 61 */	li r0, 0x61
/* 8031B86C  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B870  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B874  38 C7 00 01 */	addi r6, r7, 1
/* 8031B878  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B87C  98 07 00 00 */	stb r0, 0(r7)
/* 8031B880  7C A6 0E 70 */	srawi r6, r5, 1
/* 8031B884  7C C6 01 94 */	addze r6, r6
/* 8031B888  39 66 00 F6 */	addi r11, r6, 0xf6
/* 8031B88C  55 4A 98 18 */	slwi r10, r10, 0x13
/* 8031B890  55 29 70 22 */	slwi r9, r9, 0xe
/* 8031B894  57 48 48 2C */	slwi r8, r26, 9
/* 8031B898  55 87 20 36 */	slwi r7, r12, 4
/* 8031B89C  57 86 10 3A */	slwi r6, r28, 2
/* 8031B8A0  7F 66 33 78 */	or r6, r27, r6
/* 8031B8A4  7C E6 33 78 */	or r6, r7, r6
/* 8031B8A8  7D 06 33 78 */	or r6, r8, r6
/* 8031B8AC  7D 26 33 78 */	or r6, r9, r6
/* 8031B8B0  7D 4A 33 78 */	or r10, r10, r6
/* 8031B8B4  51 6A C0 0E */	rlwimi r10, r11, 0x18, 0, 7
/* 8031B8B8  55 49 46 3E */	srwi r9, r10, 0x18
/* 8031B8BC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B8C0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B8C4  38 C7 00 01 */	addi r6, r7, 1
/* 8031B8C8  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B8CC  99 27 00 00 */	stb r9, 0(r7)
/* 8031B8D0  55 49 86 3E */	rlwinm r9, r10, 0x10, 0x18, 0x1f
/* 8031B8D4  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B8D8  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B8DC  38 C7 00 01 */	addi r6, r7, 1
/* 8031B8E0  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B8E4  99 27 00 00 */	stb r9, 0(r7)
/* 8031B8E8  55 49 C6 3E */	rlwinm r9, r10, 0x18, 0x18, 0x1f
/* 8031B8EC  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B8F0  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B8F4  38 C7 00 01 */	addi r6, r7, 1
/* 8031B8F8  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B8FC  99 27 00 00 */	stb r9, 0(r7)
/* 8031B900  81 0D 94 00 */	lwz r8, __GDCurrentDL(r13)
/* 8031B904  80 E8 00 08 */	lwz r7, 8(r8)
/* 8031B908  38 C7 00 01 */	addi r6, r7, 1
/* 8031B90C  90 C8 00 08 */	stw r6, 8(r8)
/* 8031B910  99 47 00 00 */	stb r10, 0(r7)
/* 8031B914  7C 9F 20 AE */	lbzx r4, r31, r4
/* 8031B918  54 84 10 3A */	slwi r4, r4, 2
/* 8031B91C  7C 83 22 14 */	add r4, r3, r4
/* 8031B920  8B 64 00 03 */	lbz r27, 3(r4)
/* 8031B924  8B 44 00 02 */	lbz r26, 2(r4)
/* 8031B928  89 1F 00 79 */	lbz r8, 0x79(r31)
/* 8031B92C  89 9F 00 75 */	lbz r12, 0x75(r31)
/* 8031B930  89 7F 00 78 */	lbz r11, 0x78(r31)
/* 8031B934  89 5F 00 74 */	lbz r10, 0x74(r31)
/* 8031B938  80 ED 94 00 */	lwz r7, __GDCurrentDL(r13)
/* 8031B93C  80 C7 00 08 */	lwz r6, 8(r7)
/* 8031B940  38 86 00 01 */	addi r4, r6, 1
/* 8031B944  90 87 00 08 */	stw r4, 8(r7)
/* 8031B948  98 06 00 00 */	stb r0, 0(r6)
/* 8031B94C  38 05 00 02 */	addi r0, r5, 2
/* 8031B950  7C 00 0E 70 */	srawi r0, r0, 1
/* 8031B954  7C 80 01 94 */	addze r4, r0
/* 8031B958  39 24 00 F6 */	addi r9, r4, 0xf6
/* 8031B95C  55 08 98 18 */	slwi r8, r8, 0x13
/* 8031B960  55 87 70 22 */	slwi r7, r12, 0xe
/* 8031B964  55 66 48 2C */	slwi r6, r11, 9
/* 8031B968  55 44 20 36 */	slwi r4, r10, 4
/* 8031B96C  57 60 10 3A */	slwi r0, r27, 2
/* 8031B970  7F 40 03 78 */	or r0, r26, r0
/* 8031B974  7C 80 03 78 */	or r0, r4, r0
/* 8031B978  7C C0 03 78 */	or r0, r6, r0
/* 8031B97C  7C E0 03 78 */	or r0, r7, r0
/* 8031B980  7D 08 03 78 */	or r8, r8, r0
/* 8031B984  51 28 C0 0E */	rlwimi r8, r9, 0x18, 0, 7
/* 8031B988  55 07 46 3E */	srwi r7, r8, 0x18
/* 8031B98C  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B990  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B994  38 04 00 01 */	addi r0, r4, 1
/* 8031B998  90 06 00 08 */	stw r0, 8(r6)
/* 8031B99C  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B9A0  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8031B9A4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B9A8  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B9AC  38 04 00 01 */	addi r0, r4, 1
/* 8031B9B0  90 06 00 08 */	stw r0, 8(r6)
/* 8031B9B4  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B9B8  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8031B9BC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B9C0  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B9C4  38 04 00 01 */	addi r0, r4, 1
/* 8031B9C8  90 06 00 08 */	stw r0, 8(r6)
/* 8031B9CC  98 E4 00 00 */	stb r7, 0(r4)
/* 8031B9D0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031B9D4  80 86 00 08 */	lwz r4, 8(r6)
/* 8031B9D8  38 04 00 01 */	addi r0, r4, 1
/* 8031B9DC  90 06 00 08 */	stw r0, 8(r6)
/* 8031B9E0  99 04 00 00 */	stb r8, 0(r4)
/* 8031B9E4  38 A5 00 04 */	addi r5, r5, 4
/* 8031B9E8  42 00 FE 54 */	bdnz lbl_8031B83C
/* 8031B9EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8031B9F0  48 04 68 29 */	bl _restgpr_25
/* 8031B9F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8031B9F8  7C 08 03 A6 */	mtlr r0
/* 8031B9FC  38 21 00 40 */	addi r1, r1, 0x40
/* 8031BA00  4E 80 00 20 */	blr 
