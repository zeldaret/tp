lbl_8014BBF0:
/* 8014BBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BBF4  7C 08 02 A6 */	mflr r0
/* 8014BBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BBFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014BC00  7C 7F 1B 78 */	mr r31, r3
/* 8014BC04  7C 80 23 78 */	mr r0, r4
/* 8014BC08  7C A7 2B 78 */	mr r7, r5
/* 8014BC0C  38 7F 09 74 */	addi r3, r31, 0x974
/* 8014BC10  7F E4 FB 78 */	mr r4, r31
/* 8014BC14  7C 05 03 78 */	mr r5, r0
/* 8014BC18  38 C0 00 00 */	li r6, 0
/* 8014BC1C  48 0F E3 75 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8014BC20  7F E3 FB 78 */	mr r3, r31
/* 8014BC24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8014BC28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8014BC2C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8014BC30  4B EC EA E1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8014BC34  B0 7F 0D C8 */	sth r3, 0xdc8(r31)
/* 8014BC38  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 8014BC3C  2C 00 00 01 */	cmpwi r0, 1
/* 8014BC40  40 82 00 0C */	bne lbl_8014BC4C
/* 8014BC44  38 00 00 00 */	li r0, 0
/* 8014BC48  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_8014BC4C:
/* 8014BC4C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014BC50  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8014BC54  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8014BC58  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8014BC5C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8014BC60  38 60 00 01 */	li r3, 1
/* 8014BC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014BC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BC6C  7C 08 03 A6 */	mtlr r0
/* 8014BC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BC74  4E 80 00 20 */	blr 
