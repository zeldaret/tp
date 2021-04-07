lbl_8009C808:
/* 8009C808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009C80C  7C 08 02 A6 */	mflr r0
/* 8009C810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009C818  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009C81C  41 82 00 30 */	beq lbl_8009C84C
/* 8009C820  3C 60 80 3B */	lis r3, __vt__6dMdl_c@ha /* 0x803AF978@ha */
/* 8009C824  38 03 F9 78 */	addi r0, r3, __vt__6dMdl_c@l /* 0x803AF978@l */
/* 8009C828  90 1F 00 00 */	stw r0, 0(r31)
/* 8009C82C  41 82 00 10 */	beq lbl_8009C83C
/* 8009C830  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 8009C834  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 8009C838  90 1F 00 00 */	stw r0, 0(r31)
lbl_8009C83C:
/* 8009C83C  7C 80 07 35 */	extsh. r0, r4
/* 8009C840  40 81 00 0C */	ble lbl_8009C84C
/* 8009C844  7F E3 FB 78 */	mr r3, r31
/* 8009C848  48 23 24 F5 */	bl __dl__FPv
lbl_8009C84C:
/* 8009C84C  7F E3 FB 78 */	mr r3, r31
/* 8009C850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009C854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C858  7C 08 03 A6 */	mtlr r0
/* 8009C85C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009C860  4E 80 00 20 */	blr 
