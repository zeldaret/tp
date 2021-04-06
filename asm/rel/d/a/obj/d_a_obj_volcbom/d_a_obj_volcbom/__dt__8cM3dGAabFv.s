lbl_80D268F0:
/* 80D268F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D268F4  7C 08 02 A6 */	mflr r0
/* 80D268F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D268FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D26900  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D26904  41 82 00 1C */	beq lbl_80D26920
/* 80D26908  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D26E44@ha */
/* 80D2690C  38 05 6E 44 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D26E44@l */
/* 80D26910  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D26914  7C 80 07 35 */	extsh. r0, r4
/* 80D26918  40 81 00 08 */	ble lbl_80D26920
/* 80D2691C  4B 5A 84 21 */	bl __dl__FPv
lbl_80D26920:
/* 80D26920  7F E3 FB 78 */	mr r3, r31
/* 80D26924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D26928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2692C  7C 08 03 A6 */	mtlr r0
/* 80D26930  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26934  4E 80 00 20 */	blr 
