lbl_80C23B70:
/* 80C23B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23B74  7C 08 02 A6 */	mflr r0
/* 80C23B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80C23B84  7C 7E 1B 78 */	mr r30, r3
/* 80C23B88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C23B8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C23B90  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80C23B94  7C 00 07 74 */	extsb r0, r0
/* 80C23B98  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C23B9C  7C 84 02 14 */	add r4, r4, r0
/* 80C23BA0  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 80C23BA4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C23BA8  28 00 00 02 */	cmplwi r0, 2
/* 80C23BAC  40 82 00 24 */	bne lbl_80C23BD0
/* 80C23BB0  38 00 00 02 */	li r0, 2
/* 80C23BB4  98 1E 09 4C */	stb r0, 0x94c(r30)
/* 80C23BB8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C23BBC  4B 53 D9 14 */	b Stop__9dCamera_cFv
/* 80C23BC0  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C23BC4  38 80 00 01 */	li r4, 1
/* 80C23BC8  4B 53 F4 44 */	b SetTrimSize__9dCamera_cFl
/* 80C23BCC  48 00 00 38 */	b lbl_80C23C04
lbl_80C23BD0:
/* 80C23BD0  88 1E 09 4D */	lbz r0, 0x94d(r30)
/* 80C23BD4  28 00 00 01 */	cmplwi r0, 1
/* 80C23BD8  40 82 00 24 */	bne lbl_80C23BFC
/* 80C23BDC  38 80 00 02 */	li r4, 2
/* 80C23BE0  38 A0 00 00 */	li r5, 0
/* 80C23BE4  38 C0 00 00 */	li r6, 0
/* 80C23BE8  4B 3F 7D 20 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80C23BEC  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80C23BF0  60 00 00 02 */	ori r0, r0, 2
/* 80C23BF4  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80C23BF8  48 00 00 0C */	b lbl_80C23C04
lbl_80C23BFC:
/* 80C23BFC  38 00 00 00 */	li r0, 0
/* 80C23C00  98 1E 09 4C */	stb r0, 0x94c(r30)
lbl_80C23C04:
/* 80C23C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C23C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C23C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23C10  7C 08 03 A6 */	mtlr r0
/* 80C23C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C23C18  4E 80 00 20 */	blr 
