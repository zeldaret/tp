lbl_804EF678:
/* 804EF678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF67C  7C 08 02 A6 */	mflr r0
/* 804EF680  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF688  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EF68C  41 82 00 10 */	beq lbl_804EF69C
/* 804EF690  7C 80 07 35 */	extsh. r0, r4
/* 804EF694  40 81 00 08 */	ble lbl_804EF69C
/* 804EF698  4B DD F6 A5 */	bl __dl__FPv
lbl_804EF69C:
/* 804EF69C  7F E3 FB 78 */	mr r3, r31
/* 804EF6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF6A8  7C 08 03 A6 */	mtlr r0
/* 804EF6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF6B0  4E 80 00 20 */	blr 
