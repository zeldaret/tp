lbl_80C9E820:
/* 80C9E820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E824  7C 08 02 A6 */	mflr r0
/* 80C9E828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E82C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9E830  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9E834  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9E838  7C 9F 23 78 */	mr r31, r4
/* 80C9E83C  41 82 00 3C */	beq lbl_80C9E878
/* 80C9E840  3C 80 80 CA */	lis r4, __vt__18dPa_levelEcallBack@ha /* 0x80C9EA58@ha */
/* 80C9E844  38 04 EA 58 */	addi r0, r4, __vt__18dPa_levelEcallBack@l /* 0x80C9EA58@l */
/* 80C9E848  90 1E 00 00 */	stw r0, 0(r30)
/* 80C9E84C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C9E850  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C9E854  7D 89 03 A6 */	mtctr r12
/* 80C9E858  4E 80 04 21 */	bctrl 
/* 80C9E85C  7F C3 F3 78 */	mr r3, r30
/* 80C9E860  38 80 00 00 */	li r4, 0
/* 80C9E864  4B 5D FE 41 */	bl __dt__18JPAEmitterCallBackFv
/* 80C9E868  7F E0 07 35 */	extsh. r0, r31
/* 80C9E86C  40 81 00 0C */	ble lbl_80C9E878
/* 80C9E870  7F C3 F3 78 */	mr r3, r30
/* 80C9E874  4B 63 04 C9 */	bl __dl__FPv
lbl_80C9E878:
/* 80C9E878  7F C3 F3 78 */	mr r3, r30
/* 80C9E87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9E880  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9E884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E888  7C 08 03 A6 */	mtlr r0
/* 80C9E88C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E890  4E 80 00 20 */	blr 
