lbl_809F3278:
/* 809F3278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F327C  7C 08 02 A6 */	mflr r0
/* 809F3280  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3288  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F328C  41 82 00 1C */	beq lbl_809F32A8
/* 809F3290  3C A0 80 A0 */	lis r5, __vt__8cM3dGAab@ha /* 0x809F8E98@ha */
/* 809F3294  38 05 8E 98 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809F8E98@l */
/* 809F3298  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809F329C  7C 80 07 35 */	extsh. r0, r4
/* 809F32A0  40 81 00 08 */	ble lbl_809F32A8
/* 809F32A4  4B 8D BA 99 */	bl __dl__FPv
lbl_809F32A8:
/* 809F32A8  7F E3 FB 78 */	mr r3, r31
/* 809F32AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F32B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F32B4  7C 08 03 A6 */	mtlr r0
/* 809F32B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F32BC  4E 80 00 20 */	blr 
