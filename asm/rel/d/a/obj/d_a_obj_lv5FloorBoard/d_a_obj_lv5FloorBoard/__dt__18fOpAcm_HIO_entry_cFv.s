lbl_80C6A658:
/* 80C6A658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A65C  7C 08 02 A6 */	mflr r0
/* 80C6A660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A668  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6A66C  41 82 00 30 */	beq lbl_80C6A69C
/* 80C6A670  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C6A674  38 03 B2 E0 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C6A678  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6A67C  41 82 00 10 */	beq lbl_80C6A68C
/* 80C6A680  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C6A684  38 03 B2 EC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C6A688  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6A68C:
/* 80C6A68C  7C 80 07 35 */	extsh. r0, r4
/* 80C6A690  40 81 00 0C */	ble lbl_80C6A69C
/* 80C6A694  7F E3 FB 78 */	mr r3, r31
/* 80C6A698  4B 66 46 A4 */	b __dl__FPv
lbl_80C6A69C:
/* 80C6A69C  7F E3 FB 78 */	mr r3, r31
/* 80C6A6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A6A8  7C 08 03 A6 */	mtlr r0
/* 80C6A6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A6B0  4E 80 00 20 */	blr 
