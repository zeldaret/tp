lbl_80AD621C:
/* 80AD621C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD6220  7C 08 02 A6 */	mflr r0
/* 80AD6224  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD6228  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD622C  7C 7F 1B 78 */	mr r31, r3
/* 80AD6230  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AD6234  4B 88 BD E5 */	bl __ptmf_test
/* 80AD6238  2C 03 00 00 */	cmpwi r3, 0
/* 80AD623C  41 82 00 54 */	beq lbl_80AD6290
/* 80AD6240  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 80AD6244  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80AD6248  4B 88 BE 01 */	bl __ptmf_cmpr
/* 80AD624C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6250  40 82 00 1C */	bne lbl_80AD626C
/* 80AD6254  7F E3 FB 78 */	mr r3, r31
/* 80AD6258  38 80 00 00 */	li r4, 0
/* 80AD625C  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AD6260  4B 88 BE 25 */	bl __ptmf_scall
/* 80AD6264  60 00 00 00 */	nop 
/* 80AD6268  48 00 00 28 */	b lbl_80AD6290
lbl_80AD626C:
/* 80AD626C  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 80AD6270  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80AD6274  90 61 00 08 */	stw r3, 8(r1)
/* 80AD6278  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD627C  80 1F 0E 50 */	lwz r0, 0xe50(r31)
/* 80AD6280  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD6284  7F E3 FB 78 */	mr r3, r31
/* 80AD6288  38 81 00 08 */	addi r4, r1, 8
/* 80AD628C  48 00 03 ED */	bl setAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i
lbl_80AD6290:
/* 80AD6290  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD6294  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD6298  7C 08 03 A6 */	mtlr r0
/* 80AD629C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD62A0  4E 80 00 20 */	blr 
