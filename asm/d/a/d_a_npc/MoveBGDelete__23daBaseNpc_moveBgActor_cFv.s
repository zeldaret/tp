lbl_8014F6FC:
/* 8014F6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014F700  7C 08 02 A6 */	mflr r0
/* 8014F704  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F70C  93 C1 00 08 */	stw r30, 8(r1)
/* 8014F710  7C 7E 1B 78 */	mr r30, r3
/* 8014F714  81 83 05 68 */	lwz r12, 0x568(r3)
/* 8014F718  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8014F71C  7D 89 03 A6 */	mtctr r12
/* 8014F720  4E 80 04 21 */	bctrl 
/* 8014F724  7C 7F 1B 78 */	mr r31, r3
/* 8014F728  80 7E 0A 14 */	lwz r3, 0xa14(r30)
/* 8014F72C  28 03 00 00 */	cmplwi r3, 0
/* 8014F730  41 82 00 24 */	beq lbl_8014F754
/* 8014F734  48 11 8A A1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 8014F738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014F73C  41 82 00 18 */	beq lbl_8014F754
/* 8014F740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014F744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014F748  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8014F74C  80 9E 0A 14 */	lwz r4, 0xa14(r30)
/* 8014F750  4B F2 4B 01 */	bl Release__4cBgSFP9dBgW_Base
lbl_8014F754:
/* 8014F754  7F E3 FB 78 */	mr r3, r31
/* 8014F758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F75C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014F760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F764  7C 08 03 A6 */	mtlr r0
/* 8014F768  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F76C  4E 80 00 20 */	blr 
