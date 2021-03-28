lbl_80C50BAC:
/* 80C50BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C50BB0  7C 08 02 A6 */	mflr r0
/* 80C50BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C50BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C50BBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C50BC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C50BC4  7C 9F 23 78 */	mr r31, r4
/* 80C50BC8  41 82 00 38 */	beq lbl_80C50C00
/* 80C50BCC  3C 60 80 C5 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C50BD0  38 03 0E E0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C50BD4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C50BD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C50BDC  38 80 FF FF */	li r4, -1
/* 80C50BE0  4B 61 E3 38 */	b __dt__8cM3dGCirFv
/* 80C50BE4  7F C3 F3 78 */	mr r3, r30
/* 80C50BE8  38 80 00 00 */	li r4, 0
/* 80C50BEC  4B 61 74 C4 */	b __dt__13cBgS_PolyInfoFv
/* 80C50BF0  7F E0 07 35 */	extsh. r0, r31
/* 80C50BF4  40 81 00 0C */	ble lbl_80C50C00
/* 80C50BF8  7F C3 F3 78 */	mr r3, r30
/* 80C50BFC  4B 67 E1 40 */	b __dl__FPv
lbl_80C50C00:
/* 80C50C00  7F C3 F3 78 */	mr r3, r30
/* 80C50C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C50C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C50C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C50C10  7C 08 03 A6 */	mtlr r0
/* 80C50C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50C18  4E 80 00 20 */	blr 
