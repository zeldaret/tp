lbl_8015A798:
/* 8015A798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A79C  7C 08 02 A6 */	mflr r0
/* 8015A7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A7A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A7A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8015A7AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015A7B0  7C 9F 23 78 */	mr r31, r4
/* 8015A7B4  41 82 00 38 */	beq lbl_8015A7EC
/* 8015A7B8  3C 60 80 3C */	lis r3, __vt__21daNpcCd2_HIO_MChild_c@ha /* 0x803B9D54@ha */
/* 8015A7BC  38 03 9D 54 */	addi r0, r3, __vt__21daNpcCd2_HIO_MChild_c@l /* 0x803B9D54@l */
/* 8015A7C0  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A7C4  38 7E 00 04 */	addi r3, r30, 4
/* 8015A7C8  3C 80 80 16 */	lis r4, __dt__18daNpcCd2_HIO_Jnt_cFv@ha /* 0x8015A6E8@ha */
/* 8015A7CC  38 84 A6 E8 */	addi r4, r4, __dt__18daNpcCd2_HIO_Jnt_cFv@l /* 0x8015A6E8@l */
/* 8015A7D0  38 A0 00 18 */	li r5, 0x18
/* 8015A7D4  38 C0 00 13 */	li r6, 0x13
/* 8015A7D8  48 20 75 11 */	bl __destroy_arr
/* 8015A7DC  7F E0 07 35 */	extsh. r0, r31
/* 8015A7E0  40 81 00 0C */	ble lbl_8015A7EC
/* 8015A7E4  7F C3 F3 78 */	mr r3, r30
/* 8015A7E8  48 17 45 55 */	bl __dl__FPv
lbl_8015A7EC:
/* 8015A7EC  7F C3 F3 78 */	mr r3, r30
/* 8015A7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A7F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015A7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A7FC  7C 08 03 A6 */	mtlr r0
/* 8015A800  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A804  4E 80 00 20 */	blr 
