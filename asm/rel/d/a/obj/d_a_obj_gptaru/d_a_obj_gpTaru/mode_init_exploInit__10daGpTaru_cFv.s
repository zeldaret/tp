lbl_8057EBA4:
/* 8057EBA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EBA8  7C 08 02 A6 */	mflr r0
/* 8057EBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EBB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057EBB4  93 C1 00 08 */	stw r30, 8(r1)
/* 8057EBB8  7C 7E 1B 78 */	mr r30, r3
/* 8057EBBC  3C 60 80 58 */	lis r3, lit_3656@ha
/* 8057EBC0  3B E3 F5 70 */	addi r31, r3, lit_3656@l
/* 8057EBC4  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8057EBC8  38 63 F8 E4 */	addi r3, r3, l_HIO@l
/* 8057EBCC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8057EBD0  98 1E 09 34 */	stb r0, 0x934(r30)
/* 8057EBD4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8057EBD8  D0 1E 09 38 */	stfs f0, 0x938(r30)
/* 8057EBDC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8057EBE0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8057EBE4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8057EBE8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8057EBEC  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 8057EBF0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8057EBF4  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 8057EBF8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8057EBFC  D0 1E 09 60 */	stfs f0, 0x960(r30)
/* 8057EC00  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8057EC04  D0 3E 09 64 */	stfs f1, 0x964(r30)
/* 8057EC08  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8057EC0C  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 8057EC10  D0 3E 09 6C */	stfs f1, 0x96c(r30)
/* 8057EC14  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8057EC18  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 8057EC1C  D0 3E 09 78 */	stfs f1, 0x978(r30)
/* 8057EC20  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8057EC24  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 8057EC28  38 7E 09 58 */	addi r3, r30, 0x958
/* 8057EC2C  4B AD C1 D0 */	b dKyw_pntwind_set__FP14WIND_INFLUENCE
/* 8057EC30  38 00 00 00 */	li r0, 0
/* 8057EC34  98 1E 09 A8 */	stb r0, 0x9a8(r30)
/* 8057EC38  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057EC3C  D0 1E 09 A4 */	stfs f0, 0x9a4(r30)
/* 8057EC40  38 00 00 04 */	li r0, 4
/* 8057EC44  98 1E 05 78 */	stb r0, 0x578(r30)
/* 8057EC48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057EC4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057EC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EC54  7C 08 03 A6 */	mtlr r0
/* 8057EC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EC5C  4E 80 00 20 */	blr 
