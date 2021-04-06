lbl_8032C0B8:
/* 8032C0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C0BC  7C 08 02 A6 */	mflr r0
/* 8032C0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C0C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C0CC  41 82 00 30 */	beq lbl_8032C0FC
/* 8032C0D0  3C 60 80 3D */	lis r3, __vt__13J3DAnmCluster@ha /* 0x803CEDFC@ha */
/* 8032C0D4  38 03 ED FC */	addi r0, r3, __vt__13J3DAnmCluster@l /* 0x803CEDFC@l */
/* 8032C0D8  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C0DC  41 82 00 10 */	beq lbl_8032C0EC
/* 8032C0E0  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032C0E4  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032C0E8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C0EC:
/* 8032C0EC  7C 80 07 35 */	extsh. r0, r4
/* 8032C0F0  40 81 00 0C */	ble lbl_8032C0FC
/* 8032C0F4  7F E3 FB 78 */	mr r3, r31
/* 8032C0F8  4B FA 2C 45 */	bl __dl__FPv
lbl_8032C0FC:
/* 8032C0FC  7F E3 FB 78 */	mr r3, r31
/* 8032C100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C108  7C 08 03 A6 */	mtlr r0
/* 8032C10C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C110  4E 80 00 20 */	blr 
