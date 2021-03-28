lbl_80B91F78:
/* 80B91F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B91F7C  7C 08 02 A6 */	mflr r0
/* 80B91F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B91F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B91F88  93 C1 00 08 */	stw r30, 8(r1)
/* 80B91F8C  7C 7F 1B 78 */	mr r31, r3
/* 80B91F90  A0 03 0E 26 */	lhz r0, 0xe26(r3)
/* 80B91F94  2C 00 00 02 */	cmpwi r0, 2
/* 80B91F98  41 82 00 94 */	beq lbl_80B9202C
/* 80B91F9C  40 80 01 34 */	bge lbl_80B920D0
/* 80B91FA0  2C 00 00 00 */	cmpwi r0, 0
/* 80B91FA4  41 82 00 0C */	beq lbl_80B91FB0
/* 80B91FA8  48 00 01 28 */	b lbl_80B920D0
/* 80B91FAC  48 00 01 24 */	b lbl_80B920D0
lbl_80B91FB0:
/* 80B91FB0  38 80 00 0F */	li r4, 0xf
/* 80B91FB4  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91FB8  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B91FBC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B91FC0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91FC4  7D 89 03 A6 */	mtctr r12
/* 80B91FC8  4E 80 04 21 */	bctrl 
/* 80B91FCC  7F E3 FB 78 */	mr r3, r31
/* 80B91FD0  38 80 00 03 */	li r4, 3
/* 80B91FD4  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91FD8  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B91FDC  38 A0 00 00 */	li r5, 0
/* 80B91FE0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B91FE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91FE8  7D 89 03 A6 */	mtctr r12
/* 80B91FEC  4E 80 04 21 */	bctrl 
/* 80B91FF0  7F E3 FB 78 */	mr r3, r31
/* 80B91FF4  38 80 00 00 */	li r4, 0
/* 80B91FF8  4B FF F1 45 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B91FFC  38 00 00 00 */	li r0, 0
/* 80B92000  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B92004  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B92008  60 00 00 02 */	ori r0, r0, 2
/* 80B9200C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B92010  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B92014  60 00 00 04 */	ori r0, r0, 4
/* 80B92018  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80B9201C  38 00 00 01 */	li r0, 1
/* 80B92020  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 80B92024  38 00 00 02 */	li r0, 2
/* 80B92028  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80B9202C:
/* 80B9202C  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80B92030  28 00 00 00 */	cmplwi r0, 0
/* 80B92034  40 82 00 9C */	bne lbl_80B920D0
/* 80B92038  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B9203C  4B 5B E6 B0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B92040  30 03 FF FF */	addic r0, r3, -1
/* 80B92044  7C 00 19 10 */	subfe r0, r0, r3
/* 80B92048  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80B9204C  7F E3 FB 78 */	mr r3, r31
/* 80B92050  7F C4 F3 78 */	mr r4, r30
/* 80B92054  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B92058  4B 5C 29 88 */	b chkFindPlayer2__8daNpcF_cFis
/* 80B9205C  2C 03 00 00 */	cmpwi r3, 0
/* 80B92060  41 82 00 2C */	beq lbl_80B9208C
/* 80B92064  2C 1E 00 00 */	cmpwi r30, 0
/* 80B92068  40 82 00 3C */	bne lbl_80B920A4
/* 80B9206C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B92070  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B92074  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B92078  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B9207C  4B 5B E6 40 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B92080  38 00 00 00 */	li r0, 0
/* 80B92084  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B92088  48 00 00 1C */	b lbl_80B920A4
lbl_80B9208C:
/* 80B9208C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B92090  41 82 00 14 */	beq lbl_80B920A4
/* 80B92094  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B92098  4B 5B E6 48 */	b remove__18daNpcF_ActorMngr_cFv
/* 80B9209C  38 00 00 00 */	li r0, 0
/* 80B920A0  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B920A4:
/* 80B920A4  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80B920A8  4B 5B E6 44 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B920AC  28 03 00 00 */	cmplwi r3, 0
/* 80B920B0  41 82 00 14 */	beq lbl_80B920C4
/* 80B920B4  7F E3 FB 78 */	mr r3, r31
/* 80B920B8  38 80 00 02 */	li r4, 2
/* 80B920BC  4B FF F0 81 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B920C0  48 00 00 10 */	b lbl_80B920D0
lbl_80B920C4:
/* 80B920C4  7F E3 FB 78 */	mr r3, r31
/* 80B920C8  38 80 00 00 */	li r4, 0
/* 80B920CC  4B FF F0 71 */	bl setLookMode__11daNpc_zrC_cFi
lbl_80B920D0:
/* 80B920D0  38 60 00 01 */	li r3, 1
/* 80B920D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B920D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B920DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B920E0  7C 08 03 A6 */	mtlr r0
/* 80B920E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B920E8  4E 80 00 20 */	blr 
