lbl_80C29B9C:
/* 80C29B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29BA0  7C 08 02 A6 */	mflr r0
/* 80C29BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C29BB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C29BB4  7C 9F 23 78 */	mr r31, r4
/* 80C29BB8  41 82 00 38 */	beq lbl_80C29BF0
/* 80C29BBC  3C 60 80 C3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C29BC0  38 03 AD 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C29BC4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C29BC8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C29BCC  38 80 FF FF */	li r4, -1
/* 80C29BD0  4B 64 53 48 */	b __dt__8cM3dGCirFv
/* 80C29BD4  7F C3 F3 78 */	mr r3, r30
/* 80C29BD8  38 80 00 00 */	li r4, 0
/* 80C29BDC  4B 63 E4 D4 */	b __dt__13cBgS_PolyInfoFv
/* 80C29BE0  7F E0 07 35 */	extsh. r0, r31
/* 80C29BE4  40 81 00 0C */	ble lbl_80C29BF0
/* 80C29BE8  7F C3 F3 78 */	mr r3, r30
/* 80C29BEC  4B 6A 51 50 */	b __dl__FPv
lbl_80C29BF0:
/* 80C29BF0  7F C3 F3 78 */	mr r3, r30
/* 80C29BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29BF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C29BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29C00  7C 08 03 A6 */	mtlr r0
/* 80C29C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29C08  4E 80 00 20 */	blr 
