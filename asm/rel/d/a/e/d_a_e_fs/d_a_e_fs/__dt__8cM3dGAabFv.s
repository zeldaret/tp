lbl_806BDDC8:
/* 806BDDC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDDCC  7C 08 02 A6 */	mflr r0
/* 806BDDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDDD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDDD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDDDC  41 82 00 1C */	beq lbl_806BDDF8
/* 806BDDE0  3C A0 80 6C */	lis r5, __vt__8cM3dGAab@ha /* 0x806BE718@ha */
/* 806BDDE4  38 05 E7 18 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806BE718@l */
/* 806BDDE8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806BDDEC  7C 80 07 35 */	extsh. r0, r4
/* 806BDDF0  40 81 00 08 */	ble lbl_806BDDF8
/* 806BDDF4  4B C1 0F 49 */	bl __dl__FPv
lbl_806BDDF8:
/* 806BDDF8  7F E3 FB 78 */	mr r3, r31
/* 806BDDFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDE04  7C 08 03 A6 */	mtlr r0
/* 806BDE08  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDE0C  4E 80 00 20 */	blr 
