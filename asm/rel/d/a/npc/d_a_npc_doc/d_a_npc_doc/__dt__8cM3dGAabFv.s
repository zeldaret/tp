lbl_809A95DC:
/* 809A95DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A95E0  7C 08 02 A6 */	mflr r0
/* 809A95E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A95E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A95EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A95F0  41 82 00 1C */	beq lbl_809A960C
/* 809A95F4  3C A0 80 9B */	lis r5, __vt__8cM3dGAab@ha /* 0x809AA9D0@ha */
/* 809A95F8  38 05 A9 D0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809AA9D0@l */
/* 809A95FC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809A9600  7C 80 07 35 */	extsh. r0, r4
/* 809A9604  40 81 00 08 */	ble lbl_809A960C
/* 809A9608  4B 92 57 35 */	bl __dl__FPv
lbl_809A960C:
/* 809A960C  7F E3 FB 78 */	mr r3, r31
/* 809A9610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9618  7C 08 03 A6 */	mtlr r0
/* 809A961C  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9620  4E 80 00 20 */	blr 
