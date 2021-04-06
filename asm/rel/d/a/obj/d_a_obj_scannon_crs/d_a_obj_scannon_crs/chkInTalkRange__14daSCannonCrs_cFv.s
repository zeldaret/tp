lbl_80CCAAC4:
/* 80CCAAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCAAC8  7C 08 02 A6 */	mflr r0
/* 80CCAACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCAAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCAAD4  7C 7F 1B 78 */	mr r31, r3
/* 80CCAAD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCAADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCAAE0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CCAAE4  28 03 00 00 */	cmplwi r3, 0
/* 80CCAAE8  40 82 00 0C */	bne lbl_80CCAAF4
/* 80CCAAEC  38 60 00 00 */	li r3, 0
/* 80CCAAF0  48 00 00 20 */	b lbl_80CCAB10
lbl_80CCAAF4:
/* 80CCAAF4  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80CCAAF8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CCAAFC  4B 67 C8 A1 */	bl PSVECSquareDistance
/* 80CCAB00  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80CCAB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCAB08  7C 00 00 26 */	mfcr r0
/* 80CCAB0C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80CCAB10:
/* 80CCAB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCAB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCAB18  7C 08 03 A6 */	mtlr r0
/* 80CCAB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCAB20  4E 80 00 20 */	blr 
