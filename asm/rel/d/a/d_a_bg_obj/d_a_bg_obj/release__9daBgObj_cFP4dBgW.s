lbl_80459B64:
/* 80459B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459B68  7C 08 02 A6 */	mflr r0
/* 80459B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459B74  7C 9F 23 79 */	or. r31, r4, r4
/* 80459B78  41 82 00 28 */	beq lbl_80459BA0
/* 80459B7C  7F E3 FB 78 */	mr r3, r31
/* 80459B80  4B E0 E6 55 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80459B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80459B88  41 82 00 18 */	beq lbl_80459BA0
/* 80459B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80459B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80459B94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80459B98  7F E4 FB 78 */	mr r4, r31
/* 80459B9C  4B C1 A6 B5 */	bl Release__4cBgSFP9dBgW_Base
lbl_80459BA0:
/* 80459BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459BA8  7C 08 03 A6 */	mtlr r0
/* 80459BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80459BB0  4E 80 00 20 */	blr 
