lbl_802A2F88:
/* 802A2F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2F8C  7C 08 02 A6 */	mflr r0
/* 802A2F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2F98  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A2F9C  41 82 00 38 */	beq lbl_802A2FD4
/* 802A2FA0  3C 60 80 3D */	lis r3, __vt__15JAISoundStarter@ha /* 0x803C99C8@ha */
/* 802A2FA4  38 03 99 C8 */	addi r0, r3, __vt__15JAISoundStarter@l /* 0x803C99C8@l */
/* 802A2FA8  90 1F 00 00 */	stw r0, 0(r31)
/* 802A2FAC  41 82 00 18 */	beq lbl_802A2FC4
/* 802A2FB0  80 0D 85 F8 */	lwz r0, data_80450B78(r13)
/* 802A2FB4  7C 00 F8 40 */	cmplw r0, r31
/* 802A2FB8  40 82 00 0C */	bne lbl_802A2FC4
/* 802A2FBC  38 00 00 00 */	li r0, 0
/* 802A2FC0  90 0D 85 F8 */	stw r0, data_80450B78(r13)
lbl_802A2FC4:
/* 802A2FC4  7C 80 07 35 */	extsh. r0, r4
/* 802A2FC8  40 81 00 0C */	ble lbl_802A2FD4
/* 802A2FCC  7F E3 FB 78 */	mr r3, r31
/* 802A2FD0  48 02 BD 6D */	bl __dl__FPv
lbl_802A2FD4:
/* 802A2FD4  7F E3 FB 78 */	mr r3, r31
/* 802A2FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2FE0  7C 08 03 A6 */	mtlr r0
/* 802A2FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2FE8  4E 80 00 20 */	blr 
