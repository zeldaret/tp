lbl_80CC4478:
/* 80CC4478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC447C  7C 08 02 A6 */	mflr r0
/* 80CC4480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4488  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC448C  41 82 00 30 */	beq lbl_80CC44BC
/* 80CC4490  3C 60 80 CC */	lis r3, __vt__14daSaidan_HIO_c@ha
/* 80CC4494  38 03 46 2C */	addi r0, r3, __vt__14daSaidan_HIO_c@l
/* 80CC4498  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC449C  41 82 00 10 */	beq lbl_80CC44AC
/* 80CC44A0  3C 60 80 CC */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80CC44A4  38 03 46 38 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80CC44A8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CC44AC:
/* 80CC44AC  7C 80 07 35 */	extsh. r0, r4
/* 80CC44B0  40 81 00 0C */	ble lbl_80CC44BC
/* 80CC44B4  7F E3 FB 78 */	mr r3, r31
/* 80CC44B8  4B 60 A8 84 */	b __dl__FPv
lbl_80CC44BC:
/* 80CC44BC  7F E3 FB 78 */	mr r3, r31
/* 80CC44C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC44C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC44C8  7C 08 03 A6 */	mtlr r0
/* 80CC44CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC44D0  4E 80 00 20 */	blr 
