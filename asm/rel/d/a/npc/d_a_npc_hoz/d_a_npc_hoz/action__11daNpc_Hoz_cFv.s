lbl_80A02918:
/* 80A02918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0291C  7C 08 02 A6 */	mflr r0
/* 80A02920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A02924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A02928  7C 7F 1B 78 */	mr r31, r3
/* 80A0292C  38 7F 0F AC */	addi r3, r31, 0xfac
/* 80A02930  4B 95 F6 E9 */	bl __ptmf_test
/* 80A02934  2C 03 00 00 */	cmpwi r3, 0
/* 80A02938  41 82 00 54 */	beq lbl_80A0298C
/* 80A0293C  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80A02940  38 9F 0F AC */	addi r4, r31, 0xfac
/* 80A02944  4B 95 F7 05 */	bl __ptmf_cmpr
/* 80A02948  2C 03 00 00 */	cmpwi r3, 0
/* 80A0294C  40 82 00 1C */	bne lbl_80A02968
/* 80A02950  7F E3 FB 78 */	mr r3, r31
/* 80A02954  38 80 00 00 */	li r4, 0
/* 80A02958  39 9F 0F B8 */	addi r12, r31, 0xfb8
/* 80A0295C  4B 95 F7 29 */	bl __ptmf_scall
/* 80A02960  60 00 00 00 */	nop 
/* 80A02964  48 00 00 28 */	b lbl_80A0298C
lbl_80A02968:
/* 80A02968  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80A0296C  80 1F 0F B0 */	lwz r0, 0xfb0(r31)
/* 80A02970  90 61 00 08 */	stw r3, 8(r1)
/* 80A02974  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A02978  80 1F 0F B4 */	lwz r0, 0xfb4(r31)
/* 80A0297C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A02980  7F E3 FB 78 */	mr r3, r31
/* 80A02984  38 81 00 08 */	addi r4, r1, 8
/* 80A02988  48 00 07 4D */	bl setAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i
lbl_80A0298C:
/* 80A0298C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A02990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A02994  7C 08 03 A6 */	mtlr r0
/* 80A02998  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0299C  4E 80 00 20 */	blr 
