lbl_803171DC:
/* 803171DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803171E0  7C 08 02 A6 */	mflr r0
/* 803171E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803171E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803171EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803171F0  41 82 00 1C */	beq lbl_8031720C
/* 803171F4  3C A0 80 3D */	lis r5, __vt__14J3DTexGenBlock@ha
/* 803171F8  38 05 DE 34 */	addi r0, r5, __vt__14J3DTexGenBlock@l
/* 803171FC  90 1F 00 00 */	stw r0, 0(r31)
/* 80317200  7C 80 07 35 */	extsh. r0, r4
/* 80317204  40 81 00 08 */	ble lbl_8031720C
/* 80317208  4B FB 7B 35 */	bl __dl__FPv
lbl_8031720C:
/* 8031720C  7F E3 FB 78 */	mr r3, r31
/* 80317210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80317214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80317218  7C 08 03 A6 */	mtlr r0
/* 8031721C  38 21 00 10 */	addi r1, r1, 0x10
/* 80317220  4E 80 00 20 */	blr 
