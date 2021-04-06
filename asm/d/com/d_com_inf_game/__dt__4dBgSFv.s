lbl_80030C50:
/* 80030C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030C54  7C 08 02 A6 */	mflr r0
/* 80030C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030C60  93 C1 00 08 */	stw r30, 8(r1)
/* 80030C64  7C 7E 1B 79 */	or. r30, r3, r3
/* 80030C68  7C 9F 23 78 */	mr r31, r4
/* 80030C6C  41 82 00 44 */	beq lbl_80030CB0
/* 80030C70  3C 80 80 3B */	lis r4, __vt__4dBgS@ha /* 0x803AB608@ha */
/* 80030C74  38 04 B6 08 */	addi r0, r4, __vt__4dBgS@l /* 0x803AB608@l */
/* 80030C78  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80030C7C  41 82 00 24 */	beq lbl_80030CA0
/* 80030C80  3C 80 80 3B */	lis r4, __vt__4cBgS@ha /* 0x803AB61C@ha */
/* 80030C84  38 04 B6 1C */	addi r0, r4, __vt__4cBgS@l /* 0x803AB61C@l */
/* 80030C88  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80030C8C  3C 80 80 03 */	lis r4, __dt__11cBgS_ChkElmFv@ha /* 0x8002FEF8@ha */
/* 80030C90  38 84 FE F8 */	addi r4, r4, __dt__11cBgS_ChkElmFv@l /* 0x8002FEF8@l */
/* 80030C94  38 A0 00 14 */	li r5, 0x14
/* 80030C98  38 C0 01 00 */	li r6, 0x100
/* 80030C9C  48 33 10 4D */	bl __destroy_arr
lbl_80030CA0:
/* 80030CA0  7F E0 07 35 */	extsh. r0, r31
/* 80030CA4  40 81 00 0C */	ble lbl_80030CB0
/* 80030CA8  7F C3 F3 78 */	mr r3, r30
/* 80030CAC  48 29 E0 91 */	bl __dl__FPv
lbl_80030CB0:
/* 80030CB0  7F C3 F3 78 */	mr r3, r30
/* 80030CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030CB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030CC0  7C 08 03 A6 */	mtlr r0
/* 80030CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80030CC8  4E 80 00 20 */	blr 
