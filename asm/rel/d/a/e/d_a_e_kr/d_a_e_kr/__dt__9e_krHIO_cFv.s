lbl_80705574:
/* 80705574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80705578  7C 08 02 A6 */	mflr r0
/* 8070557C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80705580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80705584  7C 7F 1B 79 */	or. r31, r3, r3
/* 80705588  41 82 00 40 */	beq lbl_807055C8
/* 8070558C  3C 60 80 70 */	lis r3, __vt__9e_krHIO_c@ha
/* 80705590  38 03 5F B8 */	addi r0, r3, __vt__9e_krHIO_c@l
/* 80705594  90 1F 00 00 */	stw r0, 0(r31)
/* 80705598  41 82 00 20 */	beq lbl_807055B8
/* 8070559C  3C 60 80 70 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 807055A0  38 03 5F C4 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 807055A4  90 1F 00 00 */	stw r0, 0(r31)
/* 807055A8  41 82 00 10 */	beq lbl_807055B8
/* 807055AC  3C 60 80 70 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 807055B0  38 03 5F D0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 807055B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_807055B8:
/* 807055B8  7C 80 07 35 */	extsh. r0, r4
/* 807055BC  40 81 00 0C */	ble lbl_807055C8
/* 807055C0  7F E3 FB 78 */	mr r3, r31
/* 807055C4  4B BC 97 78 */	b __dl__FPv
lbl_807055C8:
/* 807055C8  7F E3 FB 78 */	mr r3, r31
/* 807055CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807055D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807055D4  7C 08 03 A6 */	mtlr r0
/* 807055D8  38 21 00 10 */	addi r1, r1, 0x10
/* 807055DC  4E 80 00 20 */	blr 
