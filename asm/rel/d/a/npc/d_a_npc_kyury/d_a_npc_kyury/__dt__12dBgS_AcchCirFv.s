lbl_80A6311C:
/* 80A6311C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A63120  7C 08 02 A6 */	mflr r0
/* 80A63124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A63128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6312C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A63130  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A63134  7C 9F 23 78 */	mr r31, r4
/* 80A63138  41 82 00 38 */	beq lbl_80A63170
/* 80A6313C  3C 60 80 A6 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A63140  38 03 40 DC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A63144  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A63148  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A6314C  38 80 FF FF */	li r4, -1
/* 80A63150  4B 80 BD C8 */	b __dt__8cM3dGCirFv
/* 80A63154  7F C3 F3 78 */	mr r3, r30
/* 80A63158  38 80 00 00 */	li r4, 0
/* 80A6315C  4B 80 4F 54 */	b __dt__13cBgS_PolyInfoFv
/* 80A63160  7F E0 07 35 */	extsh. r0, r31
/* 80A63164  40 81 00 0C */	ble lbl_80A63170
/* 80A63168  7F C3 F3 78 */	mr r3, r30
/* 80A6316C  4B 86 BB D0 */	b __dl__FPv
lbl_80A63170:
/* 80A63170  7F C3 F3 78 */	mr r3, r30
/* 80A63174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A63178  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6317C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A63180  7C 08 03 A6 */	mtlr r0
/* 80A63184  38 21 00 10 */	addi r1, r1, 0x10
/* 80A63188  4E 80 00 20 */	blr 
