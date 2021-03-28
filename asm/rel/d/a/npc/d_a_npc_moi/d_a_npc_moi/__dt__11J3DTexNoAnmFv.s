lbl_80A748E4:
/* 80A748E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A748E8  7C 08 02 A6 */	mflr r0
/* 80A748EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A748F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A748F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A748F8  41 82 00 1C */	beq lbl_80A74914
/* 80A748FC  3C A0 80 A8 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A74900  38 05 BE 1C */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A74904  90 1F 00 00 */	stw r0, 0(r31)
/* 80A74908  7C 80 07 35 */	extsh. r0, r4
/* 80A7490C  40 81 00 08 */	ble lbl_80A74914
/* 80A74910  4B 85 A4 2C */	b __dl__FPv
lbl_80A74914:
/* 80A74914  7F E3 FB 78 */	mr r3, r31
/* 80A74918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7491C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74920  7C 08 03 A6 */	mtlr r0
/* 80A74924  38 21 00 10 */	addi r1, r1, 0x10
/* 80A74928  4E 80 00 20 */	blr 
