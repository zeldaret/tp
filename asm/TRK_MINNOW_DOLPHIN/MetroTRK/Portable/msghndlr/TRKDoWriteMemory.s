lbl_8036E6A4:
/* 8036E6A4  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8036E6A8  7C 2C 0B 78 */	mr r12, r1
/* 8036E6AC  21 6B F6 C0 */	subfic r11, r11, -2368
/* 8036E6B0  7C 21 59 6E */	stwux r1, r1, r11
/* 8036E6B4  7C 08 02 A6 */	mflr r0
/* 8036E6B8  90 0C 00 04 */	stw r0, 4(r12)
/* 8036E6BC  BF 6C FF EC */	stmw r27, -0x14(r12)
/* 8036E6C0  7C 7B 1B 78 */	mr r27, r3
/* 8036E6C4  3C 60 80 3A */	lis r3, lit_321@ha
/* 8036E6C8  3B E3 28 D0 */	addi r31, r3, lit_321@l
/* 8036E6CC  38 9F 01 80 */	addi r4, r31, 0x180
/* 8036E6D0  38 60 00 01 */	li r3, 1
/* 8036E6D4  83 9B 00 20 */	lwz r28, 0x20(r27)
/* 8036E6D8  A3 BB 00 1C */	lhz r29, 0x1c(r27)
/* 8036E6DC  8B DB 00 18 */	lbz r30, 0x18(r27)
/* 8036E6E0  7F 86 E3 78 */	mr r6, r28
/* 8036E6E4  88 BB 00 14 */	lbz r5, 0x14(r27)
/* 8036E6E8  7F A7 EB 78 */	mr r7, r29
/* 8036E6EC  7F C8 F3 78 */	mr r8, r30
/* 8036E6F0  4C C6 31 82 */	crclr 6
/* 8036E6F4  48 00 45 61 */	bl MWTRACE
/* 8036E6F8  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8036E6FC  41 82 00 40 */	beq lbl_8036E73C
/* 8036E700  38 61 00 64 */	addi r3, r1, 0x64
/* 8036E704  38 80 00 00 */	li r4, 0
/* 8036E708  38 A0 00 40 */	li r5, 0x40
/* 8036E70C  4B C9 4D 4D */	bl memset
/* 8036E710  38 60 00 80 */	li r3, 0x80
/* 8036E714  38 A0 00 40 */	li r5, 0x40
/* 8036E718  38 00 00 12 */	li r0, 0x12
/* 8036E71C  98 61 00 68 */	stb r3, 0x68(r1)
/* 8036E720  38 61 00 64 */	addi r3, r1, 0x64
/* 8036E724  38 80 00 40 */	li r4, 0x40
/* 8036E728  90 A1 00 64 */	stw r5, 0x64(r1)
/* 8036E72C  98 01 00 6C */	stb r0, 0x6c(r1)
/* 8036E730  48 00 36 39 */	bl TRKWriteUARTN
/* 8036E734  38 60 00 00 */	li r3, 0
/* 8036E738  48 00 01 90 */	b lbl_8036E8C8
lbl_8036E73C:
/* 8036E73C  93 A1 00 20 */	stw r29, 0x20(r1)
/* 8036E740  7F 63 DB 78 */	mr r3, r27
/* 8036E744  38 80 00 40 */	li r4, 0x40
/* 8036E748  4B FF EE D5 */	bl TRKSetBufferPosition
/* 8036E74C  57 C0 06 73 */	rlwinm. r0, r30, 0, 0x19, 0x19
/* 8036E750  41 82 00 38 */	beq lbl_8036E788
/* 8036E754  57 80 06 FE */	clrlwi r0, r28, 0x1b
/* 8036E758  38 81 01 00 */	addi r4, r1, 0x100
/* 8036E75C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8036E760  7F 63 DB 78 */	mr r3, r27
/* 8036E764  7C 84 02 14 */	add r4, r4, r0
/* 8036E768  4B FF ED 85 */	bl TRKReadBuffer
/* 8036E76C  7F 84 E3 78 */	mr r4, r28
/* 8036E770  38 61 01 00 */	addi r3, r1, 0x100
/* 8036E774  38 A1 00 20 */	addi r5, r1, 0x20
/* 8036E778  38 C0 00 00 */	li r6, 0
/* 8036E77C  48 00 12 99 */	bl TRKTargetAccessARAM
/* 8036E780  7C 7E 1B 78 */	mr r30, r3
/* 8036E784  48 00 00 34 */	b lbl_8036E7B8
lbl_8036E788:
/* 8036E788  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8036E78C  7F 63 DB 78 */	mr r3, r27
/* 8036E790  38 81 01 00 */	addi r4, r1, 0x100
/* 8036E794  4B FF ED 59 */	bl TRKReadBuffer
/* 8036E798  57 C0 EF FE */	rlwinm r0, r30, 0x1d, 0x1f, 0x1f
/* 8036E79C  7F 84 E3 78 */	mr r4, r28
/* 8036E7A0  38 61 01 00 */	addi r3, r1, 0x100
/* 8036E7A4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8036E7A8  68 06 00 01 */	xori r6, r0, 1
/* 8036E7AC  38 E0 00 00 */	li r7, 0
/* 8036E7B0  48 00 26 25 */	bl TRKTargetAccessMemory
/* 8036E7B4  7C 7E 1B 78 */	mr r30, r3
lbl_8036E7B8:
/* 8036E7B8  7F 63 DB 78 */	mr r3, r27
/* 8036E7BC  38 80 00 00 */	li r4, 0
/* 8036E7C0  4B FF EE 8D */	bl TRKResetBuffer
/* 8036E7C4  2C 1E 00 00 */	cmpwi r30, 0
/* 8036E7C8  40 82 00 3C */	bne lbl_8036E804
/* 8036E7CC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8036E7D0  38 80 00 00 */	li r4, 0
/* 8036E7D4  38 A0 00 40 */	li r5, 0x40
/* 8036E7D8  4B C9 4C 81 */	bl memset
/* 8036E7DC  38 60 00 40 */	li r3, 0x40
/* 8036E7E0  38 00 00 80 */	li r0, 0x80
/* 8036E7E4  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8036E7E8  7F 63 DB 78 */	mr r3, r27
/* 8036E7EC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8036E7F0  38 A0 00 40 */	li r5, 0x40
/* 8036E7F4  98 01 00 A8 */	stb r0, 0xa8(r1)
/* 8036E7F8  9B C1 00 AC */	stb r30, 0xac(r1)
/* 8036E7FC  4B FF ED 7D */	bl TRKAppendBuffer
/* 8036E800  7C 7E 1B 78 */	mr r30, r3
lbl_8036E804:
/* 8036E804  2C 1E 00 00 */	cmpwi r30, 0
/* 8036E808  41 82 00 8C */	beq lbl_8036E894
/* 8036E80C  38 1E F9 00 */	addi r0, r30, -1792
/* 8036E810  28 00 00 06 */	cmplwi r0, 6
/* 8036E814  41 81 00 44 */	bgt lbl_8036E858
/* 8036E818  3C 60 80 3D */	lis r3, lit_499@ha
/* 8036E81C  54 00 10 3A */	slwi r0, r0, 2
/* 8036E820  38 63 32 00 */	addi r3, r3, lit_499@l
/* 8036E824  7C 03 00 2E */	lwzx r0, r3, r0
/* 8036E828  7C 09 03 A6 */	mtctr r0
/* 8036E82C  4E 80 04 20 */	bctr 
/* 8036E830  3B C0 00 15 */	li r30, 0x15
/* 8036E834  48 00 00 28 */	b lbl_8036E85C
/* 8036E838  3B C0 00 13 */	li r30, 0x13
/* 8036E83C  48 00 00 20 */	b lbl_8036E85C
/* 8036E840  3B C0 00 21 */	li r30, 0x21
/* 8036E844  48 00 00 18 */	b lbl_8036E85C
/* 8036E848  3B C0 00 22 */	li r30, 0x22
/* 8036E84C  48 00 00 10 */	b lbl_8036E85C
/* 8036E850  3B C0 00 20 */	li r30, 0x20
/* 8036E854  48 00 00 08 */	b lbl_8036E85C
lbl_8036E858:
/* 8036E858  3B C0 00 03 */	li r30, 3
lbl_8036E85C:
/* 8036E85C  38 61 00 24 */	addi r3, r1, 0x24
/* 8036E860  38 80 00 00 */	li r4, 0
/* 8036E864  38 A0 00 40 */	li r5, 0x40
/* 8036E868  4B C9 4B F1 */	bl memset
/* 8036E86C  38 60 00 80 */	li r3, 0x80
/* 8036E870  38 00 00 40 */	li r0, 0x40
/* 8036E874  98 61 00 28 */	stb r3, 0x28(r1)
/* 8036E878  38 61 00 24 */	addi r3, r1, 0x24
/* 8036E87C  38 80 00 40 */	li r4, 0x40
/* 8036E880  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036E884  9B C1 00 2C */	stb r30, 0x2c(r1)
/* 8036E888  48 00 34 E1 */	bl TRKWriteUARTN
/* 8036E88C  38 60 00 00 */	li r3, 0
/* 8036E890  48 00 00 38 */	b lbl_8036E8C8
lbl_8036E894:
/* 8036E894  38 9F 00 60 */	addi r4, r31, 0x60
/* 8036E898  38 60 00 01 */	li r3, 1
/* 8036E89C  4C C6 31 82 */	crclr 6
/* 8036E8A0  48 00 43 B5 */	bl MWTRACE
/* 8036E8A4  7F 63 DB 78 */	mr r3, r27
/* 8036E8A8  4B FF E7 31 */	bl TRKMessageSend
/* 8036E8AC  38 9F 00 80 */	addi r4, r31, 0x80
/* 8036E8B0  7C 7F 1B 78 */	mr r31, r3
/* 8036E8B4  38 60 00 01 */	li r3, 1
/* 8036E8B8  7F E5 FB 78 */	mr r5, r31
/* 8036E8BC  4C C6 31 82 */	crclr 6
/* 8036E8C0  48 00 43 95 */	bl MWTRACE
/* 8036E8C4  7F E3 FB 78 */	mr r3, r31
lbl_8036E8C8:
/* 8036E8C8  81 41 00 00 */	lwz r10, 0(r1)
/* 8036E8CC  BB 6A FF EC */	lmw r27, -0x14(r10)
/* 8036E8D0  80 0A 00 04 */	lwz r0, 4(r10)
/* 8036E8D4  7C 08 03 A6 */	mtlr r0
/* 8036E8D8  7D 41 53 78 */	mr r1, r10
/* 8036E8DC  4E 80 00 20 */	blr 
