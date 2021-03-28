lbl_8031F9B8:
/* 8031F9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031F9BC  7C 08 02 A6 */	mflr r0
/* 8031F9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031F9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031F9C8  7C 7F 1B 78 */	mr r31, r3
/* 8031F9CC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031F9D0  80 64 00 08 */	lwz r3, 8(r4)
/* 8031F9D4  38 63 00 0F */	addi r3, r3, 0xf
/* 8031F9D8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031F9DC  7C 03 00 40 */	cmplw r3, r0
/* 8031F9E0  40 81 00 08 */	ble lbl_8031F9E8
/* 8031F9E4  48 04 16 F1 */	bl GDOverflowed
lbl_8031F9E8:
/* 8031F9E8  88 7F 00 3B */	lbz r3, 0x3b(r31)
/* 8031F9EC  88 FF 00 37 */	lbz r7, 0x37(r31)
/* 8031F9F0  88 DF 00 36 */	lbz r6, 0x36(r31)
/* 8031F9F4  88 BF 00 35 */	lbz r5, 0x35(r31)
/* 8031F9F8  88 9F 00 34 */	lbz r4, 0x34(r31)
/* 8031F9FC  39 80 00 61 */	li r12, 0x61
/* 8031FA00  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031FA04  81 09 00 08 */	lwz r8, 8(r9)
/* 8031FA08  38 08 00 01 */	addi r0, r8, 1
/* 8031FA0C  90 09 00 08 */	stw r0, 8(r9)
/* 8031FA10  99 88 00 00 */	stb r12, 0(r8)
/* 8031FA14  39 40 00 FE */	li r10, 0xfe
/* 8031FA18  81 2D 94 00 */	lwz r9, __GDCurrentDL(r13)
/* 8031FA1C  81 09 00 08 */	lwz r8, 8(r9)
/* 8031FA20  38 08 00 01 */	addi r0, r8, 1
/* 8031FA24  90 09 00 08 */	stw r0, 8(r9)
/* 8031FA28  99 48 00 00 */	stb r10, 0(r8)
/* 8031FA2C  38 00 00 00 */	li r0, 0
/* 8031FA30  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031FA34  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031FA38  39 09 00 01 */	addi r8, r9, 1
/* 8031FA3C  91 0A 00 08 */	stw r8, 8(r10)
/* 8031FA40  98 09 00 00 */	stb r0, 0(r9)
/* 8031FA44  39 60 00 FF */	li r11, 0xff
/* 8031FA48  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031FA4C  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031FA50  39 09 00 01 */	addi r8, r9, 1
/* 8031FA54  91 0A 00 08 */	stw r8, 8(r10)
/* 8031FA58  99 69 00 00 */	stb r11, 0(r9)
/* 8031FA5C  39 60 00 E7 */	li r11, 0xe7
/* 8031FA60  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031FA64  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031FA68  39 09 00 01 */	addi r8, r9, 1
/* 8031FA6C  91 0A 00 08 */	stw r8, 8(r10)
/* 8031FA70  99 69 00 00 */	stb r11, 0(r9)
/* 8031FA74  81 4D 94 00 */	lwz r10, __GDCurrentDL(r13)
/* 8031FA78  81 2A 00 08 */	lwz r9, 8(r10)
/* 8031FA7C  39 09 00 01 */	addi r8, r9, 1
/* 8031FA80  91 0A 00 08 */	stw r8, 8(r10)
/* 8031FA84  99 89 00 00 */	stb r12, 0(r9)
/* 8031FA88  2C 04 00 01 */	cmpwi r4, 1
/* 8031FA8C  41 82 00 0C */	beq lbl_8031FA98
/* 8031FA90  2C 04 00 03 */	cmpwi r4, 3
/* 8031FA94  40 82 00 08 */	bne lbl_8031FA9C
lbl_8031FA98:
/* 8031FA98  38 00 00 01 */	li r0, 1
lbl_8031FA9C:
/* 8031FA9C  54 E9 60 26 */	slwi r9, r7, 0xc
/* 8031FAA0  20 E4 00 03 */	subfic r7, r4, 3
/* 8031FAA4  7C E7 00 34 */	cntlzw r7, r7
/* 8031FAA8  54 E8 33 68 */	rlwinm r8, r7, 6, 0xd, 0x14
/* 8031FAAC  54 A7 40 2E */	slwi r7, r5, 8
/* 8031FAB0  54 C6 28 34 */	slwi r6, r6, 5
/* 8031FAB4  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 8031FAB8  20 64 00 02 */	subfic r3, r4, 2
/* 8031FABC  7C 63 00 34 */	cntlzw r3, r3
/* 8031FAC0  54 63 E5 FC */	rlwinm r3, r3, 0x1c, 0x17, 0x1e
/* 8031FAC4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031FAC8  7C 60 03 78 */	or r0, r3, r0
/* 8031FACC  7C A0 03 78 */	or r0, r5, r0
/* 8031FAD0  7C C0 03 78 */	or r0, r6, r0
/* 8031FAD4  7C E0 03 78 */	or r0, r7, r0
/* 8031FAD8  7D 00 03 78 */	or r0, r8, r0
/* 8031FADC  7D 20 03 78 */	or r0, r9, r0
/* 8031FAE0  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031FAE4  54 0C 46 3E */	srwi r12, r0, 0x18
/* 8031FAE8  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031FAEC  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031FAF0  38 0A 00 01 */	addi r0, r10, 1
/* 8031FAF4  90 0B 00 08 */	stw r0, 8(r11)
/* 8031FAF8  99 8A 00 00 */	stb r12, 0(r10)
/* 8031FAFC  38 00 00 00 */	li r0, 0
/* 8031FB00  2C 04 00 01 */	cmpwi r4, 1
/* 8031FB04  41 82 00 0C */	beq lbl_8031FB10
/* 8031FB08  2C 04 00 03 */	cmpwi r4, 3
/* 8031FB0C  40 82 00 08 */	bne lbl_8031FB14
lbl_8031FB10:
/* 8031FB10  38 00 00 01 */	li r0, 1
lbl_8031FB14:
/* 8031FB14  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031FB18  7C 60 03 78 */	or r0, r3, r0
/* 8031FB1C  7C A0 03 78 */	or r0, r5, r0
/* 8031FB20  7C C0 03 78 */	or r0, r6, r0
/* 8031FB24  7C E0 03 78 */	or r0, r7, r0
/* 8031FB28  7D 00 03 78 */	or r0, r8, r0
/* 8031FB2C  7D 20 03 78 */	or r0, r9, r0
/* 8031FB30  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031FB34  54 0C 86 3E */	rlwinm r12, r0, 0x10, 0x18, 0x1f
/* 8031FB38  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031FB3C  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031FB40  38 0A 00 01 */	addi r0, r10, 1
/* 8031FB44  90 0B 00 08 */	stw r0, 8(r11)
/* 8031FB48  99 8A 00 00 */	stb r12, 0(r10)
/* 8031FB4C  38 00 00 00 */	li r0, 0
/* 8031FB50  2C 04 00 01 */	cmpwi r4, 1
/* 8031FB54  41 82 00 0C */	beq lbl_8031FB60
/* 8031FB58  2C 04 00 03 */	cmpwi r4, 3
/* 8031FB5C  40 82 00 08 */	bne lbl_8031FB64
lbl_8031FB60:
/* 8031FB60  38 00 00 01 */	li r0, 1
lbl_8031FB64:
/* 8031FB64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8031FB68  7C 60 03 78 */	or r0, r3, r0
/* 8031FB6C  7C A0 03 78 */	or r0, r5, r0
/* 8031FB70  7C C0 03 78 */	or r0, r6, r0
/* 8031FB74  7C E0 03 78 */	or r0, r7, r0
/* 8031FB78  7D 00 03 78 */	or r0, r8, r0
/* 8031FB7C  7D 20 03 78 */	or r0, r9, r0
/* 8031FB80  64 00 41 00 */	oris r0, r0, 0x4100
/* 8031FB84  54 0C C6 3E */	rlwinm r12, r0, 0x18, 0x18, 0x1f
/* 8031FB88  81 6D 94 00 */	lwz r11, __GDCurrentDL(r13)
/* 8031FB8C  81 4B 00 08 */	lwz r10, 8(r11)
/* 8031FB90  38 0A 00 01 */	addi r0, r10, 1
/* 8031FB94  90 0B 00 08 */	stw r0, 8(r11)
/* 8031FB98  99 8A 00 00 */	stb r12, 0(r10)
/* 8031FB9C  38 00 00 00 */	li r0, 0
/* 8031FBA0  2C 04 00 01 */	cmpwi r4, 1
/* 8031FBA4  41 82 00 0C */	beq lbl_8031FBB0
/* 8031FBA8  2C 04 00 03 */	cmpwi r4, 3
/* 8031FBAC  40 82 00 08 */	bne lbl_8031FBB4
lbl_8031FBB0:
/* 8031FBB0  38 00 00 01 */	li r0, 1
lbl_8031FBB4:
/* 8031FBB4  7C 60 03 78 */	or r0, r3, r0
/* 8031FBB8  7C A0 03 78 */	or r0, r5, r0
/* 8031FBBC  7C C0 03 78 */	or r0, r6, r0
/* 8031FBC0  7C E0 03 78 */	or r0, r7, r0
/* 8031FBC4  7D 00 03 78 */	or r0, r8, r0
/* 8031FBC8  7D 20 03 78 */	or r0, r9, r0
/* 8031FBCC  60 05 00 00 */	ori r5, r0, 0
/* 8031FBD0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FBD4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FBD8  38 03 00 01 */	addi r0, r3, 1
/* 8031FBDC  90 04 00 08 */	stw r0, 8(r4)
/* 8031FBE0  98 A3 00 00 */	stb r5, 0(r3)
/* 8031FBE4  3C 60 80 43 */	lis r3, j3dZModeTable@ha
/* 8031FBE8  38 83 71 60 */	addi r4, r3, j3dZModeTable@l
/* 8031FBEC  A0 1F 00 38 */	lhz r0, 0x38(r31)
/* 8031FBF0  1C 00 00 03 */	mulli r0, r0, 3
/* 8031FBF4  7C 64 02 14 */	add r3, r4, r0
/* 8031FBF8  88 E3 00 02 */	lbz r7, 2(r3)
/* 8031FBFC  88 C3 00 01 */	lbz r6, 1(r3)
/* 8031FC00  7D 04 00 AE */	lbzx r8, r4, r0
/* 8031FC04  38 A0 00 61 */	li r5, 0x61
/* 8031FC08  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FC0C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FC10  38 03 00 01 */	addi r0, r3, 1
/* 8031FC14  90 04 00 08 */	stw r0, 8(r4)
/* 8031FC18  98 A3 00 00 */	stb r5, 0(r3)
/* 8031FC1C  54 E3 25 36 */	rlwinm r3, r7, 4, 0x14, 0x1b
/* 8031FC20  54 C0 08 3C */	slwi r0, r6, 1
/* 8031FC24  7D 00 03 78 */	or r0, r8, r0
/* 8031FC28  7C 60 03 78 */	or r0, r3, r0
/* 8031FC2C  64 06 40 00 */	oris r6, r0, 0x4000
/* 8031FC30  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031FC34  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FC38  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FC3C  38 03 00 01 */	addi r0, r3, 1
/* 8031FC40  90 04 00 08 */	stw r0, 8(r4)
/* 8031FC44  98 A3 00 00 */	stb r5, 0(r3)
/* 8031FC48  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031FC4C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FC50  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FC54  38 03 00 01 */	addi r0, r3, 1
/* 8031FC58  90 04 00 08 */	stw r0, 8(r4)
/* 8031FC5C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031FC60  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031FC64  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FC68  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FC6C  38 03 00 01 */	addi r0, r3, 1
/* 8031FC70  90 04 00 08 */	stw r0, 8(r4)
/* 8031FC74  98 A3 00 00 */	stb r5, 0(r3)
/* 8031FC78  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031FC7C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031FC80  38 03 00 01 */	addi r0, r3, 1
/* 8031FC84  90 04 00 08 */	stw r0, 8(r4)
/* 8031FC88  98 C3 00 00 */	stb r6, 0(r3)
/* 8031FC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031FC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031FC94  7C 08 03 A6 */	mtlr r0
/* 8031FC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8031FC9C  4E 80 00 20 */	blr 
