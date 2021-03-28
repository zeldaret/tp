lbl_8023C0DC:
/* 8023C0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C0E0  7C 08 02 A6 */	mflr r0
/* 8023C0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C0EC  7C 7F 1B 78 */	mr r31, r3
/* 8023C0F0  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 8023C0F4  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l
/* 8023C0F8  90 03 00 00 */	stw r0, 0(r3)
/* 8023C0FC  3C 80 80 3C */	lis r4, __vt__14dMsgScrnBase_c@ha
/* 8023C100  38 04 0D 58 */	addi r0, r4, __vt__14dMsgScrnBase_c@l
/* 8023C104  90 03 00 00 */	stw r0, 0(r3)
/* 8023C108  48 00 00 65 */	bl init__14dMsgScrnBase_cFv
/* 8023C10C  7F E3 FB 78 */	mr r3, r31
/* 8023C110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C118  7C 08 03 A6 */	mtlr r0
/* 8023C11C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C120  4E 80 00 20 */	blr 
