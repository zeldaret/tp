lbl_8051D720:
/* 8051D720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D724  7C 08 02 A6 */	mflr r0
/* 8051D728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051D730  7C 7F 1B 78 */	mr r31, r3
/* 8051D734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051D738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051D73C  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8051D740  4B B6 7F 51 */	bl Prepare__12dCcMassS_MngFv
/* 8051D744  7F E3 FB 78 */	mr r3, r31
/* 8051D748  4B FF E8 F9 */	bl executeGrass__9daGrass_cFv
/* 8051D74C  7F E3 FB 78 */	mr r3, r31
/* 8051D750  4B FF EA C9 */	bl executeFlower__9daGrass_cFv
/* 8051D754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051D758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051D75C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8051D760  4B B6 9B AD */	bl MassClear__4dCcSFv
/* 8051D764  38 60 00 01 */	li r3, 1
/* 8051D768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051D76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D770  7C 08 03 A6 */	mtlr r0
/* 8051D774  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D778  4E 80 00 20 */	blr 
