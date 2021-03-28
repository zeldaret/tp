lbl_80BF938C:
/* 80BF938C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9390  7C 08 02 A6 */	mflr r0
/* 80BF9394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF939C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF93A0  41 82 00 30 */	beq lbl_80BF93D0
/* 80BF93A4  3C 60 80 C0 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80BF93A8  38 03 AB 88 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80BF93AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF93B0  41 82 00 10 */	beq lbl_80BF93C0
/* 80BF93B4  3C 60 80 C0 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80BF93B8  38 03 AB 94 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80BF93BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BF93C0:
/* 80BF93C0  7C 80 07 35 */	extsh. r0, r4
/* 80BF93C4  40 81 00 0C */	ble lbl_80BF93D0
/* 80BF93C8  7F E3 FB 78 */	mr r3, r31
/* 80BF93CC  4B 6D 59 70 */	b __dl__FPv
lbl_80BF93D0:
/* 80BF93D0  7F E3 FB 78 */	mr r3, r31
/* 80BF93D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF93D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF93DC  7C 08 03 A6 */	mtlr r0
/* 80BF93E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF93E4  4E 80 00 20 */	blr 
