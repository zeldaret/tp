lbl_8052A380:
/* 8052A380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A384  7C 08 02 A6 */	mflr r0
/* 8052A388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A390  7C 7F 1B 78 */	mr r31, r3
/* 8052A394  4B AE E9 4C */	b fopAc_IsActor__FPv
/* 8052A398  2C 03 00 00 */	cmpwi r3, 0
/* 8052A39C  41 82 00 38 */	beq lbl_8052A3D4
/* 8052A3A0  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052A3A4  2C 00 02 E2 */	cmpwi r0, 0x2e2
/* 8052A3A8  40 82 00 2C */	bne lbl_8052A3D4
/* 8052A3AC  88 1F 05 EC */	lbz r0, 0x5ec(r31)
/* 8052A3B0  7C 00 07 75 */	extsb. r0, r0
/* 8052A3B4  41 82 00 20 */	beq lbl_8052A3D4
/* 8052A3B8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8052A3BC  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052A3C0  C0 03 61 68 */	lfs f0, lit_3679@l(r3)
/* 8052A3C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A3C8  40 81 00 0C */	ble lbl_8052A3D4
/* 8052A3CC  7F E3 FB 78 */	mr r3, r31
/* 8052A3D0  48 00 00 08 */	b lbl_8052A3D8
lbl_8052A3D4:
/* 8052A3D4  38 60 00 00 */	li r3, 0
lbl_8052A3D8:
/* 8052A3D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A3E0  7C 08 03 A6 */	mtlr r0
/* 8052A3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A3E8  4E 80 00 20 */	blr 
