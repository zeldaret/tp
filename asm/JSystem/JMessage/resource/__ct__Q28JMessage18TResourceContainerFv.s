lbl_802A906C:
/* 802A906C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9070  7C 08 02 A6 */	mflr r0
/* 802A9074  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A907C  7C 7F 1B 78 */	mr r31, r3
/* 802A9080  38 00 00 00 */	li r0, 0
/* 802A9084  98 03 00 00 */	stb r0, 0(r3)
/* 802A9088  90 03 00 04 */	stw r0, 4(r3)
/* 802A908C  38 7F 00 08 */	addi r3, r31, 8
/* 802A9090  4B FF FE 31 */	bl __ct__Q38JMessage18TResourceContainer10TCResourceFv
/* 802A9094  38 00 00 00 */	li r0, 0
/* 802A9098  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802A909C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802A90A0  7F E3 FB 78 */	mr r3, r31
/* 802A90A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A90A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A90AC  7C 08 03 A6 */	mtlr r0
/* 802A90B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A90B4  4E 80 00 20 */	blr 
