lbl_8032C044:
/* 8032C044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C048  7C 08 02 A6 */	mflr r0
/* 8032C04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C054  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C058  41 82 00 40 */	beq lbl_8032C098
/* 8032C05C  3C 60 80 3D */	lis r3, __vt__16J3DAnmClusterKey@ha
/* 8032C060  38 03 ED E8 */	addi r0, r3, __vt__16J3DAnmClusterKey@l
/* 8032C064  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C068  41 82 00 20 */	beq lbl_8032C088
/* 8032C06C  3C 60 80 3D */	lis r3, __vt__13J3DAnmCluster@ha
/* 8032C070  38 03 ED FC */	addi r0, r3, __vt__13J3DAnmCluster@l
/* 8032C074  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C078  41 82 00 10 */	beq lbl_8032C088
/* 8032C07C  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032C080  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032C084  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C088:
/* 8032C088  7C 80 07 35 */	extsh. r0, r4
/* 8032C08C  40 81 00 0C */	ble lbl_8032C098
/* 8032C090  7F E3 FB 78 */	mr r3, r31
/* 8032C094  4B FA 2C A9 */	bl __dl__FPv
lbl_8032C098:
/* 8032C098  7F E3 FB 78 */	mr r3, r31
/* 8032C09C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C0A4  7C 08 03 A6 */	mtlr r0
/* 8032C0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C0AC  4E 80 00 20 */	blr 
