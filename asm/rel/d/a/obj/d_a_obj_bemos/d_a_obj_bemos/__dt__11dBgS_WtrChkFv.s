lbl_80BB35E0:
/* 80BB35E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB35E4  7C 08 02 A6 */	mflr r0
/* 80BB35E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB35EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB35F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB35F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB35F8  7C 9F 23 78 */	mr r31, r4
/* 80BB35FC  41 82 00 40 */	beq lbl_80BB363C
/* 80BB3600  3C 80 80 BB */	lis r4, __vt__11dBgS_WtrChk@ha /* 0x80BB3EB0@ha */
/* 80BB3604  38 84 3E B0 */	addi r4, r4, __vt__11dBgS_WtrChk@l /* 0x80BB3EB0@l */
/* 80BB3608  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80BB360C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BB3610  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80BB3614  38 04 00 18 */	addi r0, r4, 0x18
/* 80BB3618  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BB361C  38 04 00 24 */	addi r0, r4, 0x24
/* 80BB3620  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80BB3624  38 80 00 00 */	li r4, 0
/* 80BB3628  4B 4C 56 51 */	bl __dt__14dBgS_SplGrpChkFv
/* 80BB362C  7F E0 07 35 */	extsh. r0, r31
/* 80BB3630  40 81 00 0C */	ble lbl_80BB363C
/* 80BB3634  7F C3 F3 78 */	mr r3, r30
/* 80BB3638  4B 71 B7 05 */	bl __dl__FPv
lbl_80BB363C:
/* 80BB363C  7F C3 F3 78 */	mr r3, r30
/* 80BB3640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3644  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB3648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB364C  7C 08 03 A6 */	mtlr r0
/* 80BB3650  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3654  4E 80 00 20 */	blr 
