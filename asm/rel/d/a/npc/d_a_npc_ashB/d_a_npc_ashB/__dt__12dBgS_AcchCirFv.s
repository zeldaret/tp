lbl_80961EA4:
/* 80961EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961EA8  7C 08 02 A6 */	mflr r0
/* 80961EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961EB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80961EB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80961EBC  7C 9F 23 78 */	mr r31, r4
/* 80961EC0  41 82 00 38 */	beq lbl_80961EF8
/* 80961EC4  3C 60 80 96 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8096276C@ha */
/* 80961EC8  38 03 27 6C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8096276C@l */
/* 80961ECC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80961ED0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80961ED4  38 80 FF FF */	li r4, -1
/* 80961ED8  4B 90 D0 41 */	bl __dt__8cM3dGCirFv
/* 80961EDC  7F C3 F3 78 */	mr r3, r30
/* 80961EE0  38 80 00 00 */	li r4, 0
/* 80961EE4  4B 90 61 CD */	bl __dt__13cBgS_PolyInfoFv
/* 80961EE8  7F E0 07 35 */	extsh. r0, r31
/* 80961EEC  40 81 00 0C */	ble lbl_80961EF8
/* 80961EF0  7F C3 F3 78 */	mr r3, r30
/* 80961EF4  4B 96 CE 49 */	bl __dl__FPv
lbl_80961EF8:
/* 80961EF8  7F C3 F3 78 */	mr r3, r30
/* 80961EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80961F00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80961F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80961F08  7C 08 03 A6 */	mtlr r0
/* 80961F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80961F10  4E 80 00 20 */	blr 
