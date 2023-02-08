lbl_80875B18:
/* 80875B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80875B1C  7C 08 02 A6 */	mflr r0
/* 80875B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80875B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80875B28  7C 68 1B 78 */	mr r8, r3
/* 80875B2C  3C 60 80 88 */	lis r3, lit_1109@ha /* 0x808795A0@ha */
/* 80875B30  3B E3 95 A0 */	addi r31, r3, lit_1109@l /* 0x808795A0@l */
/* 80875B34  38 7F 08 E0 */	addi r3, r31, 0x8e0
/* 80875B38  3C 80 80 87 */	lis r4, daMP_Reader__FPv@ha /* 0x80875A28@ha */
/* 80875B3C  38 84 5A 28 */	addi r4, r4, daMP_Reader__FPv@l /* 0x80875A28@l */
/* 80875B40  38 A0 00 00 */	li r5, 0
/* 80875B44  38 DF 0B F8 */	addi r6, r31, 0xbf8
/* 80875B48  38 E0 20 00 */	li r7, 0x2000
/* 80875B4C  39 20 00 01 */	li r9, 1
/* 80875B50  38 C6 20 00 */	addi r6, r6, 0x2000
/* 80875B54  4B AC B7 39 */	bl OSCreateThread
/* 80875B58  2C 03 00 00 */	cmpwi r3, 0
/* 80875B5C  40 82 00 1C */	bne lbl_80875B78
/* 80875B60  3C 60 80 88 */	lis r3, d_a_movie_player__stringBase0@ha /* 0x8087911C@ha */
/* 80875B64  38 63 91 1C */	addi r3, r3, d_a_movie_player__stringBase0@l /* 0x8087911C@l */
/* 80875B68  4C C6 31 82 */	crclr 6
/* 80875B6C  4B 79 0F 51 */	bl OSReport
/* 80875B70  38 60 00 00 */	li r3, 0
/* 80875B74  48 00 00 40 */	b lbl_80875BB4
lbl_80875B78:
/* 80875B78  38 7F 08 04 */	addi r3, r31, 0x804
/* 80875B7C  38 9F 08 64 */	addi r4, r31, 0x864
/* 80875B80  38 A0 00 0A */	li r5, 0xa
/* 80875B84  4B AC 8E 11 */	bl OSInitMessageQueue
/* 80875B88  38 7F 08 24 */	addi r3, r31, 0x824
/* 80875B8C  38 9F 08 8C */	addi r4, r31, 0x88c
/* 80875B90  38 A0 00 0A */	li r5, 0xa
/* 80875B94  4B AC 8E 01 */	bl OSInitMessageQueue
/* 80875B98  38 7F 08 44 */	addi r3, r31, 0x844
/* 80875B9C  38 9F 08 B4 */	addi r4, r31, 0x8b4
/* 80875BA0  38 A0 00 0A */	li r5, 0xa
/* 80875BA4  4B AC 8D F1 */	bl OSInitMessageQueue
/* 80875BA8  38 00 00 01 */	li r0, 1
/* 80875BAC  90 1F 08 00 */	stw r0, 0x800(r31)
/* 80875BB0  38 60 00 01 */	li r3, 1
lbl_80875BB4:
/* 80875BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80875BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80875BBC  7C 08 03 A6 */	mtlr r0
/* 80875BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80875BC4  4E 80 00 20 */	blr 
