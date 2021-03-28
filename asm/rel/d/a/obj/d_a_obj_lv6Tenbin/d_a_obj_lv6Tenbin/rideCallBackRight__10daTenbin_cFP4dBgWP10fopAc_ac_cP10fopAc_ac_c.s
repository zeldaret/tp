lbl_80C76EE0:
/* 80C76EE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C76EE4  7C 08 02 A6 */	mflr r0
/* 80C76EE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C76EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C76EF0  4B 6E B2 EC */	b _savegpr_29
/* 80C76EF4  7C 9E 23 78 */	mr r30, r4
/* 80C76EF8  7C BF 2B 78 */	mr r31, r5
/* 80C76EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C76F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C76F04  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 80C76F08  A8 05 00 08 */	lha r0, 8(r5)
/* 80C76F0C  2C 00 00 F2 */	cmpwi r0, 0xf2
/* 80C76F10  40 82 00 2C */	bne lbl_80C76F3C
/* 80C76F14  7F A3 EB 78 */	mr r3, r29
/* 80C76F18  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C76F1C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80C76F20  7D 89 03 A6 */	mtctr r12
/* 80C76F24  4E 80 04 21 */	bctrl 
/* 80C76F28  28 03 00 00 */	cmplwi r3, 0
/* 80C76F2C  41 82 00 10 */	beq lbl_80C76F3C
/* 80C76F30  A0 7E 05 B2 */	lhz r3, 0x5b2(r30)
/* 80C76F34  38 03 00 02 */	addi r0, r3, 2
/* 80C76F38  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
lbl_80C76F3C:
/* 80C76F3C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80C76F40  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C76F44  40 82 00 C8 */	bne lbl_80C7700C
/* 80C76F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C76F4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C76F50  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C76F54  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80C76F58  40 82 00 B4 */	bne lbl_80C7700C
/* 80C76F5C  A0 7E 05 B2 */	lhz r3, 0x5b2(r30)
/* 80C76F60  38 03 00 02 */	addi r0, r3, 2
/* 80C76F64  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
/* 80C76F68  7F A3 EB 78 */	mr r3, r29
/* 80C76F6C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C76F70  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80C76F74  7D 89 03 A6 */	mtctr r12
/* 80C76F78  4E 80 04 21 */	bctrl 
/* 80C76F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C76F80  41 82 00 14 */	beq lbl_80C76F94
/* 80C76F84  A0 7E 05 B2 */	lhz r3, 0x5b2(r30)
/* 80C76F88  3C 63 00 01 */	addis r3, r3, 1
/* 80C76F8C  38 03 EA 60 */	addi r0, r3, -5536
/* 80C76F90  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
lbl_80C76F94:
/* 80C76F94  7F A3 EB 78 */	mr r3, r29
/* 80C76F98  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C76F9C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C76FA0  7D 89 03 A6 */	mtctr r12
/* 80C76FA4  4E 80 04 21 */	bctrl 
/* 80C76FA8  3C 03 00 01 */	addis r0, r3, 1
/* 80C76FAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C76FB0  41 82 00 5C */	beq lbl_80C7700C
/* 80C76FB4  7F A3 EB 78 */	mr r3, r29
/* 80C76FB8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C76FBC  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C76FC0  7D 89 03 A6 */	mtctr r12
/* 80C76FC4  4E 80 04 21 */	bctrl 
/* 80C76FC8  90 61 00 08 */	stw r3, 8(r1)
/* 80C76FCC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C76FD0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C76FD4  38 81 00 08 */	addi r4, r1, 8
/* 80C76FD8  4B 3A 28 20 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C76FDC  A8 03 00 08 */	lha r0, 8(r3)
/* 80C76FE0  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C76FE4  40 82 00 28 */	bne lbl_80C7700C
/* 80C76FE8  A0 9E 05 B2 */	lhz r4, 0x5b2(r30)
/* 80C76FEC  38 04 00 01 */	addi r0, r4, 1
/* 80C76FF0  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
/* 80C76FF4  28 03 00 00 */	cmplwi r3, 0
/* 80C76FF8  41 82 00 0C */	beq lbl_80C77004
/* 80C76FFC  80 03 00 04 */	lwz r0, 4(r3)
/* 80C77000  48 00 00 08 */	b lbl_80C77008
lbl_80C77004:
/* 80C77004  38 00 FF FF */	li r0, -1
lbl_80C77008:
/* 80C77008  90 1E 06 50 */	stw r0, 0x650(r30)
lbl_80C7700C:
/* 80C7700C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80C77010  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C77014  40 82 00 4C */	bne lbl_80C77060
/* 80C77018  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80C7701C  28 00 00 00 */	cmplwi r0, 0
/* 80C77020  40 82 00 14 */	bne lbl_80C77034
/* 80C77024  A0 7E 05 B2 */	lhz r3, 0x5b2(r30)
/* 80C77028  38 03 00 04 */	addi r0, r3, 4
/* 80C7702C  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
/* 80C77030  48 00 00 30 */	b lbl_80C77060
lbl_80C77034:
/* 80C77034  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 80C77038  28 1F 00 00 */	cmplwi r31, 0
/* 80C7703C  41 82 00 0C */	beq lbl_80C77048
/* 80C77040  80 1F 00 04 */	lwz r0, 4(r31)
/* 80C77044  48 00 00 08 */	b lbl_80C7704C
lbl_80C77048:
/* 80C77048  38 00 FF FF */	li r0, -1
lbl_80C7704C:
/* 80C7704C  7C 03 00 40 */	cmplw r3, r0
/* 80C77050  41 82 00 10 */	beq lbl_80C77060
/* 80C77054  A0 7E 05 B2 */	lhz r3, 0x5b2(r30)
/* 80C77058  38 03 00 01 */	addi r0, r3, 1
/* 80C7705C  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
lbl_80C77060:
/* 80C77060  39 61 00 20 */	addi r11, r1, 0x20
/* 80C77064  4B 6E B1 C4 */	b _restgpr_29
/* 80C77068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7706C  7C 08 03 A6 */	mtlr r0
/* 80C77070  38 21 00 20 */	addi r1, r1, 0x20
/* 80C77074  4E 80 00 20 */	blr 
