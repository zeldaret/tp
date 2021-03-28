lbl_801578C0:
/* 801578C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801578C4  7C 08 02 A6 */	mflr r0
/* 801578C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801578CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801578D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801578D4  41 82 00 30 */	beq lbl_80157904
/* 801578D8  3C 60 80 3B */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 801578DC  38 03 61 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 801578E0  90 1F 00 00 */	stw r0, 0(r31)
/* 801578E4  41 82 00 10 */	beq lbl_801578F4
/* 801578E8  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 801578EC  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 801578F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_801578F4:
/* 801578F4  7C 80 07 35 */	extsh. r0, r4
/* 801578F8  40 81 00 0C */	ble lbl_80157904
/* 801578FC  7F E3 FB 78 */	mr r3, r31
/* 80157900  48 17 74 3D */	bl __dl__FPv
lbl_80157904:
/* 80157904  7F E3 FB 78 */	mr r3, r31
/* 80157908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015790C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80157910  7C 08 03 A6 */	mtlr r0
/* 80157914  38 21 00 10 */	addi r1, r1, 0x10
/* 80157918  4E 80 00 20 */	blr 
