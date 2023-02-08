lbl_8035E7F0:
/* 8035E7F0  7C 08 02 A6 */	mflr r0
/* 8035E7F4  90 01 00 04 */	stw r0, 4(r1)
/* 8035E7F8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035E7FC  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8035E800  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E804  80 03 05 94 */	lwz r0, 0x594(r3)
/* 8035E808  28 00 00 FF */	cmplwi r0, 0xff
/* 8035E80C  41 82 01 4C */	beq lbl_8035E958
/* 8035E810  80 03 02 04 */	lwz r0, 0x204(r3)
/* 8035E814  3B E0 00 00 */	li r31, 0
/* 8035E818  54 03 B7 3E */	rlwinm r3, r0, 0x16, 0x1c, 0x1f
/* 8035E81C  3B C3 00 01 */	addi r30, r3, 1
/* 8035E820  54 1B 87 7E */	rlwinm r27, r0, 0x10, 0x1d, 0x1f
/* 8035E824  48 00 00 A0 */	b lbl_8035E8C4
lbl_8035E828:
/* 8035E828  2C 1F 00 02 */	cmpwi r31, 2
/* 8035E82C  41 82 00 4C */	beq lbl_8035E878
/* 8035E830  40 80 00 14 */	bge lbl_8035E844
/* 8035E834  2C 1F 00 00 */	cmpwi r31, 0
/* 8035E838  41 82 00 18 */	beq lbl_8035E850
/* 8035E83C  40 80 00 28 */	bge lbl_8035E864
/* 8035E840  48 00 00 5C */	b lbl_8035E89C
lbl_8035E844:
/* 8035E844  2C 1F 00 04 */	cmpwi r31, 4
/* 8035E848  40 80 00 54 */	bge lbl_8035E89C
/* 8035E84C  48 00 00 40 */	b lbl_8035E88C
lbl_8035E850:
/* 8035E850  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E854  80 03 01 20 */	lwz r0, 0x120(r3)
/* 8035E858  54 1D 07 7E */	clrlwi r29, r0, 0x1d
/* 8035E85C  54 1C EF 7E */	rlwinm r28, r0, 0x1d, 0x1d, 0x1f
/* 8035E860  48 00 00 3C */	b lbl_8035E89C
lbl_8035E864:
/* 8035E864  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E868  80 03 01 20 */	lwz r0, 0x120(r3)
/* 8035E86C  54 1D D7 7E */	rlwinm r29, r0, 0x1a, 0x1d, 0x1f
/* 8035E870  54 1C BF 7E */	rlwinm r28, r0, 0x17, 0x1d, 0x1f
/* 8035E874  48 00 00 28 */	b lbl_8035E89C
lbl_8035E878:
/* 8035E878  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E87C  80 03 01 20 */	lwz r0, 0x120(r3)
/* 8035E880  54 1D A7 7E */	rlwinm r29, r0, 0x14, 0x1d, 0x1f
/* 8035E884  54 1C 8F 7E */	rlwinm r28, r0, 0x11, 0x1d, 0x1f
/* 8035E888  48 00 00 14 */	b lbl_8035E89C
lbl_8035E88C:
/* 8035E88C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E890  80 03 01 20 */	lwz r0, 0x120(r3)
/* 8035E894  54 1D 77 7E */	rlwinm r29, r0, 0xe, 0x1d, 0x1f
/* 8035E898  54 1C 5F 7E */	rlwinm r28, r0, 0xb, 0x1d, 0x1f
lbl_8035E89C:
/* 8035E89C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035E8A0  38 00 00 01 */	li r0, 1
/* 8035E8A4  7C 00 E0 30 */	slw r0, r0, r28
/* 8035E8A8  80 63 05 94 */	lwz r3, 0x594(r3)
/* 8035E8AC  7C 60 00 39 */	and. r0, r3, r0
/* 8035E8B0  40 82 00 10 */	bne lbl_8035E8C0
/* 8035E8B4  38 7D 00 00 */	addi r3, r29, 0
/* 8035E8B8  38 9C 00 00 */	addi r4, r28, 0
/* 8035E8BC  4B FF FE 95 */	bl __SetSURegs
lbl_8035E8C0:
/* 8035E8C0  3B FF 00 01 */	addi r31, r31, 1
lbl_8035E8C4:
/* 8035E8C4  7C 1F D8 40 */	cmplw r31, r27
/* 8035E8C8  41 80 FF 60 */	blt lbl_8035E828
/* 8035E8CC  3B E0 00 00 */	li r31, 0
/* 8035E8D0  3B 7F 00 00 */	addi r27, r31, 0
/* 8035E8D4  48 00 00 7C */	b lbl_8035E950
lbl_8035E8D8:
/* 8035E8D8  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035E8DC  38 7B 05 54 */	addi r3, r27, 0x554
/* 8035E8E0  57 E4 08 3A */	rlwinm r4, r31, 1, 0, 0x1d
/* 8035E8E4  7C 65 18 2E */	lwzx r3, r5, r3
/* 8035E8E8  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8035E8EC  38 84 01 00 */	addi r4, r4, 0x100
/* 8035E8F0  7C 85 22 14 */	add r4, r5, r4
/* 8035E8F4  54 7D 06 2C */	rlwinm r29, r3, 0, 0x18, 0x16
/* 8035E8F8  41 82 00 10 */	beq lbl_8035E908
/* 8035E8FC  80 04 00 00 */	lwz r0, 0(r4)
/* 8035E900  54 1C 8F 7E */	rlwinm r28, r0, 0x11, 0x1d, 0x1f
/* 8035E904  48 00 00 0C */	b lbl_8035E910
lbl_8035E908:
/* 8035E908  80 04 00 00 */	lwz r0, 0(r4)
/* 8035E90C  54 1C EF 7E */	rlwinm r28, r0, 0x1d, 0x1d, 0x1f
lbl_8035E910:
/* 8035E910  28 1D 00 FF */	cmplwi r29, 0xff
/* 8035E914  41 82 00 34 */	beq lbl_8035E948
/* 8035E918  38 80 00 01 */	li r4, 1
/* 8035E91C  80 65 05 94 */	lwz r3, 0x594(r5)
/* 8035E920  7C 80 E0 30 */	slw r0, r4, r28
/* 8035E924  7C 60 00 39 */	and. r0, r3, r0
/* 8035E928  40 82 00 20 */	bne lbl_8035E948
/* 8035E92C  80 65 05 98 */	lwz r3, 0x598(r5)
/* 8035E930  7C 80 F8 30 */	slw r0, r4, r31
/* 8035E934  7C 60 00 39 */	and. r0, r3, r0
/* 8035E938  41 82 00 10 */	beq lbl_8035E948
/* 8035E93C  38 7D 00 00 */	addi r3, r29, 0
/* 8035E940  38 9C 00 00 */	addi r4, r28, 0
/* 8035E944  4B FF FE 0D */	bl __SetSURegs
lbl_8035E948:
/* 8035E948  3B 7B 00 04 */	addi r27, r27, 4
/* 8035E94C  3B FF 00 01 */	addi r31, r31, 1
lbl_8035E950:
/* 8035E950  7C 1F F0 40 */	cmplw r31, r30
/* 8035E954  41 80 FF 84 */	blt lbl_8035E8D8
lbl_8035E958:
/* 8035E958  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8035E95C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035E960  38 21 00 28 */	addi r1, r1, 0x28
/* 8035E964  7C 08 03 A6 */	mtlr r0
/* 8035E968  4E 80 00 20 */	blr 
