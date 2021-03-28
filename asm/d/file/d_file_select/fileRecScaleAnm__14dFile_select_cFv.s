lbl_8018FE18:
/* 8018FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018FE1C  7C 08 02 A6 */	mflr r0
/* 8018FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018FE24  7C 65 1B 78 */	mr r5, r3
/* 8018FE28  88 03 02 65 */	lbz r0, 0x265(r3)
/* 8018FE2C  54 00 10 3A */	slwi r0, r0, 2
/* 8018FE30  7C 65 02 14 */	add r3, r5, r0
/* 8018FE34  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 8018FE38  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018FE3C  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 8018FE40  88 84 00 05 */	lbz r4, 5(r4)
/* 8018FE44  C0 25 00 C8 */	lfs f1, 0xc8(r5)
/* 8018FE48  C0 45 00 D4 */	lfs f2, 0xd4(r5)
/* 8018FE4C  38 A0 00 00 */	li r5, 0
/* 8018FE50  48 0C 49 7D */	bl scaleAnime__8CPaneMgrFsffUc
/* 8018FE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018FE58  7C 08 03 A6 */	mtlr r0
/* 8018FE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018FE60  4E 80 00 20 */	blr 
