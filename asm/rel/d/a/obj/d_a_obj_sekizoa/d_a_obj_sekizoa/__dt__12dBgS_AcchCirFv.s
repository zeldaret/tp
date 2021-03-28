lbl_80CD52F4:
/* 80CD52F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD52F8  7C 08 02 A6 */	mflr r0
/* 80CD52FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD5300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD5304  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD5308  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD530C  7C 9F 23 78 */	mr r31, r4
/* 80CD5310  41 82 00 38 */	beq lbl_80CD5348
/* 80CD5314  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CD5318  38 03 67 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CD531C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CD5320  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CD5324  38 80 FF FF */	li r4, -1
/* 80CD5328  4B 59 9B F0 */	b __dt__8cM3dGCirFv
/* 80CD532C  7F C3 F3 78 */	mr r3, r30
/* 80CD5330  38 80 00 00 */	li r4, 0
/* 80CD5334  4B 59 2D 7C */	b __dt__13cBgS_PolyInfoFv
/* 80CD5338  7F E0 07 35 */	extsh. r0, r31
/* 80CD533C  40 81 00 0C */	ble lbl_80CD5348
/* 80CD5340  7F C3 F3 78 */	mr r3, r30
/* 80CD5344  4B 5F 99 F8 */	b __dl__FPv
lbl_80CD5348:
/* 80CD5348  7F C3 F3 78 */	mr r3, r30
/* 80CD534C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD5350  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD5354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD5358  7C 08 03 A6 */	mtlr r0
/* 80CD535C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD5360  4E 80 00 20 */	blr 
