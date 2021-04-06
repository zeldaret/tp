lbl_80D3A66C:
/* 80D3A66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A670  7C 08 02 A6 */	mflr r0
/* 80D3A674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A67C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3A680  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3A684  7C 9F 23 78 */	mr r31, r4
/* 80D3A688  41 82 00 4C */	beq lbl_80D3A6D4
/* 80D3A68C  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha /* 0x803A852C@ha */
/* 80D3A690  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l /* 0x803A852C@l */
/* 80D3A694  90 1E 00 00 */	stw r0, 0(r30)
/* 80D3A698  41 82 00 2C */	beq lbl_80D3A6C4
/* 80D3A69C  3C 80 80 D4 */	lis r4, __vt__18dPa_levelEcallBack@ha /* 0x80D3B840@ha */
/* 80D3A6A0  38 04 B8 40 */	addi r0, r4, __vt__18dPa_levelEcallBack@l /* 0x80D3B840@l */
/* 80D3A6A4  90 1E 00 00 */	stw r0, 0(r30)
/* 80D3A6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 80D3A6AC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D3A6B0  7D 89 03 A6 */	mtctr r12
/* 80D3A6B4  4E 80 04 21 */	bctrl 
/* 80D3A6B8  7F C3 F3 78 */	mr r3, r30
/* 80D3A6BC  38 80 00 00 */	li r4, 0
/* 80D3A6C0  4B 54 3F E5 */	bl __dt__18JPAEmitterCallBackFv
lbl_80D3A6C4:
/* 80D3A6C4  7F E0 07 35 */	extsh. r0, r31
/* 80D3A6C8  40 81 00 0C */	ble lbl_80D3A6D4
/* 80D3A6CC  7F C3 F3 78 */	mr r3, r30
/* 80D3A6D0  4B 59 46 6D */	bl __dl__FPv
lbl_80D3A6D4:
/* 80D3A6D4  7F C3 F3 78 */	mr r3, r30
/* 80D3A6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A6DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3A6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A6E4  7C 08 03 A6 */	mtlr r0
/* 80D3A6E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A6EC  4E 80 00 20 */	blr 
