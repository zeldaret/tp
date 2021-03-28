lbl_80C8E5B0:
/* 80C8E5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E5B4  7C 08 02 A6 */	mflr r0
/* 80C8E5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E5C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8E5C4  41 82 00 30 */	beq lbl_80C8E5F4
/* 80C8E5C8  3C 60 80 C9 */	lis r3, __vt__15daMagLift_HIO_c@ha
/* 80C8E5CC  38 03 E8 28 */	addi r0, r3, __vt__15daMagLift_HIO_c@l
/* 80C8E5D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8E5D4  41 82 00 10 */	beq lbl_80C8E5E4
/* 80C8E5D8  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C8E5DC  38 03 E8 34 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C8E5E0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8E5E4:
/* 80C8E5E4  7C 80 07 35 */	extsh. r0, r4
/* 80C8E5E8  40 81 00 0C */	ble lbl_80C8E5F4
/* 80C8E5EC  7F E3 FB 78 */	mr r3, r31
/* 80C8E5F0  4B 64 07 4C */	b __dl__FPv
lbl_80C8E5F4:
/* 80C8E5F4  7F E3 FB 78 */	mr r3, r31
/* 80C8E5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E600  7C 08 03 A6 */	mtlr r0
/* 80C8E604  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E608  4E 80 00 20 */	blr 
