lbl_80A88038:
/* 80A88038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8803C  7C 08 02 A6 */	mflr r0
/* 80A88040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A88044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A88048  93 C1 00 08 */	stw r30, 8(r1)
/* 80A8804C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A88050  7C 9F 23 78 */	mr r31, r4
/* 80A88054  41 82 00 38 */	beq lbl_80A8808C
/* 80A88058  3C 60 80 A9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A8805C  38 03 8A A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A88060  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A88064  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A88068  38 80 FF FF */	li r4, -1
/* 80A8806C  4B 7E 6E AC */	b __dt__8cM3dGCirFv
/* 80A88070  7F C3 F3 78 */	mr r3, r30
/* 80A88074  38 80 00 00 */	li r4, 0
/* 80A88078  4B 7E 00 38 */	b __dt__13cBgS_PolyInfoFv
/* 80A8807C  7F E0 07 35 */	extsh. r0, r31
/* 80A88080  40 81 00 0C */	ble lbl_80A8808C
/* 80A88084  7F C3 F3 78 */	mr r3, r30
/* 80A88088  4B 84 6C B4 */	b __dl__FPv
lbl_80A8808C:
/* 80A8808C  7F C3 F3 78 */	mr r3, r30
/* 80A88090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A88094  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A88098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8809C  7C 08 03 A6 */	mtlr r0
/* 80A880A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A880A4  4E 80 00 20 */	blr 
