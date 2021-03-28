lbl_80CCB9E0:
/* 80CCB9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB9E4  7C 08 02 A6 */	mflr r0
/* 80CCB9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCB9F0  7C 7F 1B 78 */	mr r31, r3
/* 80CCB9F4  80 63 05 94 */	lwz r3, 0x594(r3)
/* 80CCB9F8  28 03 00 00 */	cmplwi r3, 0
/* 80CCB9FC  41 82 00 24 */	beq lbl_80CCBA20
/* 80CCBA00  4B 59 C7 D4 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CCBA04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCBA08  41 82 00 18 */	beq lbl_80CCBA20
/* 80CCBA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCBA14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CCBA18  80 9F 05 94 */	lwz r4, 0x594(r31)
/* 80CCBA1C  4B 3A 88 34 */	b Release__4cBgSFP9dBgW_Base
lbl_80CCBA20:
/* 80CCBA20  7F E3 FB 78 */	mr r3, r31
/* 80CCBA24  48 00 0F 59 */	bl delEmtAll__17daObjSCannonTen_cFv
/* 80CCBA28  7F E3 FB 78 */	mr r3, r31
/* 80CCBA2C  38 80 FF FF */	li r4, -1
/* 80CCBA30  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80CCBA34  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CCBA38  7D 89 03 A6 */	mtctr r12
/* 80CCBA3C  4E 80 04 21 */	bctrl 
/* 80CCBA40  38 60 00 01 */	li r3, 1
/* 80CCBA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBA4C  7C 08 03 A6 */	mtlr r0
/* 80CCBA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBA54  4E 80 00 20 */	blr 
