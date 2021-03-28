lbl_805A3478:
/* 805A3478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A347C  7C 08 02 A6 */	mflr r0
/* 805A3480  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3488  7C 7F 1B 78 */	mr r31, r3
/* 805A348C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A3490  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A3494  40 82 00 1C */	bne lbl_805A34B0
/* 805A3498  28 1F 00 00 */	cmplwi r31, 0
/* 805A349C  41 82 00 08 */	beq lbl_805A34A4
/* 805A34A0  4B A7 56 C4 */	b __ct__10fopAc_ac_cFv
lbl_805A34A4:
/* 805A34A4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A34A8  60 00 00 08 */	ori r0, r0, 8
/* 805A34AC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A34B0:
/* 805A34B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A34B4  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A34B8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A34BC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A34C0  98 1F 05 69 */	stb r0, 0x569(r31)
/* 805A34C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A34C8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805A34CC  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 805A34D0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A34D4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 805A34D8  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 805A34DC  38 60 00 04 */	li r3, 4
/* 805A34E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A34E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A34E8  7C 08 03 A6 */	mtlr r0
/* 805A34EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A34F0  4E 80 00 20 */	blr 
