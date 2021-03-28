lbl_80B4AB30:
/* 80B4AB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4AB34  7C 08 02 A6 */	mflr r0
/* 80B4AB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4AB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4AB40  7C 7F 1B 78 */	mr r31, r3
/* 80B4AB44  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B4AB48  2C 00 00 01 */	cmpwi r0, 1
/* 80B4AB4C  41 82 00 08 */	beq lbl_80B4AB54
/* 80B4AB50  48 00 00 3C */	b lbl_80B4AB8C
lbl_80B4AB54:
/* 80B4AB54  88 1F 0F 81 */	lbz r0, 0xf81(r31)
/* 80B4AB58  7C 00 07 75 */	extsb. r0, r0
/* 80B4AB5C  40 82 00 28 */	bne lbl_80B4AB84
/* 80B4AB60  80 1F 0F 84 */	lwz r0, 0xf84(r31)
/* 80B4AB64  28 00 00 00 */	cmplwi r0, 0
/* 80B4AB68  40 82 00 24 */	bne lbl_80B4AB8C
/* 80B4AB6C  3C 60 80 B5 */	lis r3, _search_Tag__13daNpc_yamiT_cFPvPv@ha
/* 80B4AB70  38 63 A4 7C */	addi r3, r3, _search_Tag__13daNpc_yamiT_cFPvPv@l
/* 80B4AB74  7F E4 FB 78 */	mr r4, r31
/* 80B4AB78  4B 4D 67 C0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B4AB7C  90 7F 0F 84 */	stw r3, 0xf84(r31)
/* 80B4AB80  48 00 00 0C */	b lbl_80B4AB8C
lbl_80B4AB84:
/* 80B4AB84  38 00 00 00 */	li r0, 0
/* 80B4AB88  90 1F 0F 84 */	stw r0, 0xf84(r31)
lbl_80B4AB8C:
/* 80B4AB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4AB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4AB94  7C 08 03 A6 */	mtlr r0
/* 80B4AB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4AB9C  4E 80 00 20 */	blr 
