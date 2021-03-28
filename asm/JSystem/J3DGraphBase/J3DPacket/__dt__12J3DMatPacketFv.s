lbl_803129A4:
/* 803129A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803129A8  7C 08 02 A6 */	mflr r0
/* 803129AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803129B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803129B4  93 C1 00 08 */	stw r30, 8(r1)
/* 803129B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803129BC  7C 9F 23 78 */	mr r31, r4
/* 803129C0  41 82 00 28 */	beq lbl_803129E8
/* 803129C4  3C 80 80 3D */	lis r4, __vt__12J3DMatPacket@ha
/* 803129C8  38 04 D9 54 */	addi r0, r4, __vt__12J3DMatPacket@l
/* 803129CC  90 1E 00 00 */	stw r0, 0(r30)
/* 803129D0  38 80 00 00 */	li r4, 0
/* 803129D4  4B FF FD DD */	bl __dt__13J3DDrawPacketFv
/* 803129D8  7F E0 07 35 */	extsh. r0, r31
/* 803129DC  40 81 00 0C */	ble lbl_803129E8
/* 803129E0  7F C3 F3 78 */	mr r3, r30
/* 803129E4  4B FB C3 59 */	bl __dl__FPv
lbl_803129E8:
/* 803129E8  7F C3 F3 78 */	mr r3, r30
/* 803129EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803129F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803129F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803129F8  7C 08 03 A6 */	mtlr r0
/* 803129FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80312A00  4E 80 00 20 */	blr 
