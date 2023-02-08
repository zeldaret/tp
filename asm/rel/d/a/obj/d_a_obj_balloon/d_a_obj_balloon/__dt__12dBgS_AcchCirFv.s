lbl_80BA8C8C:
/* 80BA8C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8C90  7C 08 02 A6 */	mflr r0
/* 80BA8C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA8CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA8CA4  7C 9F 23 78 */	mr r31, r4
/* 80BA8CA8  41 82 00 38 */	beq lbl_80BA8CE0
/* 80BA8CAC  3C 60 80 BB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BA8F38@ha */
/* 80BA8CB0  38 03 8F 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BA8F38@l */
/* 80BA8CB4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BA8CB8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BA8CBC  38 80 FF FF */	li r4, -1
/* 80BA8CC0  4B 6C 62 59 */	bl __dt__8cM3dGCirFv
/* 80BA8CC4  7F C3 F3 78 */	mr r3, r30
/* 80BA8CC8  38 80 00 00 */	li r4, 0
/* 80BA8CCC  4B 6B F3 E5 */	bl __dt__13cBgS_PolyInfoFv
/* 80BA8CD0  7F E0 07 35 */	extsh. r0, r31
/* 80BA8CD4  40 81 00 0C */	ble lbl_80BA8CE0
/* 80BA8CD8  7F C3 F3 78 */	mr r3, r30
/* 80BA8CDC  4B 72 60 61 */	bl __dl__FPv
lbl_80BA8CE0:
/* 80BA8CE0  7F C3 F3 78 */	mr r3, r30
/* 80BA8CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8CE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA8CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8CF0  7C 08 03 A6 */	mtlr r0
/* 80BA8CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8CF8  4E 80 00 20 */	blr 
