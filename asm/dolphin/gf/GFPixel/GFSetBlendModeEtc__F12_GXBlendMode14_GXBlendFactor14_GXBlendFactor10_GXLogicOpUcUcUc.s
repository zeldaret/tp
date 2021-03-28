lbl_802CE004:
/* 802CE004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CE00C  93 C1 00 08 */	stw r30, 8(r1)
/* 802CE010  38 00 00 61 */	li r0, 0x61
/* 802CE014  3D 40 CC 01 */	lis r10, 0xCC01 /* 0xCC008000@ha */
/* 802CE018  98 0A 80 00 */	stb r0, 0x8000(r10)
/* 802CE01C  3B C0 00 00 */	li r30, 0
/* 802CE020  2C 03 00 01 */	cmpwi r3, 1
/* 802CE024  41 82 00 0C */	beq lbl_802CE030
/* 802CE028  2C 03 00 03 */	cmpwi r3, 3
/* 802CE02C  40 82 00 08 */	bne lbl_802CE034
lbl_802CE030:
/* 802CE030  3B C0 00 01 */	li r30, 1
lbl_802CE034:
/* 802CE034  54 DF 60 26 */	slwi r31, r6, 0xc
/* 802CE038  20 03 00 03 */	subfic r0, r3, 3
/* 802CE03C  7C 00 00 34 */	cntlzw r0, r0
/* 802CE040  54 0C 33 68 */	rlwinm r12, r0, 6, 0xd, 0x14
/* 802CE044  54 8B 40 2E */	slwi r11, r4, 8
/* 802CE048  54 AA 28 34 */	slwi r10, r5, 5
/* 802CE04C  55 06 25 36 */	rlwinm r6, r8, 4, 0x14, 0x1b
/* 802CE050  54 E5 1D 78 */	rlwinm r5, r7, 3, 0x15, 0x1c
/* 802CE054  55 24 15 BA */	rlwinm r4, r9, 2, 0x16, 0x1d
/* 802CE058  20 03 00 02 */	subfic r0, r3, 2
/* 802CE05C  7C 00 00 34 */	cntlzw r0, r0
/* 802CE060  54 03 E5 FC */	rlwinm r3, r0, 0x1c, 0x17, 0x1e
/* 802CE064  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802CE068  7C 60 03 78 */	or r0, r3, r0
/* 802CE06C  7C 80 03 78 */	or r0, r4, r0
/* 802CE070  7C A0 03 78 */	or r0, r5, r0
/* 802CE074  7C C0 03 78 */	or r0, r6, r0
/* 802CE078  7D 40 03 78 */	or r0, r10, r0
/* 802CE07C  7D 60 03 78 */	or r0, r11, r0
/* 802CE080  7D 80 03 78 */	or r0, r12, r0
/* 802CE084  7F E0 03 78 */	or r0, r31, r0
/* 802CE088  64 00 41 00 */	oris r0, r0, 0x4100
/* 802CE08C  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 802CE090  90 03 80 00 */	stw r0, 0x8000(r3)
/* 802CE094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CE098  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CE09C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE0A0  4E 80 00 20 */	blr 
