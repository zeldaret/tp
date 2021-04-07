lbl_80AB86EC:
/* 80AB86EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB86F0  7C 08 02 A6 */	mflr r0
/* 80AB86F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB86F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB86FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB8700  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB8704  7C 9F 23 78 */	mr r31, r4
/* 80AB8708  41 82 00 38 */	beq lbl_80AB8740
/* 80AB870C  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AB93E8@ha */
/* 80AB8710  38 03 93 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AB93E8@l */
/* 80AB8714  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AB8718  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AB871C  38 80 FF FF */	li r4, -1
/* 80AB8720  4B 7B 67 F9 */	bl __dt__8cM3dGCirFv
/* 80AB8724  7F C3 F3 78 */	mr r3, r30
/* 80AB8728  38 80 00 00 */	li r4, 0
/* 80AB872C  4B 7A F9 85 */	bl __dt__13cBgS_PolyInfoFv
/* 80AB8730  7F E0 07 35 */	extsh. r0, r31
/* 80AB8734  40 81 00 0C */	ble lbl_80AB8740
/* 80AB8738  7F C3 F3 78 */	mr r3, r30
/* 80AB873C  4B 81 66 01 */	bl __dl__FPv
lbl_80AB8740:
/* 80AB8740  7F C3 F3 78 */	mr r3, r30
/* 80AB8744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8748  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB874C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB8750  7C 08 03 A6 */	mtlr r0
/* 80AB8754  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8758  4E 80 00 20 */	blr 
