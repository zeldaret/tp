lbl_806A10DC:
/* 806A10DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A10E0  7C 08 02 A6 */	mflr r0
/* 806A10E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A10E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A10EC  93 C1 00 08 */	stw r30, 8(r1)
/* 806A10F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A10F4  7C 9F 23 78 */	mr r31, r4
/* 806A10F8  41 82 00 38 */	beq lbl_806A1130
/* 806A10FC  3C 60 80 6A */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806A1100  38 03 1D 28 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806A1104  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806A1108  38 7E 00 14 */	addi r3, r30, 0x14
/* 806A110C  38 80 FF FF */	li r4, -1
/* 806A1110  4B BC DE 08 */	b __dt__8cM3dGCirFv
/* 806A1114  7F C3 F3 78 */	mr r3, r30
/* 806A1118  38 80 00 00 */	li r4, 0
/* 806A111C  4B BC 6F 94 */	b __dt__13cBgS_PolyInfoFv
/* 806A1120  7F E0 07 35 */	extsh. r0, r31
/* 806A1124  40 81 00 0C */	ble lbl_806A1130
/* 806A1128  7F C3 F3 78 */	mr r3, r30
/* 806A112C  4B C2 DC 10 */	b __dl__FPv
lbl_806A1130:
/* 806A1130  7F C3 F3 78 */	mr r3, r30
/* 806A1134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1138  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A113C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1140  7C 08 03 A6 */	mtlr r0
/* 806A1144  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1148  4E 80 00 20 */	blr 
