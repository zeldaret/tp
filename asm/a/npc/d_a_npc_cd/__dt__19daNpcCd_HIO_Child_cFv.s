lbl_801577A0:
/* 801577A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801577A4  7C 08 02 A6 */	mflr r0
/* 801577A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801577AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801577B0  93 C1 00 08 */	stw r30, 8(r1)
/* 801577B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 801577B8  7C 9F 23 78 */	mr r31, r4
/* 801577BC  41 82 00 38 */	beq lbl_801577F4
/* 801577C0  3C 60 80 3B */	lis r3, __vt__19daNpcCd_HIO_Child_c@ha /* 0x803B6190@ha */
/* 801577C4  38 03 61 90 */	addi r0, r3, __vt__19daNpcCd_HIO_Child_c@l /* 0x803B6190@l */
/* 801577C8  90 1E 00 00 */	stw r0, 0(r30)
/* 801577CC  38 7E 00 04 */	addi r3, r30, 4
/* 801577D0  3C 80 80 15 */	lis r4, __dt__17daNpcCd_HIO_Jnt_cFv@ha /* 0x80157810@ha */
/* 801577D4  38 84 78 10 */	addi r4, r4, __dt__17daNpcCd_HIO_Jnt_cFv@l /* 0x80157810@l */
/* 801577D8  38 A0 00 18 */	li r5, 0x18
/* 801577DC  38 C0 00 0C */	li r6, 0xc
/* 801577E0  48 20 A5 09 */	bl __destroy_arr
/* 801577E4  7F E0 07 35 */	extsh. r0, r31
/* 801577E8  40 81 00 0C */	ble lbl_801577F4
/* 801577EC  7F C3 F3 78 */	mr r3, r30
/* 801577F0  48 17 75 4D */	bl __dl__FPv
lbl_801577F4:
/* 801577F4  7F C3 F3 78 */	mr r3, r30
/* 801577F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801577FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80157800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157804  7C 08 03 A6 */	mtlr r0
/* 80157808  38 21 00 10 */	addi r1, r1, 0x10
/* 8015780C  4E 80 00 20 */	blr 
