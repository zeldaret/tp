lbl_8030CC8C:
/* 8030CC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CC90  7C 08 02 A6 */	mflr r0
/* 8030CC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CC9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030CCA0  41 82 00 40 */	beq lbl_8030CCE0
/* 8030CCA4  3C 60 80 3D */	lis r3, __vt__18J2DAnmVtxColorFull@ha /* 0x803CD76C@ha */
/* 8030CCA8  38 03 D7 6C */	addi r0, r3, __vt__18J2DAnmVtxColorFull@l /* 0x803CD76C@l */
/* 8030CCAC  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CCB0  41 82 00 20 */	beq lbl_8030CCD0
/* 8030CCB4  3C 60 80 3D */	lis r3, __vt__14J2DAnmVtxColor@ha /* 0x803CD714@ha */
/* 8030CCB8  38 03 D7 14 */	addi r0, r3, __vt__14J2DAnmVtxColor@l /* 0x803CD714@l */
/* 8030CCBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CCC0  41 82 00 10 */	beq lbl_8030CCD0
/* 8030CCC4  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 8030CCC8  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 8030CCCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030CCD0:
/* 8030CCD0  7C 80 07 35 */	extsh. r0, r4
/* 8030CCD4  40 81 00 0C */	ble lbl_8030CCE0
/* 8030CCD8  7F E3 FB 78 */	mr r3, r31
/* 8030CCDC  4B FC 20 61 */	bl __dl__FPv
lbl_8030CCE0:
/* 8030CCE0  7F E3 FB 78 */	mr r3, r31
/* 8030CCE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CCEC  7C 08 03 A6 */	mtlr r0
/* 8030CCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CCF4  4E 80 00 20 */	blr 
