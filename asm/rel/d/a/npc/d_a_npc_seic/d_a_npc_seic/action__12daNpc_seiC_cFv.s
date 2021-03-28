lbl_80AC7F14:
/* 80AC7F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC7F18  7C 08 02 A6 */	mflr r0
/* 80AC7F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC7F20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC7F24  7C 7F 1B 78 */	mr r31, r3
/* 80AC7F28  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AC7F2C  4B 89 A0 EC */	b __ptmf_test
/* 80AC7F30  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7F34  41 82 00 54 */	beq lbl_80AC7F88
/* 80AC7F38  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 80AC7F3C  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80AC7F40  4B 89 A1 08 */	b __ptmf_cmpr
/* 80AC7F44  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7F48  40 82 00 1C */	bne lbl_80AC7F64
/* 80AC7F4C  7F E3 FB 78 */	mr r3, r31
/* 80AC7F50  38 80 00 00 */	li r4, 0
/* 80AC7F54  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AC7F58  4B 89 A1 2C */	b __ptmf_scall
/* 80AC7F5C  60 00 00 00 */	nop 
/* 80AC7F60  48 00 00 28 */	b lbl_80AC7F88
lbl_80AC7F64:
/* 80AC7F64  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 80AC7F68  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80AC7F6C  90 61 00 08 */	stw r3, 8(r1)
/* 80AC7F70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC7F74  80 1F 0E 50 */	lwz r0, 0xe50(r31)
/* 80AC7F78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC7F7C  7F E3 FB 78 */	mr r3, r31
/* 80AC7F80  38 81 00 08 */	addi r4, r1, 8
/* 80AC7F84  48 00 03 09 */	bl setAction__12daNpc_seiC_cFM12daNpc_seiC_cFPCvPvPv_i
lbl_80AC7F88:
/* 80AC7F88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC7F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC7F90  7C 08 03 A6 */	mtlr r0
/* 80AC7F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC7F98  4E 80 00 20 */	blr 
