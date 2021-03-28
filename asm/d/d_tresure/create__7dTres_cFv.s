lbl_8009BC18:
/* 8009BC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009BC1C  7C 08 02 A6 */	mflr r0
/* 8009BC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009BC24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009BC28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009BC2C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8009BC30  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8009BC34  7D 89 03 A6 */	mtctr r12
/* 8009BC38  4E 80 04 21 */	bctrl 
/* 8009BC3C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009BC40  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8009BC44  28 00 00 03 */	cmplwi r0, 3
/* 8009BC48  41 82 00 08 */	beq lbl_8009BC50
/* 8009BC4C  48 00 00 21 */	bl reset__7dTres_cFv
lbl_8009BC50:
/* 8009BC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009BC54  7C 08 03 A6 */	mtlr r0
/* 8009BC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8009BC5C  4E 80 00 20 */	blr 
