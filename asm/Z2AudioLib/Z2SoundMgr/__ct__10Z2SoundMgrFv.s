lbl_802A9E80:
/* 802A9E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9E84  7C 08 02 A6 */	mflr r0
/* 802A9E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9E90  7C 7F 1B 78 */	mr r31, r3
/* 802A9E94  93 ED 85 E0 */	stw r31, data_80450B60(r13)
/* 802A9E98  3C 60 80 3D */	lis r3, __vt__10Z2SoundMgr@ha /* 0x803C9D70@ha */
/* 802A9E9C  38 03 9D 70 */	addi r0, r3, __vt__10Z2SoundMgr@l /* 0x803C9D70@l */
/* 802A9EA0  90 1F 00 00 */	stw r0, 0(r31)
/* 802A9EA4  38 7F 00 04 */	addi r3, r31, 4
/* 802A9EA8  38 80 00 01 */	li r4, 1
/* 802A9EAC  4B FF 61 C9 */	bl __ct__8JAISeMgrFb
/* 802A9EB0  38 7F 07 28 */	addi r3, r31, 0x728
/* 802A9EB4  38 80 00 01 */	li r4, 1
/* 802A9EB8  4B FF 7A 5D */	bl __ct__9JAISeqMgrFb
/* 802A9EBC  38 7F 07 9C */	addi r3, r31, 0x79c
/* 802A9EC0  38 80 00 01 */	li r4, 1
/* 802A9EC4  4B FF 9C A5 */	bl __ct__12JAIStreamMgrFb
/* 802A9EC8  38 00 FF FF */	li r0, -1
/* 802A9ECC  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 802A9ED0  7F E3 FB 78 */	mr r3, r31
/* 802A9ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9EDC  7C 08 03 A6 */	mtlr r0
/* 802A9EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9EE4  4E 80 00 20 */	blr 
