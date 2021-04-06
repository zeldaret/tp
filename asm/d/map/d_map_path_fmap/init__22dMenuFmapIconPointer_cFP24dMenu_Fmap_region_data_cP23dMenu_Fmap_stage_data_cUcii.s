lbl_8003E114:
/* 8003E114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003E118  7C 08 02 A6 */	mflr r0
/* 8003E11C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003E120  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E124  48 32 40 AD */	bl _savegpr_26
/* 8003E128  7C 7A 1B 78 */	mr r26, r3
/* 8003E12C  7C 9B 23 78 */	mr r27, r4
/* 8003E130  7C BC 2B 78 */	mr r28, r5
/* 8003E134  7C DD 33 78 */	mr r29, r6
/* 8003E138  7C FE 3B 78 */	mr r30, r7
/* 8003E13C  7D 1F 43 78 */	mr r31, r8
/* 8003E140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003E144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003E148  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8003E14C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8003E150  7D 89 03 A6 */	mtctr r12
/* 8003E154  4E 80 04 21 */	bctrl 
/* 8003E158  28 03 00 00 */	cmplwi r3, 0
/* 8003E15C  40 82 00 0C */	bne lbl_8003E168
/* 8003E160  38 60 00 00 */	li r3, 0
/* 8003E164  48 00 00 44 */	b lbl_8003E1A8
lbl_8003E168:
/* 8003E168  88 03 00 09 */	lbz r0, 9(r3)
/* 8003E16C  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8003E170  90 1A 00 0C */	stw r0, 0xc(r26)
/* 8003E174  93 7A 00 10 */	stw r27, 0x10(r26)
/* 8003E178  93 9A 00 14 */	stw r28, 0x14(r26)
/* 8003E17C  7F A3 EB 78 */	mr r3, r29
/* 8003E180  48 05 E3 1D */	bl getTypeGroupNoToType__7dTres_cFUc
/* 8003E184  98 7A 00 31 */	stb r3, 0x31(r26)
/* 8003E188  9B BA 00 30 */	stb r29, 0x30(r26)
/* 8003E18C  93 DA 00 04 */	stw r30, 4(r26)
/* 8003E190  93 FA 00 08 */	stw r31, 8(r26)
/* 8003E194  38 00 00 00 */	li r0, 0
/* 8003E198  90 1A 00 00 */	stw r0, 0(r26)
/* 8003E19C  7F 43 D3 78 */	mr r3, r26
/* 8003E1A0  48 00 01 B1 */	bl getFirstRoomData__22dMenuFmapIconPointer_cFv
/* 8003E1A4  38 60 00 01 */	li r3, 1
lbl_8003E1A8:
/* 8003E1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E1AC  48 32 40 71 */	bl _restgpr_26
/* 8003E1B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003E1B4  7C 08 03 A6 */	mtlr r0
/* 8003E1B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003E1BC  4E 80 00 20 */	blr 
