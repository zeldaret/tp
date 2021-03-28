lbl_8015A678:
/* 8015A678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A67C  7C 08 02 A6 */	mflr r0
/* 8015A680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A688  93 C1 00 08 */	stw r30, 8(r1)
/* 8015A68C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015A690  7C 9F 23 78 */	mr r31, r4
/* 8015A694  41 82 00 38 */	beq lbl_8015A6CC
/* 8015A698  3C 60 80 3C */	lis r3, __vt__21daNpcCd2_HIO_WChild_c@ha
/* 8015A69C  38 03 9D 6C */	addi r0, r3, __vt__21daNpcCd2_HIO_WChild_c@l
/* 8015A6A0  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A6A4  38 7E 00 04 */	addi r3, r30, 4
/* 8015A6A8  3C 80 80 16 */	lis r4, __dt__18daNpcCd2_HIO_Jnt_cFv@ha
/* 8015A6AC  38 84 A6 E8 */	addi r4, r4, __dt__18daNpcCd2_HIO_Jnt_cFv@l
/* 8015A6B0  38 A0 00 18 */	li r5, 0x18
/* 8015A6B4  38 C0 00 15 */	li r6, 0x15
/* 8015A6B8  48 20 76 31 */	bl __destroy_arr
/* 8015A6BC  7F E0 07 35 */	extsh. r0, r31
/* 8015A6C0  40 81 00 0C */	ble lbl_8015A6CC
/* 8015A6C4  7F C3 F3 78 */	mr r3, r30
/* 8015A6C8  48 17 46 75 */	bl __dl__FPv
lbl_8015A6CC:
/* 8015A6CC  7F C3 F3 78 */	mr r3, r30
/* 8015A6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A6D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015A6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A6DC  7C 08 03 A6 */	mtlr r0
/* 8015A6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A6E4  4E 80 00 20 */	blr 
