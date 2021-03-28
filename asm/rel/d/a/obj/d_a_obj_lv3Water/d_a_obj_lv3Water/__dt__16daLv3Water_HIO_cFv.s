lbl_80C59C34:
/* 80C59C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59C38  7C 08 02 A6 */	mflr r0
/* 80C59C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C59C44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C59C48  41 82 00 30 */	beq lbl_80C59C78
/* 80C59C4C  3C 60 80 C6 */	lis r3, __vt__16daLv3Water_HIO_c@ha
/* 80C59C50  38 03 A2 E4 */	addi r0, r3, __vt__16daLv3Water_HIO_c@l
/* 80C59C54  90 1F 00 00 */	stw r0, 0(r31)
/* 80C59C58  41 82 00 10 */	beq lbl_80C59C68
/* 80C59C5C  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C59C60  38 03 A2 F0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C59C64  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C59C68:
/* 80C59C68  7C 80 07 35 */	extsh. r0, r4
/* 80C59C6C  40 81 00 0C */	ble lbl_80C59C78
/* 80C59C70  7F E3 FB 78 */	mr r3, r31
/* 80C59C74  4B 67 50 C8 */	b __dl__FPv
lbl_80C59C78:
/* 80C59C78  7F E3 FB 78 */	mr r3, r31
/* 80C59C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C59C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59C84  7C 08 03 A6 */	mtlr r0
/* 80C59C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59C8C  4E 80 00 20 */	blr 
