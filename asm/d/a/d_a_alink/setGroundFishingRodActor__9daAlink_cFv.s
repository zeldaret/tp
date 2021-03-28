lbl_800F7708:
/* 800F7708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F770C  7C 08 02 A6 */	mflr r0
/* 800F7710  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7718  7C 7F 1B 78 */	mr r31, r3
/* 800F771C  38 60 02 E4 */	li r3, 0x2e4
/* 800F7720  3C 80 FF FF */	lis r4, 0xFFFF /* 0xFFFF011D@ha */
/* 800F7724  38 84 01 1D */	addi r4, r4, 0x011D /* 0xFFFF011D@l */
/* 800F7728  38 BF 05 C8 */	addi r5, r31, 0x5c8
/* 800F772C  38 C0 FF FF */	li r6, -1
/* 800F7730  38 E0 00 00 */	li r7, 0
/* 800F7734  39 00 00 00 */	li r8, 0
/* 800F7738  39 20 FF FF */	li r9, -1
/* 800F773C  4B F2 26 5D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800F7740  90 7F 28 24 */	stw r3, 0x2824(r31)
/* 800F7744  7F E3 FB 78 */	mr r3, r31
/* 800F7748  4B FF C6 59 */	bl initFishingRodHand__9daAlink_cFv
/* 800F774C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7754  7C 08 03 A6 */	mtlr r0
/* 800F7758  38 21 00 10 */	addi r1, r1, 0x10
/* 800F775C  4E 80 00 20 */	blr 
