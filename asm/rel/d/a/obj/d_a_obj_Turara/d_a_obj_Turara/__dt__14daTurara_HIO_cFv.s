lbl_80B9E5B4:
/* 80B9E5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E5B8  7C 08 02 A6 */	mflr r0
/* 80B9E5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E5C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9E5C8  41 82 00 40 */	beq lbl_80B9E608
/* 80B9E5CC  3C 60 80 BA */	lis r3, __vt__14daTurara_HIO_c@ha
/* 80B9E5D0  38 03 EB 68 */	addi r0, r3, __vt__14daTurara_HIO_c@l
/* 80B9E5D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9E5D8  41 82 00 20 */	beq lbl_80B9E5F8
/* 80B9E5DC  3C 60 80 BA */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80B9E5E0  38 03 EB 74 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80B9E5E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9E5E8  41 82 00 10 */	beq lbl_80B9E5F8
/* 80B9E5EC  3C 60 80 BA */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80B9E5F0  38 03 EB 80 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80B9E5F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B9E5F8:
/* 80B9E5F8  7C 80 07 35 */	extsh. r0, r4
/* 80B9E5FC  40 81 00 0C */	ble lbl_80B9E608
/* 80B9E600  7F E3 FB 78 */	mr r3, r31
/* 80B9E604  4B 73 07 38 */	b __dl__FPv
lbl_80B9E608:
/* 80B9E608  7F E3 FB 78 */	mr r3, r31
/* 80B9E60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E614  7C 08 03 A6 */	mtlr r0
/* 80B9E618  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E61C  4E 80 00 20 */	blr 
