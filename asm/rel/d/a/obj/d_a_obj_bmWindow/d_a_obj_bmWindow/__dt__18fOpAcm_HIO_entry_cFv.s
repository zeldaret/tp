lbl_80BB82AC:
/* 80BB82AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB82B0  7C 08 02 A6 */	mflr r0
/* 80BB82B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB82B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB82BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB82C0  41 82 00 30 */	beq lbl_80BB82F0
/* 80BB82C4  3C 60 80 BC */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80BB82C8  38 03 99 6C */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80BB82CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB82D0  41 82 00 10 */	beq lbl_80BB82E0
/* 80BB82D4  3C 60 80 BC */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80BB82D8  38 03 99 78 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80BB82DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BB82E0:
/* 80BB82E0  7C 80 07 35 */	extsh. r0, r4
/* 80BB82E4  40 81 00 0C */	ble lbl_80BB82F0
/* 80BB82E8  7F E3 FB 78 */	mr r3, r31
/* 80BB82EC  4B 71 6A 50 */	b __dl__FPv
lbl_80BB82F0:
/* 80BB82F0  7F E3 FB 78 */	mr r3, r31
/* 80BB82F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB82F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB82FC  7C 08 03 A6 */	mtlr r0
/* 80BB8300  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8304  4E 80 00 20 */	blr 
