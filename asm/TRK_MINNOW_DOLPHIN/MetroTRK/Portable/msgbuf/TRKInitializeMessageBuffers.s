lbl_8036D7E4:
/* 8036D7E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036D7E8  7C 08 02 A6 */	mflr r0
/* 8036D7EC  3C 60 80 45 */	lis r3, gTRKMsgBufs@ha /* 0x8044D8C0@ha */
/* 8036D7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036D7F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036D7F8  3B E0 00 00 */	li r31, 0
/* 8036D7FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036D800  3B C3 D8 C0 */	addi r30, r3, gTRKMsgBufs@l /* 0x8044D8C0@l */
/* 8036D804  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036D808  3B A0 00 00 */	li r29, 0
lbl_8036D80C:
/* 8036D80C  7F C3 F3 78 */	mr r3, r30
/* 8036D810  48 00 1C 99 */	bl TRKInitializeMutex
/* 8036D814  7F C3 F3 78 */	mr r3, r30
/* 8036D818  48 00 1C 89 */	bl TRKAcquireMutex
/* 8036D81C  93 FE 00 04 */	stw r31, 4(r30)
/* 8036D820  7F C3 F3 78 */	mr r3, r30
/* 8036D824  48 00 1C 75 */	bl TRKReleaseMutex
/* 8036D828  3B BD 00 01 */	addi r29, r29, 1
/* 8036D82C  3B DE 08 90 */	addi r30, r30, 0x890
/* 8036D830  2C 1D 00 03 */	cmpwi r29, 3
/* 8036D834  41 80 FF D8 */	blt lbl_8036D80C
/* 8036D838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036D83C  38 60 00 00 */	li r3, 0
/* 8036D840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036D844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036D848  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036D84C  7C 08 03 A6 */	mtlr r0
/* 8036D850  38 21 00 20 */	addi r1, r1, 0x20
/* 8036D854  4E 80 00 20 */	blr 
