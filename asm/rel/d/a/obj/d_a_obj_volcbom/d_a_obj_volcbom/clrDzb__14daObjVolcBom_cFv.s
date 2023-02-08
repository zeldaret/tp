lbl_80D25178:
/* 80D25178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2517C  7C 08 02 A6 */	mflr r0
/* 80D25180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D25184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D25188  7C 7F 1B 78 */	mr r31, r3
/* 80D2518C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80D25190  28 03 00 00 */	cmplwi r3, 0
/* 80D25194  41 82 00 24 */	beq lbl_80D251B8
/* 80D25198  4B 54 30 3D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D2519C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D251A0  41 82 00 18 */	beq lbl_80D251B8
/* 80D251A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D251A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D251AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D251B0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D251B4  4B 34 F0 9D */	bl Release__4cBgSFP9dBgW_Base
lbl_80D251B8:
/* 80D251B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D251BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D251C0  7C 08 03 A6 */	mtlr r0
/* 80D251C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D251C8  4E 80 00 20 */	blr 
