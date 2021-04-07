lbl_8023C234:
/* 8023C234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C238  7C 08 02 A6 */	mflr r0
/* 8023C23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C240  80 C3 00 48 */	lwz r6, 0x48(r3)
/* 8023C244  28 06 00 00 */	cmplwi r6, 0
/* 8023C248  41 82 00 1C */	beq lbl_8023C264
/* 8023C24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023C250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023C254  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8023C258  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8023C25C  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 8023C260  4B E1 A5 35 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8023C264:
/* 8023C264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C268  7C 08 03 A6 */	mtlr r0
/* 8023C26C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C270  4E 80 00 20 */	blr 
