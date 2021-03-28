lbl_80BF3300:
/* 80BF3300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF3304  7C 08 02 A6 */	mflr r0
/* 80BF3308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF330C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3310  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF3314  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF3318  7C 9F 23 78 */	mr r31, r4
/* 80BF331C  41 82 00 38 */	beq lbl_80BF3354
/* 80BF3320  3C 60 80 BF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BF3324  38 03 4B 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BF3328  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BF332C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BF3330  38 80 FF FF */	li r4, -1
/* 80BF3334  4B 67 BB E4 */	b __dt__8cM3dGCirFv
/* 80BF3338  7F C3 F3 78 */	mr r3, r30
/* 80BF333C  38 80 00 00 */	li r4, 0
/* 80BF3340  4B 67 4D 70 */	b __dt__13cBgS_PolyInfoFv
/* 80BF3344  7F E0 07 35 */	extsh. r0, r31
/* 80BF3348  40 81 00 0C */	ble lbl_80BF3354
/* 80BF334C  7F C3 F3 78 */	mr r3, r30
/* 80BF3350  4B 6D B9 EC */	b __dl__FPv
lbl_80BF3354:
/* 80BF3354  7F C3 F3 78 */	mr r3, r30
/* 80BF3358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF335C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF3360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF3364  7C 08 03 A6 */	mtlr r0
/* 80BF3368  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF336C  4E 80 00 20 */	blr 
