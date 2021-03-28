lbl_80A84EAC:
/* 80A84EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A84EB0  7C 08 02 A6 */	mflr r0
/* 80A84EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A84EB8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A84EBC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A84EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A84EC4  4B 8D D3 14 */	b _savegpr_28
/* 80A84EC8  7C 7F 1B 78 */	mr r31, r3
/* 80A84ECC  7C 9C 23 78 */	mr r28, r4
/* 80A84ED0  FF E0 08 90 */	fmr f31, f1
/* 80A84ED4  3B C0 00 00 */	li r30, 0
/* 80A84ED8  3B A0 00 02 */	li r29, 2
/* 80A84EDC  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80A84EE0  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80A84EE4  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80A84EE8  54 80 18 38 */	slwi r0, r4, 3
/* 80A84EEC  3C 80 80 A9 */	lis r4, l_bckGetParamList@ha
/* 80A84EF0  38 84 86 DC */	addi r4, r4, l_bckGetParamList@l
/* 80A84EF4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80A84EF8  2C 05 00 00 */	cmpwi r5, 0
/* 80A84EFC  41 80 00 24 */	blt lbl_80A84F20
/* 80A84F00  7C 84 02 14 */	add r4, r4, r0
/* 80A84F04  80 04 00 04 */	lwz r0, 4(r4)
/* 80A84F08  54 00 10 3A */	slwi r0, r0, 2
/* 80A84F0C  3C 80 80 A9 */	lis r4, l_resNames@ha
/* 80A84F10  38 84 87 DC */	addi r4, r4, l_resNames@l
/* 80A84F14  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A84F18  4B 6C DC 14 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A84F1C  7C 7E 1B 78 */	mr r30, r3
lbl_80A84F20:
/* 80A84F20  7F E3 FB 78 */	mr r3, r31
/* 80A84F24  38 80 00 00 */	li r4, 0
/* 80A84F28  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A84F2C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80A84F30  7D 89 03 A6 */	mtctr r12
/* 80A84F34  4E 80 04 21 */	bctrl 
/* 80A84F38  2C 1C 00 06 */	cmpwi r28, 6
/* 80A84F3C  40 80 00 1C */	bge lbl_80A84F58
/* 80A84F40  2C 1C 00 00 */	cmpwi r28, 0
/* 80A84F44  41 82 00 40 */	beq lbl_80A84F84
/* 80A84F48  41 80 00 38 */	blt lbl_80A84F80
/* 80A84F4C  2C 1C 00 03 */	cmpwi r28, 3
/* 80A84F50  40 80 00 30 */	bge lbl_80A84F80
/* 80A84F54  48 00 00 24 */	b lbl_80A84F78
lbl_80A84F58:
/* 80A84F58  2C 1C 00 0C */	cmpwi r28, 0xc
/* 80A84F5C  40 80 00 10 */	bge lbl_80A84F6C
/* 80A84F60  2C 1C 00 08 */	cmpwi r28, 8
/* 80A84F64  40 80 00 14 */	bge lbl_80A84F78
/* 80A84F68  48 00 00 1C */	b lbl_80A84F84
lbl_80A84F6C:
/* 80A84F6C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80A84F70  40 80 00 10 */	bge lbl_80A84F80
/* 80A84F74  48 00 00 10 */	b lbl_80A84F84
lbl_80A84F78:
/* 80A84F78  3B A0 00 00 */	li r29, 0
/* 80A84F7C  48 00 00 08 */	b lbl_80A84F84
lbl_80A84F80:
/* 80A84F80  3B C0 00 00 */	li r30, 0
lbl_80A84F84:
/* 80A84F84  28 1E 00 00 */	cmplwi r30, 0
/* 80A84F88  41 82 00 44 */	beq lbl_80A84FCC
/* 80A84F8C  7F E3 FB 78 */	mr r3, r31
/* 80A84F90  7F C4 F3 78 */	mr r4, r30
/* 80A84F94  3C A0 80 A9 */	lis r5, lit_4462@ha
/* 80A84F98  C0 25 84 CC */	lfs f1, lit_4462@l(r5)
/* 80A84F9C  FC 40 F8 90 */	fmr f2, f31
/* 80A84FA0  7F A5 EB 78 */	mr r5, r29
/* 80A84FA4  38 C0 00 00 */	li r6, 0
/* 80A84FA8  38 E0 FF FF */	li r7, -1
/* 80A84FAC  4B 6C DC 70 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A84FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A84FB4  41 82 00 18 */	beq lbl_80A84FCC
/* 80A84FB8  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A84FBC  60 00 00 09 */	ori r0, r0, 9
/* 80A84FC0  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A84FC4  38 00 00 00 */	li r0, 0
/* 80A84FC8  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80A84FCC:
/* 80A84FCC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A84FD0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A84FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A84FD8  4B 8D D2 4C */	b _restgpr_28
/* 80A84FDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A84FE0  7C 08 03 A6 */	mtlr r0
/* 80A84FE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A84FE8  4E 80 00 20 */	blr 
