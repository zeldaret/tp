lbl_809C9210:
/* 809C9210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9214  7C 08 02 A6 */	mflr r0
/* 809C9218  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C921C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9220  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C9224  41 82 00 1C */	beq lbl_809C9240
/* 809C9228  3C A0 80 9D */	lis r5, __vt__16daNpcF_SPCurve_c@ha /* 0x809CB2A8@ha */
/* 809C922C  38 05 B2 A8 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l /* 0x809CB2A8@l */
/* 809C9230  90 1F 06 08 */	stw r0, 0x608(r31)
/* 809C9234  7C 80 07 35 */	extsh. r0, r4
/* 809C9238  40 81 00 08 */	ble lbl_809C9240
/* 809C923C  4B 90 5B 01 */	bl __dl__FPv
lbl_809C9240:
/* 809C9240  7F E3 FB 78 */	mr r3, r31
/* 809C9244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C924C  7C 08 03 A6 */	mtlr r0
/* 809C9250  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9254  4E 80 00 20 */	blr 
