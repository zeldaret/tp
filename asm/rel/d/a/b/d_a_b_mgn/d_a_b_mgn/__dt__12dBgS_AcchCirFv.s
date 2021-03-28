lbl_8060F7F4:
/* 8060F7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F7F8  7C 08 02 A6 */	mflr r0
/* 8060F7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F804  93 C1 00 08 */	stw r30, 8(r1)
/* 8060F808  7C 7E 1B 79 */	or. r30, r3, r3
/* 8060F80C  7C 9F 23 78 */	mr r31, r4
/* 8060F810  41 82 00 38 */	beq lbl_8060F848
/* 8060F814  3C 60 80 61 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8060F818  38 03 03 B4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8060F81C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8060F820  38 7E 00 14 */	addi r3, r30, 0x14
/* 8060F824  38 80 FF FF */	li r4, -1
/* 8060F828  4B C5 F6 F0 */	b __dt__8cM3dGCirFv
/* 8060F82C  7F C3 F3 78 */	mr r3, r30
/* 8060F830  38 80 00 00 */	li r4, 0
/* 8060F834  4B C5 88 7C */	b __dt__13cBgS_PolyInfoFv
/* 8060F838  7F E0 07 35 */	extsh. r0, r31
/* 8060F83C  40 81 00 0C */	ble lbl_8060F848
/* 8060F840  7F C3 F3 78 */	mr r3, r30
/* 8060F844  4B CB F4 F8 */	b __dl__FPv
lbl_8060F848:
/* 8060F848  7F C3 F3 78 */	mr r3, r30
/* 8060F84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F850  83 C1 00 08 */	lwz r30, 8(r1)
/* 8060F854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F858  7C 08 03 A6 */	mtlr r0
/* 8060F85C  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F860  4E 80 00 20 */	blr 
