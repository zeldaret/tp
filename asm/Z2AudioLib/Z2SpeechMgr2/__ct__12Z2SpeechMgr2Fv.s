lbl_802CBC60:
/* 802CBC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBC64  7C 08 02 A6 */	mflr r0
/* 802CBC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CBC70  7C 7F 1B 78 */	mr r31, r3
/* 802CBC74  93 ED 85 F0 */	stw r31, data_80450B70(r13)
/* 802CBC78  38 00 00 00 */	li r0, 0
/* 802CBC7C  90 03 00 00 */	stw r0, 0(r3)
/* 802CBC80  90 03 00 04 */	stw r0, 4(r3)
/* 802CBC84  38 7F 00 08 */	addi r3, r31, 8
/* 802CBC88  38 80 00 00 */	li r4, 0
/* 802CBC8C  48 06 DE 59 */	bl __ct__Q25JMath13TRandom_fast_FUl
/* 802CBC90  38 7F 00 0C */	addi r3, r31, 0xc
/* 802CBC94  48 00 13 25 */	bl __ct__15Z2SpeechStarterFv
/* 802CBC98  38 00 00 00 */	li r0, 0
/* 802CBC9C  B0 1F 03 F8 */	sth r0, 0x3f8(r31)
/* 802CBCA0  38 60 FF FF */	li r3, -1
/* 802CBCA4  B0 7F 03 FA */	sth r3, 0x3fa(r31)
/* 802CBCA8  B0 1F 03 FC */	sth r0, 0x3fc(r31)
/* 802CBCAC  98 1F 03 FE */	stb r0, 0x3fe(r31)
/* 802CBCB0  98 1F 03 FF */	stb r0, 0x3ff(r31)
/* 802CBCB4  98 1F 04 01 */	stb r0, 0x401(r31)
/* 802CBCB8  38 80 00 00 */	li r4, 0
/* 802CBCBC  38 00 00 40 */	li r0, 0x40
/* 802CBCC0  7C 09 03 A6 */	mtctr r0
lbl_802CBCC4:
/* 802CBCC4  38 04 04 02 */	addi r0, r4, 0x402
/* 802CBCC8  7C 7F 01 AE */	stbx r3, r31, r0
/* 802CBCCC  38 84 00 01 */	addi r4, r4, 1
/* 802CBCD0  42 00 FF F4 */	bdnz lbl_802CBCC4
/* 802CBCD4  7F E3 FB 78 */	mr r3, r31
/* 802CBCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CBCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBCE0  7C 08 03 A6 */	mtlr r0
/* 802CBCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBCE8  4E 80 00 20 */	blr 
