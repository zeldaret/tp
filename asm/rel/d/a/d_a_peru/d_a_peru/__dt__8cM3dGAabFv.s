lbl_80D4B230:
/* 80D4B230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B234  7C 08 02 A6 */	mflr r0
/* 80D4B238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B240  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B244  41 82 00 1C */	beq lbl_80D4B260
/* 80D4B248  3C A0 80 D5 */	lis r5, __vt__8cM3dGAab@ha
/* 80D4B24C  38 05 C6 78 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D4B250  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D4B254  7C 80 07 35 */	extsh. r0, r4
/* 80D4B258  40 81 00 08 */	ble lbl_80D4B260
/* 80D4B25C  4B 58 3A E0 */	b __dl__FPv
lbl_80D4B260:
/* 80D4B260  7F E3 FB 78 */	mr r3, r31
/* 80D4B264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B26C  7C 08 03 A6 */	mtlr r0
/* 80D4B270  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B274  4E 80 00 20 */	blr 
