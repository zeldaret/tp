lbl_80CC9B10:
/* 80CC9B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9B14  7C 08 02 A6 */	mflr r0
/* 80CC9B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC9B20  7C 7F 1B 78 */	mr r31, r3
/* 80CC9B24  80 63 06 04 */	lwz r3, 0x604(r3)
/* 80CC9B28  28 03 00 00 */	cmplwi r3, 0
/* 80CC9B2C  41 82 00 24 */	beq lbl_80CC9B50
/* 80CC9B30  4B 59 E6 A5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CC9B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC9B38  41 82 00 18 */	beq lbl_80CC9B50
/* 80CC9B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9B40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9B44  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC9B48  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80CC9B4C  4B 3A A7 05 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CC9B50:
/* 80CC9B50  7F E3 FB 78 */	mr r3, r31
/* 80CC9B54  38 80 FF FF */	li r4, -1
/* 80CC9B58  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80CC9B5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CC9B60  7D 89 03 A6 */	mtctr r12
/* 80CC9B64  4E 80 04 21 */	bctrl 
/* 80CC9B68  38 60 00 01 */	li r3, 1
/* 80CC9B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC9B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9B74  7C 08 03 A6 */	mtlr r0
/* 80CC9B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9B7C  4E 80 00 20 */	blr 
