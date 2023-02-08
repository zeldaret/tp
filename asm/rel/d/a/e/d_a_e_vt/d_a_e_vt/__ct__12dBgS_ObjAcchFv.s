lbl_807CE108:
/* 807CE108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE10C  7C 08 02 A6 */	mflr r0
/* 807CE110  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE118  7C 7F 1B 78 */	mr r31, r3
/* 807CE11C  4B 8A 7F 85 */	bl __ct__9dBgS_AcchFv
/* 807CE120  3C 60 80 7D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x807CF404@ha */
/* 807CE124  38 63 F4 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x807CF404@l */
/* 807CE128  90 7F 00 10 */	stw r3, 0x10(r31)
/* 807CE12C  38 03 00 0C */	addi r0, r3, 0xc
/* 807CE130  90 1F 00 14 */	stw r0, 0x14(r31)
/* 807CE134  38 03 00 18 */	addi r0, r3, 0x18
/* 807CE138  90 1F 00 24 */	stw r0, 0x24(r31)
/* 807CE13C  38 7F 00 14 */	addi r3, r31, 0x14
/* 807CE140  4B 8A AD 29 */	bl SetObj__16dBgS_PolyPassChkFv
/* 807CE144  7F E3 FB 78 */	mr r3, r31
/* 807CE148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE150  7C 08 03 A6 */	mtlr r0
/* 807CE154  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE158  4E 80 00 20 */	blr 
