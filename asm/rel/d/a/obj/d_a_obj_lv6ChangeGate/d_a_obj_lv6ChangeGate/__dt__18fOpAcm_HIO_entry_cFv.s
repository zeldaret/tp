lbl_80C70C94:
/* 80C70C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70C98  7C 08 02 A6 */	mflr r0
/* 80C70C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C70CA8  41 82 00 30 */	beq lbl_80C70CD8
/* 80C70CAC  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C70CB0  38 03 23 5C */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C70CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C70CB8  41 82 00 10 */	beq lbl_80C70CC8
/* 80C70CBC  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C70CC0  38 03 23 68 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C70CC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C70CC8:
/* 80C70CC8  7C 80 07 35 */	extsh. r0, r4
/* 80C70CCC  40 81 00 0C */	ble lbl_80C70CD8
/* 80C70CD0  7F E3 FB 78 */	mr r3, r31
/* 80C70CD4  4B 65 E0 68 */	b __dl__FPv
lbl_80C70CD8:
/* 80C70CD8  7F E3 FB 78 */	mr r3, r31
/* 80C70CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70CE4  7C 08 03 A6 */	mtlr r0
/* 80C70CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70CEC  4E 80 00 20 */	blr 
