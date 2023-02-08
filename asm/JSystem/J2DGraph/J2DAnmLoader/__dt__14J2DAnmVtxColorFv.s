lbl_8030A358:
/* 8030A358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A35C  7C 08 02 A6 */	mflr r0
/* 8030A360  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A368  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030A36C  41 82 00 30 */	beq lbl_8030A39C
/* 8030A370  3C 60 80 3D */	lis r3, __vt__14J2DAnmVtxColor@ha /* 0x803CD714@ha */
/* 8030A374  38 03 D7 14 */	addi r0, r3, __vt__14J2DAnmVtxColor@l /* 0x803CD714@l */
/* 8030A378  90 1F 00 00 */	stw r0, 0(r31)
/* 8030A37C  41 82 00 10 */	beq lbl_8030A38C
/* 8030A380  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 8030A384  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 8030A388  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030A38C:
/* 8030A38C  7C 80 07 35 */	extsh. r0, r4
/* 8030A390  40 81 00 0C */	ble lbl_8030A39C
/* 8030A394  7F E3 FB 78 */	mr r3, r31
/* 8030A398  4B FC 49 A5 */	bl __dl__FPv
lbl_8030A39C:
/* 8030A39C  7F E3 FB 78 */	mr r3, r31
/* 8030A3A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A3A8  7C 08 03 A6 */	mtlr r0
/* 8030A3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A3B0  4E 80 00 20 */	blr 
