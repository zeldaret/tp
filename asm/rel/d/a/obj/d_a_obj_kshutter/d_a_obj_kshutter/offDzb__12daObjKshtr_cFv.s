lbl_80C47E54:
/* 80C47E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47E58  7C 08 02 A6 */	mflr r0
/* 80C47E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C47E64  7C 7F 1B 78 */	mr r31, r3
/* 80C47E68  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80C47E6C  28 03 00 00 */	cmplwi r3, 0
/* 80C47E70  41 82 00 24 */	beq lbl_80C47E94
/* 80C47E74  4B 62 03 61 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C47E78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C47E7C  41 82 00 18 */	beq lbl_80C47E94
/* 80C47E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47E88  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C47E8C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C47E90  4B 42 C3 C1 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C47E94:
/* 80C47E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C47E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47E9C  7C 08 03 A6 */	mtlr r0
/* 80C47EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47EA4  4E 80 00 20 */	blr 
