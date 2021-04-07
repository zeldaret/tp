lbl_80018C8C:
/* 80018C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018C90  7C 08 02 A6 */	mflr r0
/* 80018C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018C9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80018CA0  41 82 00 28 */	beq lbl_80018CC8
/* 80018CA4  34 1F 00 F4 */	addic. r0, r31, 0xf4
/* 80018CA8  41 82 00 10 */	beq lbl_80018CB8
/* 80018CAC  3C 60 80 3A */	lis r3, __vt__11dEvt_info_c@ha /* 0x803A35D0@ha */
/* 80018CB0  38 03 35 D0 */	addi r0, r3, __vt__11dEvt_info_c@l /* 0x803A35D0@l */
/* 80018CB4  90 1F 00 F4 */	stw r0, 0xf4(r31)
lbl_80018CB8:
/* 80018CB8  7C 80 07 35 */	extsh. r0, r4
/* 80018CBC  40 81 00 0C */	ble lbl_80018CC8
/* 80018CC0  7F E3 FB 78 */	mr r3, r31
/* 80018CC4  48 2B 60 79 */	bl __dl__FPv
lbl_80018CC8:
/* 80018CC8  7F E3 FB 78 */	mr r3, r31
/* 80018CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018CD4  7C 08 03 A6 */	mtlr r0
/* 80018CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80018CDC  4E 80 00 20 */	blr 
