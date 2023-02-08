lbl_8057D154:
/* 8057D154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D158  7C 08 02 A6 */	mflr r0
/* 8057D15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D164  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057D168  41 82 00 30 */	beq lbl_8057D198
/* 8057D16C  3C 60 80 58 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x8057F8B4@ha */
/* 8057D170  38 03 F8 B4 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x8057F8B4@l */
/* 8057D174  90 1F 00 00 */	stw r0, 0(r31)
/* 8057D178  41 82 00 10 */	beq lbl_8057D188
/* 8057D17C  3C 60 80 58 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x8057F8C0@ha */
/* 8057D180  38 03 F8 C0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x8057F8C0@l */
/* 8057D184  90 1F 00 00 */	stw r0, 0(r31)
lbl_8057D188:
/* 8057D188  7C 80 07 35 */	extsh. r0, r4
/* 8057D18C  40 81 00 0C */	ble lbl_8057D198
/* 8057D190  7F E3 FB 78 */	mr r3, r31
/* 8057D194  4B D5 1B A9 */	bl __dl__FPv
lbl_8057D198:
/* 8057D198  7F E3 FB 78 */	mr r3, r31
/* 8057D19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D1A4  7C 08 03 A6 */	mtlr r0
/* 8057D1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D1AC  4E 80 00 20 */	blr 
