lbl_8032C124:
/* 8032C124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C128  7C 08 02 A6 */	mflr r0
/* 8032C12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032C134  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032C138  41 82 00 40 */	beq lbl_8032C178
/* 8032C13C  3C 60 80 3D */	lis r3, __vt__17J3DAnmClusterFull@ha /* 0x803CEE10@ha */
/* 8032C140  38 03 EE 10 */	addi r0, r3, __vt__17J3DAnmClusterFull@l /* 0x803CEE10@l */
/* 8032C144  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C148  41 82 00 20 */	beq lbl_8032C168
/* 8032C14C  3C 60 80 3D */	lis r3, __vt__13J3DAnmCluster@ha /* 0x803CEDFC@ha */
/* 8032C150  38 03 ED FC */	addi r0, r3, __vt__13J3DAnmCluster@l /* 0x803CEDFC@l */
/* 8032C154  90 1F 00 00 */	stw r0, 0(r31)
/* 8032C158  41 82 00 10 */	beq lbl_8032C168
/* 8032C15C  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032C160  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032C164  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032C168:
/* 8032C168  7C 80 07 35 */	extsh. r0, r4
/* 8032C16C  40 81 00 0C */	ble lbl_8032C178
/* 8032C170  7F E3 FB 78 */	mr r3, r31
/* 8032C174  4B FA 2B C9 */	bl __dl__FPv
lbl_8032C178:
/* 8032C178  7F E3 FB 78 */	mr r3, r31
/* 8032C17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032C180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C184  7C 08 03 A6 */	mtlr r0
/* 8032C188  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C18C  4E 80 00 20 */	blr 
