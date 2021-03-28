lbl_805EC6C4:
/* 805EC6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC6C8  7C 08 02 A6 */	mflr r0
/* 805EC6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC6D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805EC6D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 805EC6DC  7C 9F 23 78 */	mr r31, r4
/* 805EC6E0  41 82 00 38 */	beq lbl_805EC718
/* 805EC6E4  3C 60 80 5F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 805EC6E8  38 03 D6 30 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 805EC6EC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 805EC6F0  38 7E 00 14 */	addi r3, r30, 0x14
/* 805EC6F4  38 80 FF FF */	li r4, -1
/* 805EC6F8  4B C8 28 20 */	b __dt__8cM3dGCirFv
/* 805EC6FC  7F C3 F3 78 */	mr r3, r30
/* 805EC700  38 80 00 00 */	li r4, 0
/* 805EC704  4B C7 B9 AC */	b __dt__13cBgS_PolyInfoFv
/* 805EC708  7F E0 07 35 */	extsh. r0, r31
/* 805EC70C  40 81 00 0C */	ble lbl_805EC718
/* 805EC710  7F C3 F3 78 */	mr r3, r30
/* 805EC714  4B CE 26 28 */	b __dl__FPv
lbl_805EC718:
/* 805EC718  7F C3 F3 78 */	mr r3, r30
/* 805EC71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC720  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EC724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC728  7C 08 03 A6 */	mtlr r0
/* 805EC72C  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC730  4E 80 00 20 */	blr 
