lbl_80CDF674:
/* 80CDF674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF678  7C 08 02 A6 */	mflr r0
/* 80CDF67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDF688  41 82 00 30 */	beq lbl_80CDF6B8
/* 80CDF68C  3C 60 80 CE */	lis r3, __vt__18daSnowEffTag_HIO_c@ha /* 0x80CDF7A8@ha */
/* 80CDF690  38 03 F7 A8 */	addi r0, r3, __vt__18daSnowEffTag_HIO_c@l /* 0x80CDF7A8@l */
/* 80CDF694  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDF698  41 82 00 10 */	beq lbl_80CDF6A8
/* 80CDF69C  3C 60 80 CE */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CDF7B4@ha */
/* 80CDF6A0  38 03 F7 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CDF7B4@l */
/* 80CDF6A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CDF6A8:
/* 80CDF6A8  7C 80 07 35 */	extsh. r0, r4
/* 80CDF6AC  40 81 00 0C */	ble lbl_80CDF6B8
/* 80CDF6B0  7F E3 FB 78 */	mr r3, r31
/* 80CDF6B4  4B 5E F6 89 */	bl __dl__FPv
lbl_80CDF6B8:
/* 80CDF6B8  7F E3 FB 78 */	mr r3, r31
/* 80CDF6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF6C4  7C 08 03 A6 */	mtlr r0
/* 80CDF6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF6CC  4E 80 00 20 */	blr 
