lbl_8035FACC:
/* 8035FACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035FAD0  41 82 00 E4 */	beq lbl_8035FBB4
/* 8035FAD4  38 C0 00 00 */	li r6, 0
/* 8035FAD8  54 C0 08 3C */	slwi r0, r6, 1
/* 8035FADC  7D 25 02 14 */	add r9, r5, r0
/* 8035FAE0  A1 09 00 00 */	lhz r8, 0(r9)
/* 8035FAE4  54 CA F8 7E */	srwi r10, r6, 1
/* 8035FAE8  A0 E9 00 02 */	lhz r7, 2(r9)
/* 8035FAEC  38 00 00 61 */	li r0, 0x61
/* 8035FAF0  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035FAF4  39 60 00 00 */	li r11, 0
/* 8035FAF8  98 05 80 00 */	stb r0, 0x8000(r5)
/* 8035FAFC  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 8035FB00  39 0B 00 00 */	addi r8, r11, 0
/* 8035FB04  38 CA 00 E9 */	addi r6, r10, 0xe9
/* 8035FB08  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 8035FB0C  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 8035FB10  91 05 80 00 */	stw r8, -0x8000(r5)
/* 8035FB14  38 CA 00 EA */	addi r6, r10, 0xea
/* 8035FB18  39 60 00 00 */	li r11, 0
/* 8035FB1C  A1 09 00 04 */	lhz r8, 4(r9)
/* 8035FB20  A0 E9 00 06 */	lhz r7, 6(r9)
/* 8035FB24  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 8035FB28  39 0B 00 00 */	addi r8, r11, 0
/* 8035FB2C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8035FB30  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 8035FB34  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 8035FB38  91 05 80 00 */	stw r8, -0x8000(r5)
/* 8035FB3C  38 CA 00 EB */	addi r6, r10, 0xeb
/* 8035FB40  39 60 00 00 */	li r11, 0
/* 8035FB44  A1 09 00 08 */	lhz r8, 8(r9)
/* 8035FB48  A0 E9 00 0A */	lhz r7, 0xa(r9)
/* 8035FB4C  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 8035FB50  39 0B 00 00 */	addi r8, r11, 0
/* 8035FB54  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8035FB58  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 8035FB5C  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 8035FB60  91 05 80 00 */	stw r8, -0x8000(r5)
/* 8035FB64  38 CA 00 EC */	addi r6, r10, 0xec
/* 8035FB68  39 60 00 00 */	li r11, 0
/* 8035FB6C  A1 09 00 0C */	lhz r8, 0xc(r9)
/* 8035FB70  A0 E9 00 0E */	lhz r7, 0xe(r9)
/* 8035FB74  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 8035FB78  39 0B 00 00 */	addi r8, r11, 0
/* 8035FB7C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8035FB80  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 8035FB84  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 8035FB88  91 05 80 00 */	stw r8, -0x8000(r5)
/* 8035FB8C  38 CA 00 ED */	addi r6, r10, 0xed
/* 8035FB90  39 60 00 00 */	li r11, 0
/* 8035FB94  A1 09 00 10 */	lhz r8, 0x10(r9)
/* 8035FB98  A0 E9 00 12 */	lhz r7, 0x12(r9)
/* 8035FB9C  51 0B 05 3E */	rlwimi r11, r8, 0, 0x14, 0x1f
/* 8035FBA0  39 0B 00 00 */	addi r8, r11, 0
/* 8035FBA4  98 05 80 00 */	stb r0, -0x8000(r5)
/* 8035FBA8  50 E8 62 26 */	rlwimi r8, r7, 0xc, 8, 0x13
/* 8035FBAC  50 C8 C0 0E */	rlwimi r8, r6, 0x18, 0, 7
/* 8035FBB0  91 05 80 00 */	stw r8, -0x8000(r5)
lbl_8035FBB4:
/* 8035FBB4  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 8035FBB8  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035FBBC  38 05 01 56 */	addi r0, r5, 0x156
/* 8035FBC0  38 A0 00 00 */	li r5, 0
/* 8035FBC4  50 05 05 BE */	rlwimi r5, r0, 0, 0x16, 0x1f
/* 8035FBC8  50 65 55 6A */	rlwimi r5, r3, 0xa, 0x15, 0x15
/* 8035FBCC  38 00 00 61 */	li r0, 0x61
/* 8035FBD0  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FBD4  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035FBD8  38 00 00 E8 */	li r0, 0xe8
/* 8035FBDC  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8035FBE0  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 8035FBE4  38 00 00 00 */	li r0, 0
/* 8035FBE8  B0 04 00 02 */	sth r0, 2(r4)
/* 8035FBEC  4E 80 00 20 */	blr 
