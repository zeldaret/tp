lbl_8007A344:
/* 8007A344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007A348  7C 08 02 A6 */	mflr r0
/* 8007A34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007A350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007A354  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007A358  41 82 00 30 */	beq lbl_8007A388
/* 8007A35C  3C 60 80 3B */	lis r3, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 8007A360  38 03 BB 84 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 8007A364  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8007A368  41 82 00 10 */	beq lbl_8007A378
/* 8007A36C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007A370  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007A374  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_8007A378:
/* 8007A378  7C 80 07 35 */	extsh. r0, r4
/* 8007A37C  40 81 00 0C */	ble lbl_8007A388
/* 8007A380  7F E3 FB 78 */	mr r3, r31
/* 8007A384  48 25 49 B9 */	bl __dl__FPv
lbl_8007A388:
/* 8007A388  7F E3 FB 78 */	mr r3, r31
/* 8007A38C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007A390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007A394  7C 08 03 A6 */	mtlr r0
/* 8007A398  38 21 00 10 */	addi r1, r1, 0x10
/* 8007A39C  4E 80 00 20 */	blr 
