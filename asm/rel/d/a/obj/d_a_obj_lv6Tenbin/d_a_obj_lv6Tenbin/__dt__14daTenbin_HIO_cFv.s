lbl_80C77904:
/* 80C77904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77908  7C 08 02 A6 */	mflr r0
/* 80C7790C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77914  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C77918  41 82 00 30 */	beq lbl_80C77948
/* 80C7791C  3C 60 80 C7 */	lis r3, __vt__14daTenbin_HIO_c@ha
/* 80C77920  38 03 7A B0 */	addi r0, r3, __vt__14daTenbin_HIO_c@l
/* 80C77924  90 1F 00 00 */	stw r0, 0(r31)
/* 80C77928  41 82 00 10 */	beq lbl_80C77938
/* 80C7792C  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C77930  38 03 7A BC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C77934  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C77938:
/* 80C77938  7C 80 07 35 */	extsh. r0, r4
/* 80C7793C  40 81 00 0C */	ble lbl_80C77948
/* 80C77940  7F E3 FB 78 */	mr r3, r31
/* 80C77944  4B 65 73 F8 */	b __dl__FPv
lbl_80C77948:
/* 80C77948  7F E3 FB 78 */	mr r3, r31
/* 80C7794C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C77950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77954  7C 08 03 A6 */	mtlr r0
/* 80C77958  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7795C  4E 80 00 20 */	blr 
