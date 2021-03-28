lbl_8048ED28:
/* 8048ED28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ED2C  7C 08 02 A6 */	mflr r0
/* 8048ED30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ED34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ED38  93 C1 00 08 */	stw r30, 8(r1)
/* 8048ED3C  7C 7F 1B 78 */	mr r31, r3
/* 8048ED40  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048ED44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048ED48  40 82 00 3C */	bne lbl_8048ED84
/* 8048ED4C  7F E0 FB 79 */	or. r0, r31, r31
/* 8048ED50  41 82 00 28 */	beq lbl_8048ED78
/* 8048ED54  7C 1E 03 78 */	mr r30, r0
/* 8048ED58  4B B8 9E 0C */	b __ct__10fopAc_ac_cFv
/* 8048ED5C  3C 60 80 49 */	lis r3, __vt__15daTag_Lantern_c@ha
/* 8048ED60  38 03 F1 A4 */	addi r0, r3, __vt__15daTag_Lantern_c@l
/* 8048ED64  90 1E 06 08 */	stw r0, 0x608(r30)
/* 8048ED68  38 7E 05 68 */	addi r3, r30, 0x568
/* 8048ED6C  4B DB B1 94 */	b __ct__10dMsgFlow_cFv
/* 8048ED70  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 8048ED74  4B DD 8E A8 */	b __ct__11cBgS_GndChkFv
lbl_8048ED78:
/* 8048ED78  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048ED7C  60 00 00 08 */	ori r0, r0, 8
/* 8048ED80  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048ED84:
/* 8048ED84  7F E3 FB 78 */	mr r3, r31
/* 8048ED88  48 00 01 ED */	bl initialize__15daTag_Lantern_cFv
/* 8048ED8C  38 60 00 04 */	li r3, 4
/* 8048ED90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048ED94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048ED98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ED9C  7C 08 03 A6 */	mtlr r0
/* 8048EDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EDA4  4E 80 00 20 */	blr 
