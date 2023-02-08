lbl_80AF4CFC:
/* 80AF4CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF4D00  7C 08 02 A6 */	mflr r0
/* 80AF4D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF4D0C  7C 7F 1B 78 */	mr r31, r3
/* 80AF4D10  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF4D14  2C 00 00 02 */	cmpwi r0, 2
/* 80AF4D18  41 82 00 50 */	beq lbl_80AF4D68
/* 80AF4D1C  40 80 00 88 */	bge lbl_80AF4DA4
/* 80AF4D20  2C 00 00 00 */	cmpwi r0, 0
/* 80AF4D24  41 82 00 0C */	beq lbl_80AF4D30
/* 80AF4D28  48 00 00 7C */	b lbl_80AF4DA4
/* 80AF4D2C  48 00 00 78 */	b lbl_80AF4DA4
lbl_80AF4D30:
/* 80AF4D30  38 80 00 00 */	li r4, 0
/* 80AF4D34  3C A0 80 AF */	lis r5, lit_5036@ha /* 0x80AF5BD8@ha */
/* 80AF4D38  C0 25 5B D8 */	lfs f1, lit_5036@l(r5)  /* 0x80AF5BD8@l */
/* 80AF4D3C  38 A0 00 00 */	li r5, 0
/* 80AF4D40  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AF4D44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF4D48  7D 89 03 A6 */	mtctr r12
/* 80AF4D4C  4E 80 04 21 */	bctrl 
/* 80AF4D50  38 00 00 00 */	li r0, 0
/* 80AF4D54  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF4D58  38 00 00 01 */	li r0, 1
/* 80AF4D5C  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 80AF4D60  38 00 00 02 */	li r0, 2
/* 80AF4D64  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_80AF4D68:
/* 80AF4D68  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 80AF4D6C  4B 65 B9 81 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF4D70  28 03 00 00 */	cmplwi r3, 0
/* 80AF4D74  40 82 00 30 */	bne lbl_80AF4DA4
/* 80AF4D78  3C 60 80 AF */	lis r3, s_sub__FPvPv@ha /* 0x80AF4CA4@ha */
/* 80AF4D7C  38 63 4C A4 */	addi r3, r3, s_sub__FPvPv@l /* 0x80AF4CA4@l */
/* 80AF4D80  7F E4 FB 78 */	mr r4, r31
/* 80AF4D84  4B 52 C5 B5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80AF4D88  7C 64 1B 79 */	or. r4, r3, r3
/* 80AF4D8C  41 82 00 18 */	beq lbl_80AF4DA4
/* 80AF4D90  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 80AF4D94  4B 65 B9 29 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF4D98  7F E3 FB 78 */	mr r3, r31
/* 80AF4D9C  38 80 00 05 */	li r4, 5
/* 80AF4DA0  4B FF FC 45 */	bl setLookMode__16daNpc_SoldierB_cFi
lbl_80AF4DA4:
/* 80AF4DA4  38 60 00 01 */	li r3, 1
/* 80AF4DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF4DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF4DB0  7C 08 03 A6 */	mtlr r0
/* 80AF4DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF4DB8  4E 80 00 20 */	blr 
