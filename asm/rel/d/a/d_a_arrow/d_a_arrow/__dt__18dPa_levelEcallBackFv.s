lbl_8049D80C:
/* 8049D80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D810  7C 08 02 A6 */	mflr r0
/* 8049D814  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049D81C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049D820  7C 7E 1B 79 */	or. r30, r3, r3
/* 8049D824  7C 9F 23 78 */	mr r31, r4
/* 8049D828  41 82 00 3C */	beq lbl_8049D864
/* 8049D82C  3C 80 80 4A */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 8049D830  38 04 DE F4 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 8049D834  90 1E 00 00 */	stw r0, 0(r30)
/* 8049D838  81 83 00 00 */	lwz r12, 0(r3)
/* 8049D83C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8049D840  7D 89 03 A6 */	mtctr r12
/* 8049D844  4E 80 04 21 */	bctrl 
/* 8049D848  7F C3 F3 78 */	mr r3, r30
/* 8049D84C  38 80 00 00 */	li r4, 0
/* 8049D850  4B DE 0E 54 */	b __dt__18JPAEmitterCallBackFv
/* 8049D854  7F E0 07 35 */	extsh. r0, r31
/* 8049D858  40 81 00 0C */	ble lbl_8049D864
/* 8049D85C  7F C3 F3 78 */	mr r3, r30
/* 8049D860  4B E3 14 DC */	b __dl__FPv
lbl_8049D864:
/* 8049D864  7F C3 F3 78 */	mr r3, r30
/* 8049D868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049D86C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049D870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D874  7C 08 03 A6 */	mtlr r0
/* 8049D878  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D87C  4E 80 00 20 */	blr 
