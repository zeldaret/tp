lbl_809E6D54:
/* 809E6D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E6D58  7C 08 02 A6 */	mflr r0
/* 809E6D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E6D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E6D64  93 C1 00 08 */	stw r30, 8(r1)
/* 809E6D68  7C 7F 1B 78 */	mr r31, r3
/* 809E6D6C  A0 03 0E 12 */	lhz r0, 0xe12(r3)
/* 809E6D70  2C 00 00 02 */	cmpwi r0, 2
/* 809E6D74  41 82 00 74 */	beq lbl_809E6DE8
/* 809E6D78  40 80 01 C8 */	bge lbl_809E6F40
/* 809E6D7C  2C 00 00 00 */	cmpwi r0, 0
/* 809E6D80  41 82 00 0C */	beq lbl_809E6D8C
/* 809E6D84  48 00 01 BC */	b lbl_809E6F40
/* 809E6D88  48 00 01 B8 */	b lbl_809E6F40
lbl_809E6D8C:
/* 809E6D8C  38 80 00 03 */	li r4, 3
/* 809E6D90  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E6D94  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E6D98  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809E6D9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E6DA0  7D 89 03 A6 */	mtctr r12
/* 809E6DA4  4E 80 04 21 */	bctrl 
/* 809E6DA8  7F E3 FB 78 */	mr r3, r31
/* 809E6DAC  38 80 00 00 */	li r4, 0
/* 809E6DB0  3C A0 80 9E */	lis r5, lit_4746@ha
/* 809E6DB4  C0 25 7E 5C */	lfs f1, lit_4746@l(r5)
/* 809E6DB8  38 A0 00 00 */	li r5, 0
/* 809E6DBC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E6DC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E6DC4  7D 89 03 A6 */	mtctr r12
/* 809E6DC8  4E 80 04 21 */	bctrl 
/* 809E6DCC  7F E3 FB 78 */	mr r3, r31
/* 809E6DD0  38 80 00 00 */	li r4, 0
/* 809E6DD4  4B FF FA 81 */	bl setLookMode__11daNpc_grS_cFi
/* 809E6DD8  38 00 00 00 */	li r0, 0
/* 809E6DDC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E6DE0  38 00 00 02 */	li r0, 2
/* 809E6DE4  B0 1F 0E 12 */	sth r0, 0xe12(r31)
lbl_809E6DE8:
/* 809E6DE8  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809E6DEC  28 00 00 00 */	cmplwi r0, 0
/* 809E6DF0  40 82 01 50 */	bne lbl_809E6F40
/* 809E6DF4  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809E6DF8  4B 76 98 F4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809E6DFC  30 03 FF FF */	addic r0, r3, -1
/* 809E6E00  7C 00 19 10 */	subfe r0, r0, r3
/* 809E6E04  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 809E6E08  7F E3 FB 78 */	mr r3, r31
/* 809E6E0C  7F C4 F3 78 */	mr r4, r30
/* 809E6E10  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809E6E14  4B 76 DB CC */	b chkFindPlayer2__8daNpcF_cFis
/* 809E6E18  2C 03 00 00 */	cmpwi r3, 0
/* 809E6E1C  41 82 00 2C */	beq lbl_809E6E48
/* 809E6E20  2C 1E 00 00 */	cmpwi r30, 0
/* 809E6E24  40 82 00 3C */	bne lbl_809E6E60
/* 809E6E28  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809E6E2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809E6E30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809E6E34  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809E6E38  4B 76 98 84 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E6E3C  38 00 00 00 */	li r0, 0
/* 809E6E40  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809E6E44  48 00 00 1C */	b lbl_809E6E60
lbl_809E6E48:
/* 809E6E48  2C 1E 00 00 */	cmpwi r30, 0
/* 809E6E4C  41 82 00 14 */	beq lbl_809E6E60
/* 809E6E50  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809E6E54  4B 76 98 8C */	b remove__18daNpcF_ActorMngr_cFv
/* 809E6E58  38 00 00 00 */	li r0, 0
/* 809E6E5C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809E6E60:
/* 809E6E60  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809E6E64  4B 76 98 88 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809E6E68  28 03 00 00 */	cmplwi r3, 0
/* 809E6E6C  41 82 00 14 */	beq lbl_809E6E80
/* 809E6E70  7F E3 FB 78 */	mr r3, r31
/* 809E6E74  38 80 00 02 */	li r4, 2
/* 809E6E78  4B FF F9 DD */	bl setLookMode__11daNpc_grS_cFi
/* 809E6E7C  48 00 00 44 */	b lbl_809E6EC0
lbl_809E6E80:
/* 809E6E80  7F E3 FB 78 */	mr r3, r31
/* 809E6E84  38 80 00 00 */	li r4, 0
/* 809E6E88  4B FF F9 CD */	bl setLookMode__11daNpc_grS_cFi
/* 809E6E8C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809E6E90  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E6E94  7C 04 00 00 */	cmpw r4, r0
/* 809E6E98  41 82 00 28 */	beq lbl_809E6EC0
/* 809E6E9C  7F E3 FB 78 */	mr r3, r31
/* 809E6EA0  38 A0 00 03 */	li r5, 3
/* 809E6EA4  38 C0 00 03 */	li r6, 3
/* 809E6EA8  38 E0 00 0F */	li r7, 0xf
/* 809E6EAC  4B 76 D1 F8 */	b step__8daNpcF_cFsiii
/* 809E6EB0  2C 03 00 00 */	cmpwi r3, 0
/* 809E6EB4  41 82 00 0C */	beq lbl_809E6EC0
/* 809E6EB8  38 00 00 00 */	li r0, 0
/* 809E6EBC  B0 1F 0E 12 */	sth r0, 0xe12(r31)
lbl_809E6EC0:
/* 809E6EC0  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809E6EC4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E6EC8  7C 03 00 00 */	cmpw r3, r0
/* 809E6ECC  40 82 00 6C */	bne lbl_809E6F38
/* 809E6ED0  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809E6ED4  4B 76 98 18 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809E6ED8  30 03 FF FF */	addic r0, r3, -1
/* 809E6EDC  7C 00 19 10 */	subfe r0, r0, r3
/* 809E6EE0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809E6EE4  7F E3 FB 78 */	mr r3, r31
/* 809E6EE8  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha
/* 809E6EEC  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l
/* 809E6EF0  3C C0 80 9E */	lis r6, m__17daNpc_grS_Param_c@ha
/* 809E6EF4  38 C6 7D CC */	addi r6, r6, m__17daNpc_grS_Param_c@l
/* 809E6EF8  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809E6EFC  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 809E6F00  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 809E6F04  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 809E6F08  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 809E6F0C  38 E0 00 78 */	li r7, 0x78
/* 809E6F10  39 00 00 01 */	li r8, 1
/* 809E6F14  4B 76 D4 58 */	b getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 809E6F18  7C 64 1B 79 */	or. r4, r3, r3
/* 809E6F1C  41 82 00 24 */	beq lbl_809E6F40
/* 809E6F20  38 7F 0C 84 */	addi r3, r31, 0xc84
/* 809E6F24  4B 76 97 98 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E6F28  7F E3 FB 78 */	mr r3, r31
/* 809E6F2C  38 80 00 04 */	li r4, 4
/* 809E6F30  4B FF F9 25 */	bl setLookMode__11daNpc_grS_cFi
/* 809E6F34  48 00 00 0C */	b lbl_809E6F40
lbl_809E6F38:
/* 809E6F38  38 00 00 00 */	li r0, 0
/* 809E6F3C  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_809E6F40:
/* 809E6F40  38 60 00 01 */	li r3, 1
/* 809E6F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E6F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E6F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E6F50  7C 08 03 A6 */	mtlr r0
/* 809E6F54  38 21 00 10 */	addi r1, r1, 0x10
/* 809E6F58  4E 80 00 20 */	blr 
