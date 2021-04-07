lbl_80A4679C:
/* 80A4679C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A467A0  7C 08 02 A6 */	mflr r0
/* 80A467A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A467A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A467AC  7C 7F 1B 78 */	mr r31, r3
/* 80A467B0  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80A467B4  4B 91 B8 65 */	bl __ptmf_test
/* 80A467B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A467BC  41 82 00 54 */	beq lbl_80A46810
/* 80A467C0  38 7F 0F C4 */	addi r3, r31, 0xfc4
/* 80A467C4  38 9F 0F B8 */	addi r4, r31, 0xfb8
/* 80A467C8  4B 91 B8 81 */	bl __ptmf_cmpr
/* 80A467CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A467D0  40 82 00 1C */	bne lbl_80A467EC
/* 80A467D4  7F E3 FB 78 */	mr r3, r31
/* 80A467D8  38 80 00 00 */	li r4, 0
/* 80A467DC  39 9F 0F C4 */	addi r12, r31, 0xfc4
/* 80A467E0  4B 91 B8 A5 */	bl __ptmf_scall
/* 80A467E4  60 00 00 00 */	nop 
/* 80A467E8  48 00 00 28 */	b lbl_80A46810
lbl_80A467EC:
/* 80A467EC  80 7F 0F B8 */	lwz r3, 0xfb8(r31)
/* 80A467F0  80 1F 0F BC */	lwz r0, 0xfbc(r31)
/* 80A467F4  90 61 00 08 */	stw r3, 8(r1)
/* 80A467F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A467FC  80 1F 0F C0 */	lwz r0, 0xfc0(r31)
/* 80A46800  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A46804  7F E3 FB 78 */	mr r3, r31
/* 80A46808  38 81 00 08 */	addi r4, r1, 8
/* 80A4680C  48 00 03 0D */	bl setAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i
lbl_80A46810:
/* 80A46810  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A46814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A46818  7C 08 03 A6 */	mtlr r0
/* 80A4681C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A46820  4E 80 00 20 */	blr 
