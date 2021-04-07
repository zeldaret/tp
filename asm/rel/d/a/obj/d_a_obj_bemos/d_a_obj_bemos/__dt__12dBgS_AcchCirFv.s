lbl_80BB32FC:
/* 80BB32FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3300  7C 08 02 A6 */	mflr r0
/* 80BB3304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB330C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB3310  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB3314  7C 9F 23 78 */	mr r31, r4
/* 80BB3318  41 82 00 38 */	beq lbl_80BB3350
/* 80BB331C  3C 60 80 BB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BB3DD4@ha */
/* 80BB3320  38 03 3D D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BB3DD4@l */
/* 80BB3324  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BB3328  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BB332C  38 80 FF FF */	li r4, -1
/* 80BB3330  4B 6B BB E9 */	bl __dt__8cM3dGCirFv
/* 80BB3334  7F C3 F3 78 */	mr r3, r30
/* 80BB3338  38 80 00 00 */	li r4, 0
/* 80BB333C  4B 6B 4D 75 */	bl __dt__13cBgS_PolyInfoFv
/* 80BB3340  7F E0 07 35 */	extsh. r0, r31
/* 80BB3344  40 81 00 0C */	ble lbl_80BB3350
/* 80BB3348  7F C3 F3 78 */	mr r3, r30
/* 80BB334C  4B 71 B9 F1 */	bl __dl__FPv
lbl_80BB3350:
/* 80BB3350  7F C3 F3 78 */	mr r3, r30
/* 80BB3354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3358  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB335C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3360  7C 08 03 A6 */	mtlr r0
/* 80BB3364  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3368  4E 80 00 20 */	blr 
