lbl_80157964:
/* 80157964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80157968  7C 08 02 A6 */	mflr r0
/* 8015796C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80157974  93 C1 00 08 */	stw r30, 8(r1)
/* 80157978  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015797C  7C 9F 23 78 */	mr r31, r4
/* 80157980  41 82 00 74 */	beq lbl_801579F4
/* 80157984  3C 60 80 3B */	lis r3, __vt__13daNpcCd_HIO_c@ha
/* 80157988  38 03 61 9C */	addi r0, r3, __vt__13daNpcCd_HIO_c@l
/* 8015798C  90 1E 00 00 */	stw r0, 0(r30)
/* 80157990  38 7E 16 44 */	addi r3, r30, 0x1644
/* 80157994  3C 80 80 15 */	lis r4, __dt__19daNpcCd_HIO_Child_cFv@ha
/* 80157998  38 84 77 A0 */	addi r4, r4, __dt__19daNpcCd_HIO_Child_cFv@l
/* 8015799C  38 A0 01 64 */	li r5, 0x164
/* 801579A0  38 C0 00 0E */	li r6, 0xe
/* 801579A4  48 20 A3 45 */	bl __destroy_arr
/* 801579A8  38 7E 00 04 */	addi r3, r30, 4
/* 801579AC  3C 80 80 15 */	lis r4, __dt__19daNpcCd_HIO_Child_cFv@ha
/* 801579B0  38 84 77 A0 */	addi r4, r4, __dt__19daNpcCd_HIO_Child_cFv@l
/* 801579B4  38 A0 01 64 */	li r5, 0x164
/* 801579B8  38 C0 00 10 */	li r6, 0x10
/* 801579BC  48 20 A3 2D */	bl __destroy_arr
/* 801579C0  28 1E 00 00 */	cmplwi r30, 0
/* 801579C4  41 82 00 20 */	beq lbl_801579E4
/* 801579C8  3C 60 80 3B */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 801579CC  38 03 61 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 801579D0  90 1E 00 00 */	stw r0, 0(r30)
/* 801579D4  41 82 00 10 */	beq lbl_801579E4
/* 801579D8  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 801579DC  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 801579E0  90 1E 00 00 */	stw r0, 0(r30)
lbl_801579E4:
/* 801579E4  7F E0 07 35 */	extsh. r0, r31
/* 801579E8  40 81 00 0C */	ble lbl_801579F4
/* 801579EC  7F C3 F3 78 */	mr r3, r30
/* 801579F0  48 17 73 4D */	bl __dl__FPv
lbl_801579F4:
/* 801579F4  7F C3 F3 78 */	mr r3, r30
/* 801579F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801579FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80157A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157A04  7C 08 03 A6 */	mtlr r0
/* 80157A08  38 21 00 10 */	addi r1, r1, 0x10
/* 80157A0C  4E 80 00 20 */	blr 
