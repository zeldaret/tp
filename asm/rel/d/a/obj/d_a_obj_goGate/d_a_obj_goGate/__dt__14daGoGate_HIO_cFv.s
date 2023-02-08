lbl_80BFDF3C:
/* 80BFDF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDF40  7C 08 02 A6 */	mflr r0
/* 80BFDF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFDF4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFDF50  41 82 00 30 */	beq lbl_80BFDF80
/* 80BFDF54  3C 60 80 C0 */	lis r3, __vt__14daGoGate_HIO_c@ha /* 0x80BFE0F0@ha */
/* 80BFDF58  38 03 E0 F0 */	addi r0, r3, __vt__14daGoGate_HIO_c@l /* 0x80BFE0F0@l */
/* 80BFDF5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFDF60  41 82 00 10 */	beq lbl_80BFDF70
/* 80BFDF64  3C 60 80 C0 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80BFE0FC@ha */
/* 80BFDF68  38 03 E0 FC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80BFE0FC@l */
/* 80BFDF6C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BFDF70:
/* 80BFDF70  7C 80 07 35 */	extsh. r0, r4
/* 80BFDF74  40 81 00 0C */	ble lbl_80BFDF80
/* 80BFDF78  7F E3 FB 78 */	mr r3, r31
/* 80BFDF7C  4B 6D 0D C1 */	bl __dl__FPv
lbl_80BFDF80:
/* 80BFDF80  7F E3 FB 78 */	mr r3, r31
/* 80BFDF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFDF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDF8C  7C 08 03 A6 */	mtlr r0
/* 80BFDF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDF94  4E 80 00 20 */	blr 
