lbl_80A82908:
/* 80A82908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8290C  7C 08 02 A6 */	mflr r0
/* 80A82910  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82918  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A8291C  41 82 00 1C */	beq lbl_80A82938
/* 80A82920  3C A0 80 A8 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80A82924  38 05 3D 30 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80A82928  90 1F 00 04 */	stw r0, 4(r31)
/* 80A8292C  7C 80 07 35 */	extsh. r0, r4
/* 80A82930  40 81 00 08 */	ble lbl_80A82938
/* 80A82934  4B 84 C4 08 */	b __dl__FPv
lbl_80A82938:
/* 80A82938  7F E3 FB 78 */	mr r3, r31
/* 80A8293C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82944  7C 08 03 A6 */	mtlr r0
/* 80A82948  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8294C  4E 80 00 20 */	blr 
