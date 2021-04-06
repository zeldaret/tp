lbl_80A6A8E4:
/* 80A6A8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6A8E8  7C 08 02 A6 */	mflr r0
/* 80A6A8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6A8F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6A8F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6A8F8  41 82 00 1C */	beq lbl_80A6A914
/* 80A6A8FC  3C A0 80 A7 */	lis r5, __vt__14daNPC_LF_HIO_c@ha /* 0x80A6AA78@ha */
/* 80A6A900  38 05 AA 78 */	addi r0, r5, __vt__14daNPC_LF_HIO_c@l /* 0x80A6AA78@l */
/* 80A6A904  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6A908  7C 80 07 35 */	extsh. r0, r4
/* 80A6A90C  40 81 00 08 */	ble lbl_80A6A914
/* 80A6A910  4B 86 44 2D */	bl __dl__FPv
lbl_80A6A914:
/* 80A6A914  7F E3 FB 78 */	mr r3, r31
/* 80A6A918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6A91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6A920  7C 08 03 A6 */	mtlr r0
/* 80A6A924  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6A928  4E 80 00 20 */	blr 
