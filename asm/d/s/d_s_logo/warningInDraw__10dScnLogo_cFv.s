lbl_80256BF4:
/* 80256BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80256BF8  7C 08 02 A6 */	mflr r0
/* 80256BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80256C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80256C04  7C 7F 1B 78 */	mr r31, r3
/* 80256C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80256C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80256C10  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80256C14  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 80256C18  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 80256C1C  80 DF 01 DC */	lwz r6, 0x1dc(r31)
/* 80256C20  4B DF FB 75 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80256C24  A0 1F 02 0C */	lhz r0, 0x20c(r31)
/* 80256C28  28 00 00 00 */	cmplwi r0, 0
/* 80256C2C  40 82 00 28 */	bne lbl_80256C54
/* 80256C30  38 60 00 01 */	li r3, 1
/* 80256C34  98 7F 02 08 */	stb r3, 0x208(r31)
/* 80256C38  38 00 0D B6 */	li r0, 0xdb6
/* 80256C3C  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 80256C40  38 00 00 1E */	li r0, 0x1e
/* 80256C44  B0 1F 02 0E */	sth r0, 0x20e(r31)
/* 80256C48  A0 1F 02 0E */	lhz r0, 0x20e(r31)
/* 80256C4C  B0 1F 02 10 */	sth r0, 0x210(r31)
/* 80256C50  B0 7F 02 12 */	sth r3, 0x212(r31)
lbl_80256C54:
/* 80256C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80256C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80256C5C  7C 08 03 A6 */	mtlr r0
/* 80256C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80256C64  4E 80 00 20 */	blr 
