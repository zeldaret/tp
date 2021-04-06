lbl_807E2020:
/* 807E2020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2024  7C 08 02 A6 */	mflr r0
/* 807E2028  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E202C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E2030  93 C1 00 08 */	stw r30, 8(r1)
/* 807E2034  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E2038  7C 9F 23 78 */	mr r31, r4
/* 807E203C  41 82 00 38 */	beq lbl_807E2074
/* 807E2040  3C 60 80 7E */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807E34EC@ha */
/* 807E2044  38 03 34 EC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807E34EC@l */
/* 807E2048  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807E204C  38 7E 00 14 */	addi r3, r30, 0x14
/* 807E2050  38 80 FF FF */	li r4, -1
/* 807E2054  4B A8 CE C5 */	bl __dt__8cM3dGCirFv
/* 807E2058  7F C3 F3 78 */	mr r3, r30
/* 807E205C  38 80 00 00 */	li r4, 0
/* 807E2060  4B A8 60 51 */	bl __dt__13cBgS_PolyInfoFv
/* 807E2064  7F E0 07 35 */	extsh. r0, r31
/* 807E2068  40 81 00 0C */	ble lbl_807E2074
/* 807E206C  7F C3 F3 78 */	mr r3, r30
/* 807E2070  4B AE CC CD */	bl __dl__FPv
lbl_807E2074:
/* 807E2074  7F C3 F3 78 */	mr r3, r30
/* 807E2078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E207C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E2080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2084  7C 08 03 A6 */	mtlr r0
/* 807E2088  38 21 00 10 */	addi r1, r1, 0x10
/* 807E208C  4E 80 00 20 */	blr 
