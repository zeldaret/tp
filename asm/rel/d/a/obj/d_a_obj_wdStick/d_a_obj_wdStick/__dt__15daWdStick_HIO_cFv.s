lbl_80D34030:
/* 80D34030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34034  7C 08 02 A6 */	mflr r0
/* 80D34038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3403C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D34040  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D34044  41 82 00 30 */	beq lbl_80D34074
/* 80D34048  3C 60 80 D3 */	lis r3, __vt__15daWdStick_HIO_c@ha
/* 80D3404C  38 03 43 F8 */	addi r0, r3, __vt__15daWdStick_HIO_c@l
/* 80D34050  90 1F 00 00 */	stw r0, 0(r31)
/* 80D34054  41 82 00 10 */	beq lbl_80D34064
/* 80D34058  3C 60 80 D3 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D3405C  38 03 44 04 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D34060  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D34064:
/* 80D34064  7C 80 07 35 */	extsh. r0, r4
/* 80D34068  40 81 00 0C */	ble lbl_80D34074
/* 80D3406C  7F E3 FB 78 */	mr r3, r31
/* 80D34070  4B 59 AC CC */	b __dl__FPv
lbl_80D34074:
/* 80D34074  7F E3 FB 78 */	mr r3, r31
/* 80D34078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3407C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34080  7C 08 03 A6 */	mtlr r0
/* 80D34084  38 21 00 10 */	addi r1, r1, 0x10
/* 80D34088  4E 80 00 20 */	blr 
