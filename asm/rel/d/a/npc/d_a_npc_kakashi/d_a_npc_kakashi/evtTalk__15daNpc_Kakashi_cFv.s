lbl_8054C034:
/* 8054C034  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054C038  7C 08 02 A6 */	mflr r0
/* 8054C03C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054C040  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8054C044  7C 7F 1B 78 */	mr r31, r3
/* 8054C048  3C 80 80 55 */	lis r4, lit_4607@ha
/* 8054C04C  38 A4 EF 88 */	addi r5, r4, lit_4607@l
/* 8054C050  80 85 00 00 */	lwz r4, 0(r5)
/* 8054C054  80 05 00 04 */	lwz r0, 4(r5)
/* 8054C058  90 81 00 14 */	stw r4, 0x14(r1)
/* 8054C05C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8054C060  80 05 00 08 */	lwz r0, 8(r5)
/* 8054C064  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8054C068  38 81 00 14 */	addi r4, r1, 0x14
/* 8054C06C  48 00 09 B1 */	bl chkAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i
/* 8054C070  2C 03 00 00 */	cmpwi r3, 0
/* 8054C074  41 82 00 1C */	beq lbl_8054C090
/* 8054C078  7F E3 FB 78 */	mr r3, r31
/* 8054C07C  38 80 00 00 */	li r4, 0
/* 8054C080  39 9F 13 58 */	addi r12, r31, 0x1358
/* 8054C084  4B E1 60 00 */	b __ptmf_scall
/* 8054C088  60 00 00 00 */	nop 
/* 8054C08C  48 00 00 30 */	b lbl_8054C0BC
lbl_8054C090:
/* 8054C090  3C 60 80 55 */	lis r3, lit_4612@ha
/* 8054C094  38 83 EF 94 */	addi r4, r3, lit_4612@l
/* 8054C098  80 64 00 00 */	lwz r3, 0(r4)
/* 8054C09C  80 04 00 04 */	lwz r0, 4(r4)
/* 8054C0A0  90 61 00 08 */	stw r3, 8(r1)
/* 8054C0A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8054C0A8  80 04 00 08 */	lwz r0, 8(r4)
/* 8054C0AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054C0B0  7F E3 FB 78 */	mr r3, r31
/* 8054C0B4  38 81 00 08 */	addi r4, r1, 8
/* 8054C0B8  48 00 09 91 */	bl setAction__15daNpc_Kakashi_cFM15daNpc_Kakashi_cFPCvPvPv_i
lbl_8054C0BC:
/* 8054C0BC  38 60 00 01 */	li r3, 1
/* 8054C0C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8054C0C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054C0C8  7C 08 03 A6 */	mtlr r0
/* 8054C0CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8054C0D0  4E 80 00 20 */	blr 
