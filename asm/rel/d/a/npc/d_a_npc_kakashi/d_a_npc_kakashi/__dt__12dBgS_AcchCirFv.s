lbl_8054E4A8:
/* 8054E4A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054E4AC  7C 08 02 A6 */	mflr r0
/* 8054E4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054E4B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054E4B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8054E4BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054E4C0  7C 9F 23 78 */	mr r31, r4
/* 8054E4C4  41 82 00 38 */	beq lbl_8054E4FC
/* 8054E4C8  3C 60 80 55 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8054E4CC  38 03 F0 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8054E4D0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8054E4D4  38 7E 00 14 */	addi r3, r30, 0x14
/* 8054E4D8  38 80 FF FF */	li r4, -1
/* 8054E4DC  4B D2 0A 3C */	b __dt__8cM3dGCirFv
/* 8054E4E0  7F C3 F3 78 */	mr r3, r30
/* 8054E4E4  38 80 00 00 */	li r4, 0
/* 8054E4E8  4B D1 9B C8 */	b __dt__13cBgS_PolyInfoFv
/* 8054E4EC  7F E0 07 35 */	extsh. r0, r31
/* 8054E4F0  40 81 00 0C */	ble lbl_8054E4FC
/* 8054E4F4  7F C3 F3 78 */	mr r3, r30
/* 8054E4F8  4B D8 08 44 */	b __dl__FPv
lbl_8054E4FC:
/* 8054E4FC  7F C3 F3 78 */	mr r3, r30
/* 8054E500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054E504  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054E508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054E50C  7C 08 03 A6 */	mtlr r0
/* 8054E510  38 21 00 10 */	addi r1, r1, 0x10
/* 8054E514  4E 80 00 20 */	blr 
