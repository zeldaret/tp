lbl_80332AD0:
/* 80332AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332AD4  7C 08 02 A6 */	mflr r0
/* 80332AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332AE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80332AE4  41 82 00 30 */	beq lbl_80332B14
/* 80332AE8  3C 60 80 3D */	lis r3, __vt__18J3DTexGenBlockNull@ha /* 0x803CEFE8@ha */
/* 80332AEC  38 03 EF E8 */	addi r0, r3, __vt__18J3DTexGenBlockNull@l /* 0x803CEFE8@l */
/* 80332AF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80332AF4  41 82 00 10 */	beq lbl_80332B04
/* 80332AF8  3C 60 80 3D */	lis r3, __vt__14J3DTexGenBlock@ha /* 0x803CDE34@ha */
/* 80332AFC  38 03 DE 34 */	addi r0, r3, __vt__14J3DTexGenBlock@l /* 0x803CDE34@l */
/* 80332B00  90 1F 00 00 */	stw r0, 0(r31)
lbl_80332B04:
/* 80332B04  7C 80 07 35 */	extsh. r0, r4
/* 80332B08  40 81 00 0C */	ble lbl_80332B14
/* 80332B0C  7F E3 FB 78 */	mr r3, r31
/* 80332B10  4B F9 C2 2D */	bl __dl__FPv
lbl_80332B14:
/* 80332B14  7F E3 FB 78 */	mr r3, r31
/* 80332B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332B20  7C 08 03 A6 */	mtlr r0
/* 80332B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80332B28  4E 80 00 20 */	blr 
