lbl_8015A860:
/* 8015A860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A864  7C 08 02 A6 */	mflr r0
/* 8015A868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A870  93 C1 00 08 */	stw r30, 8(r1)
/* 8015A874  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015A878  7C 9F 23 78 */	mr r31, r4
/* 8015A87C  41 82 00 74 */	beq lbl_8015A8F0
/* 8015A880  3C 60 80 3C */	lis r3, __vt__14daNpcCd2_HIO_c@ha
/* 8015A884  38 03 9D 78 */	addi r0, r3, __vt__14daNpcCd2_HIO_c@l
/* 8015A888  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A88C  38 7E 20 C4 */	addi r3, r30, 0x20c4
/* 8015A890  3C 80 80 16 */	lis r4, __dt__21daNpcCd2_HIO_WChild_cFv@ha
/* 8015A894  38 84 A6 78 */	addi r4, r4, __dt__21daNpcCd2_HIO_WChild_cFv@l
/* 8015A898  38 A0 02 3C */	li r5, 0x23c
/* 8015A89C  38 C0 00 0E */	li r6, 0xe
/* 8015A8A0  48 20 74 49 */	bl __destroy_arr
/* 8015A8A4  38 7E 00 04 */	addi r3, r30, 4
/* 8015A8A8  3C 80 80 16 */	lis r4, __dt__21daNpcCd2_HIO_MChild_cFv@ha
/* 8015A8AC  38 84 A7 98 */	addi r4, r4, __dt__21daNpcCd2_HIO_MChild_cFv@l
/* 8015A8B0  38 A0 02 0C */	li r5, 0x20c
/* 8015A8B4  38 C0 00 10 */	li r6, 0x10
/* 8015A8B8  48 20 74 31 */	bl __destroy_arr
/* 8015A8BC  28 1E 00 00 */	cmplwi r30, 0
/* 8015A8C0  41 82 00 20 */	beq lbl_8015A8E0
/* 8015A8C4  3C 60 80 3B */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 8015A8C8  38 03 61 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 8015A8CC  90 1E 00 00 */	stw r0, 0(r30)
/* 8015A8D0  41 82 00 10 */	beq lbl_8015A8E0
/* 8015A8D4  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8015A8D8  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8015A8DC  90 1E 00 00 */	stw r0, 0(r30)
lbl_8015A8E0:
/* 8015A8E0  7F E0 07 35 */	extsh. r0, r31
/* 8015A8E4  40 81 00 0C */	ble lbl_8015A8F0
/* 8015A8E8  7F C3 F3 78 */	mr r3, r30
/* 8015A8EC  48 17 44 51 */	bl __dl__FPv
lbl_8015A8F0:
/* 8015A8F0  7F C3 F3 78 */	mr r3, r30
/* 8015A8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015A8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A900  7C 08 03 A6 */	mtlr r0
/* 8015A904  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A908  4E 80 00 20 */	blr 
