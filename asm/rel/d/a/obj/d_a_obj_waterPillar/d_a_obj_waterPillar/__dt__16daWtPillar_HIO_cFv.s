lbl_80D2DF34:
/* 80D2DF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DF38  7C 08 02 A6 */	mflr r0
/* 80D2DF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2DF44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2DF48  41 82 00 30 */	beq lbl_80D2DF78
/* 80D2DF4C  3C 60 80 D3 */	lis r3, __vt__16daWtPillar_HIO_c@ha
/* 80D2DF50  38 03 EB 10 */	addi r0, r3, __vt__16daWtPillar_HIO_c@l
/* 80D2DF54  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2DF58  41 82 00 10 */	beq lbl_80D2DF68
/* 80D2DF5C  3C 60 80 D3 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D2DF60  38 03 EB 1C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D2DF64  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D2DF68:
/* 80D2DF68  7C 80 07 35 */	extsh. r0, r4
/* 80D2DF6C  40 81 00 0C */	ble lbl_80D2DF78
/* 80D2DF70  7F E3 FB 78 */	mr r3, r31
/* 80D2DF74  4B 5A 0D C8 */	b __dl__FPv
lbl_80D2DF78:
/* 80D2DF78  7F E3 FB 78 */	mr r3, r31
/* 80D2DF7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2DF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DF84  7C 08 03 A6 */	mtlr r0
/* 80D2DF88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DF8C  4E 80 00 20 */	blr 
