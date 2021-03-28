lbl_806C6DA4:
/* 806C6DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6DA8  7C 08 02 A6 */	mflr r0
/* 806C6DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 806C6DB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806C6DBC  7C 9F 23 78 */	mr r31, r4
/* 806C6DC0  41 82 00 38 */	beq lbl_806C6DF8
/* 806C6DC4  3C 60 80 6C */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806C6DC8  38 03 78 B4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806C6DCC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806C6DD0  38 7E 00 14 */	addi r3, r30, 0x14
/* 806C6DD4  38 80 FF FF */	li r4, -1
/* 806C6DD8  4B BA 81 40 */	b __dt__8cM3dGCirFv
/* 806C6DDC  7F C3 F3 78 */	mr r3, r30
/* 806C6DE0  38 80 00 00 */	li r4, 0
/* 806C6DE4  4B BA 12 CC */	b __dt__13cBgS_PolyInfoFv
/* 806C6DE8  7F E0 07 35 */	extsh. r0, r31
/* 806C6DEC  40 81 00 0C */	ble lbl_806C6DF8
/* 806C6DF0  7F C3 F3 78 */	mr r3, r30
/* 806C6DF4  4B C0 7F 48 */	b __dl__FPv
lbl_806C6DF8:
/* 806C6DF8  7F C3 F3 78 */	mr r3, r30
/* 806C6DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C6E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6E08  7C 08 03 A6 */	mtlr r0
/* 806C6E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6E10  4E 80 00 20 */	blr 
